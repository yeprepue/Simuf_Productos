/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.Usuario;
import controllers.ControladorUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angie
 */
public class NuevoUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String TipoDocumento = request.getParameter("TipoDocumento");
        int Documento = Integer.parseInt(request.getParameter("DocumentoU"));            
        String PrimerNombre = request.getParameter("PrimerNombre");
        String SegundoNombre = request.getParameter("SegundoNombre");
        String PrimerApellido = request.getParameter("PrimerApellido");
        String SegundoApellido = request.getParameter("SegundoApellido");
        String Telefono = request.getParameter("Telefono");
        String Correo = request.getParameter("Correo");        
        String Celular = request.getParameter("Celular");
        String Direccion = request.getParameter("Direccion");
        String Password = request.getParameter("Password");        
        int Perfil = Integer.parseInt(request.getParameter("PerfilU"));        
        String Estado = request.getParameter("Estado");         
        
        Usuario user= new Usuario(TipoDocumento, Documento, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Telefono, Celular, Direccion, Correo, Password, Perfil, Estado, Direccion);
        ControladorUsuario cu = new ControladorUsuario(); 
        if(cu.create(user)){
            response.getWriter().print("1");
            
        }else {
            response.getWriter().print("0");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
