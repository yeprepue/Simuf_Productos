/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.Categoria;
import controllers.Controlador_Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Modificarcategoria extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
        int IdCategoria = Integer.parseInt(request.getParameter("IdCategoria"));
        
        String nombre = request.getParameter("Nombre_Catg");
        
        String descripcion = request.getParameter("Descripcion_Catg");
        
        Categoria c = new Categoria(IdCategoria, nombre, descripcion);
        
        Controlador_Categoria cc = new Controlador_Categoria(); 
        
        if(cc.updateProducto(c)){
            
            response.getWriter().println("Categoria modificada Exitosamente");     
            
        }else {
            
             response.getWriter().println("Error al  modificar esta categoria.");
        }
    }

 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    public String getServletInfo() {
        return "Short description";
    }

}
