/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.Categoria;
import controllers.Controlador_Categoria;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Angie
 */
public class NuevaCategoria extends HttpServlet {

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
        
        FileItemFactory file_factory = new DiskFileItemFactory();
        ServletFileUpload sfu = new ServletFileUpload(file_factory);

        ArrayList<String> campos = new ArrayList<>();
        ArrayList<String> imgs = new ArrayList<>();

        try {
            List items = sfu.parseRequest(request);
            for (int i = 0; i < items.size(); i++) {
                FileItem item = (FileItem) items.get(i);
                if (!item.isFormField()) {
                    File archivo = new File("D:\\Documents\\NetBeansProjects\\Simuf_Productos\\web\\images\\home\\" + item.getName());
                    item.write(archivo);
                    imgs.add("images/home/" + item.getName());
                } else {
                    campos.add(item.getString());

                }
            }

            
        } catch (Exception e) {
            System.out.println("error " + e);
        }
            Categoria c = new Categoria(0, campos.get(0), campos.get(1));
            Controlador_Categoria cc = new Controlador_Categoria();
            
            if(cc.crearCategoria(c)){
                 response.getWriter().println("Categoria  creado exitosamente");
            }else{
                response.getWriter().println("Error al crear categoria");
                
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
