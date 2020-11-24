/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import classes.Categoria;
import java.util.ArrayList;
import models.ModeloCategoria;

/**
 *
 * @author Angie
 */
public class Controlador_Categoria {

    public String getPanelCategorias() {
        String htmlcode = "";
        ModeloCategoria mp = new ModeloCategoria();
        ArrayList<Categoria> categoria = mp.getCategorias();
        htmlcode += "<div class=\"container\">\n"
                + "            <table class=\"table table-hover\" border=\"9\" >\n"
                + "                <tr>\n"
                + "                    <th>Id Categorias</th>  \n"
                + "                    <th>Nombre Categoria</th>  \n"
                + "                    <th>Descripcion</th>  \n"
                + "                    <th>Acciones</th>                    \n"
                + "                </tr>";
        for (Categoria c : categoria) {
            htmlcode += "<tr>\n"
                    + "                 <td id='IdCategoria'>" + c.getIdCategoria() + "</td>\n"
                    + "                <td>" + c.getNombre_Catg() + "</td>\n"
                    + "                <td>" + c.getDescripcion_Catg() + "</td>\n"
                    + "                <td><a id='btn-eliminarCtg' class=\"btn btn-info btn-block\" href=\"\">Eliminar</a> <a class=\"btn btn-warning btn-block\" href=\"modificarCtg.jsp?IdCategoria=" + c.getIdCategoria() + "\">Modificar</a>\n"
                    + "            </tr>\n";

        }
        htmlcode += "</table>"
                + "</div>";
        return htmlcode;
    }

    public Categoria getCategoria(int IdCategoria) {
        return new ModeloCategoria().getcateoria(IdCategoria);
    }

    public boolean crearCategoria(Categoria c) {
        ModeloCategoria mc = new ModeloCategoria();
        return mc.crear_categoria(c);
    }

    public boolean deletecategoria(int IdCategoria) {
        ModeloCategoria mc = new ModeloCategoria();
        return mc.deletecategoria(IdCategoria);

    }

    public String getEditViewCategoria(int IdCategoria) {
        ModeloCategoria mc = new ModeloCategoria();
        Categoria ct = mc.getcateoria(IdCategoria);
        String htmlcode = "";
        htmlcode = "<div class='container'>"
                + "<form  id='frmmodificarCatg' name='frmmodificarCatg' >\n"
                + "                <table >\n"
                + "                    <tr> \n"                
                + "                        <td><input type=\"hidden\" name=\"IdCategoria\" id=\"IdCategoria\"  value='"+ct.getIdCategoria() +"' disabled></td>\n"
                + "                    </tr>\n"
                + "                    <tr> \n"
                + "                        <th> <label for=\"\">Nombre de la nueva categoria: </label></th> \n"
                + "                        <td><input type=\"text\" name=\"nombre_Catg\" id=\"Nombre_Catg\" class=\"form-control\" value= '" + ct.getNombre_Catg() + "'></td>\n"
                + "                    </tr>\n"
                + "                    <tr>\n"
                + "                        <td> <label for=\"\">Descripcion de la categoria: </label></td> \n"
                + "                        <td><textarea cols=\"30\" rows=\"6\" name=\"descripcion_Catg\" id=\"descripcion_Catg\">" + ct.getDescripcion_Catg() + "</textarea></td>                                       \n"
                + "                    </tr>                                                           \n"
                + "                    <tr>\n"
                + "                        <td></td> \n"
                + "                        <td>\n"
                + "                            <input  type=\"submit\" value=\"Modificar categoria\" id=\"btnmodificarCategoria\" style=\"background:orange\">\n"
                + "                    </td>                                     \n"
                + "                    </tr>                        \n"
                + "                </table>\n"
                + "            </form>"
                + "            </div>";

        return htmlcode;
    }
     public  boolean updateProducto(Categoria c){
        ModeloCategoria mc = new ModeloCategoria ();         
        return mc.actualizar_categoria(c); 
    }
}
