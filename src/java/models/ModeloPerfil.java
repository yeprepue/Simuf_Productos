/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Perfil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Briin
 */
public class ModeloPerfil extends Conexion_tiendavirtual {

    public List<Perfil> ConsultarPerfiles() {
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<Perfil> listaPerfil = new ArrayList();
        try {
            String sql = "SELECT IdPerfil, Perfil FROM tblPerfil";
            pst = getConexion().prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Perfil perfil = new Perfil();
                perfil.setIdPerfil(rs.getInt("IdPerfil"));
                perfil.setNombrePerfil(rs.getString("Perfil"));
                listaPerfil.add(perfil);
            }
        } catch (SQLException e) {
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
            }

        }
        return listaPerfil;
    }
//    
//    public static void main(String[] args) {
//        
//        ModeloPerfil mp = new ModeloPerfil();
//        for(Perfil p : mp.ConsultarPerfiles()){
//            System.out.println(mp.ConsultarPerfiles());
//        }                    
//    }

}
