package controllers;

import classes.Producto;
import java.util.ArrayList;
import models.ModeloProducto;

public class Controlador_Producto {

    public String getProductos() {
        ModeloProducto mp = new ModeloProducto();
        String htmlcode = "";
        for (Producto producto : mp.getAllProductos()) {
            htmlcode += "<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=" + producto.getImagen_2() + " alt=\"\" />\n"
                    + "										<h2>$" + producto.getPrecioVenta() + "</h2>\n"
                    + "										<p>" + producto.getNombre() + "</p>\n"
                    + "                                                                          <a href=\"product-details.jsp?IdProducto=" + producto.getIdProducto() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver detalles</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>$" + producto.getPrecioVenta() + "</h2>\n"
                    + "											<p>" + producto.getNombre() + "</p>\n"
                    + "                                                                                 <a href=\"product-details.jsp?IdProducto=" + producto.getIdProducto() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalles</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Comprar</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }
        return htmlcode;

    }

    public Producto getProducto(int IdProducto) {
        return new ModeloProducto().getproducto(IdProducto);
    }

    public boolean crearProducto(Producto p) {
        ModeloProducto mp = new ModeloProducto();
        return mp.crear_producto(p);
    }

    public String getPanelView() {
        String htmlcode = "";
        ModeloProducto mp = new ModeloProducto();
        ArrayList<Producto> productos = mp.getAllProductos();
        htmlcode += "<div class=\"container\">"
                + "<table class=\"table table-hover\" border=\"9\">\n"
                + "            <tr>\n"
                + "                <th>ID</th>\n"
                + "                <th>NOMBRE</th>\n"
                + "                <th>ESTADO</th>\n"
                + "                <th>CANTIDAD</th>\n"
                + "               <th>PRECIO DE COMPRA</th>\n"
                + "                <th>PRECIO DE VENTA</th>\n"
                + "                <th>IMAGEN</th>\n"
                + "                <th>ACCIONES</th>\n"
                + "            </tr>\n";
        for (Producto p : productos) {
            htmlcode += "<tr>\n"
                    + "                 <td id='IdProducto'>" + p.getIdProducto() + "</td>\n"
                    + "                <td>" + p.getNombre() + "</td>\n"
                    + "                <td>" + p.getEstado() + "</td>\n"
                    + "                <td>" + p.getCantidad() + "</td>\n"
                    + "                <td>" + p.getPrecioCompra() + "</td>\n"
                    + "                <td>" + p.getPrecioVenta() + "</td>\n"
                    + "                <td><img src=\"" + p.getImagen_1() + "\" width=\"100\" height=\"100\" > </td>\n"
                    + "                <td><a id='btn-eliminar' class=\"btn btn-info btn-block\" href=\"\">Eliminar</a> <a  class=\"btn btn-warning btn-block\" href=\"modificar.jsp?IdProducto=" + p.getIdProducto() + "\">Modificar</a></td>\n"
                    + "            </tr>\n";

        }
        htmlcode += "</table>"
                + "</div>";
        return htmlcode;
    }

    public boolean deleteproducto(int IdProducto) {
        ModeloProducto mp = new ModeloProducto();
        return mp.deleteProducto(IdProducto);

    }

    public String getEditViewproducto(int IdProducto) {
        ModeloProducto mp = new ModeloProducto();
        Producto pr=  mp.getproducto(IdProducto);

        String htmlcode = "";

        htmlcode += "<div class=\"container\">\n"                
                + "                <form id='frmmodificar' name='frmmodificar'>\n"
                + "                    <table>\n"
                + "                        <tr> \n"                
                + "                            <td><input type=\"hidden\" name=\"IdProducto\" id=\"IdProducto\" class=\"form-control\" value='"+pr.getIdProducto()+"' ></td>\n"
                + "                             </tr>\n"
                + "                             <tr> \n"
                + "                            <td> <label for=\"\">Nombre: </label></td> \n"
                + "                            <td><input type=\"text\" name=\"nombre\" id=\"nombre\" class=\"form-control\" value='"+pr.getNombre()+"'></td>\n"
                + "                        </tr>\n"
                + "                        <tr>\n"
                + "                            <td> <label for=\"\">Descripcion: </label></td> \n"
                + "                            <td><textarea cols=\"30\" rows=\"6\" name=\"descripcion\" id=\"descripcion\" class=\"form-control\" >"+pr.getDescripcion()+"</textarea></td>                                       \n"
                + "                        </tr>\n"
                + "                        <tr>\n"
                + "                            <td> <label for=\"\">Cantidad: </label></td> \n"                
                + "                            <td ><input type=\"text\" name=\"cantidad\" id=\"cantidad\" class=\"form-control\" value='"+pr.getCantidad()+"'></td>                                       \n"                                                                               
                + "                        </tr>                                                                   \n"
                + "                        <tr>\n"
                + "                            <td> <label for=\"\">Estado: </label></td> \n"
                + "                            <td><select type=\"text\" name=\"estado\" id=\"estado\" class=\"form-control\">\n"
                + "                                    <option value=\"Activo\">Activo</option>        \n"
                + "                                    <option value=\"Inactivo\">Inactivo</option>        \n"
                + "                                </select></td>\n"
                + "                            <!--td><input class=\"form-control\" ></td-->                                     \n"
                + "                        </tr> \n"
                + "                        <tr>\n"
                + "                            <td> <label for=\"\">Precio venta:</label></td> \n"
                + "                            <td><input  type=\"precioventa\" name=\"precioventa\" id=\"precioventa\" class=\"form-control\" value='"+pr.getPrecioVenta()+"'></td>                                     \n"
                + "                        </tr>\n"
                + "                        <tr>\n"
                + "                            <td> <label for=\"\">Precio compra:</label></td> \n"
                + "                            <td><input  type=\"preciocompra\" name=\"preciocompra\" id=\"preciocompra\" class=\"form-control\" value='"+pr.getPrecioCompra()+"'></td>                                     \n"
                + "                        </tr>              \n"
                + "                        <tr>\n"
                + "                            <td></td> \n"
                + "                            <td>\n"
                + "                                <input  type=\"submit\"  value=\"Modificar producto\" id=\"btnmodificarproducto\" style=\"background:orange\" multiple>\n"                
                + "                        </td>                                     \n"
                + "                        </tr>                        \n"
                + "                    </table>\n"
                + "                </form>\n"
                + "        </div>\n";

        return htmlcode;
    }
    public  boolean updateProducto(Producto p){
        ModeloProducto mp = new ModeloProducto(); 
        
        return mp.actualizar_producto(p);
    }

}
