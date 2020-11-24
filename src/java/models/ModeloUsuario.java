/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Encriptar;
import classes.Usuario;
import classes.Usuario;
import java.sql.PreparedStatement;

/**
 *
 * @author Angie
 */
public class ModeloUsuario extends Conexion_tiendavirtual{
    
    public boolean crearUsuario(Usuario u) {
        boolean flag = false;
        PreparedStatement pst = null;
        try {
            String sql = "call Sp_NuevoUsuario(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(sql);
            pst.setString(1, u.getTipoDocumento());
            pst.setInt(2, u.getDocumento());
            pst.setString(3, u.getPrimerNombre());
            pst.setString(4, u.getSegundoNombre());
            pst.setString(5, u.getPrimerApellido());
            pst.setString(6, u.getSegundoApellido());
            pst.setString(7, u.getDireccion());
            pst.setString(8, u.getTelefono());
            pst.setString(9, u.getCelular());
            pst.setString(10, u.getCorreo());
            pst.setString(11, Encriptar.sha1(u.getPass()));
            pst.setInt(12, u.getIdPerfil());
            pst.setString(13, u.getEstadoUsuario());
            pst.setString(14, u.getLastSession());

            if (pst.executeUpdate() == 1) {
                flag = true;
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                if (getConexion()!= null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
            }
        }
        return flag;
    }
    
//    public static void main(String[] args) {
//        ModeloUsuario mu= new ModeloUsuario();
//        System.out.println(mu.crearUsuario(new Usuario("Prueba", 10190000, "Prueba", "Prueba", "Prueba", "Prueba", "Prueba", "Prueba", "Prueba", "Prueba@gmail.com", "fsfdsdgwert", 2, "Activo","2019-09-07 13:00:00")));
//        
//    }
    
}
