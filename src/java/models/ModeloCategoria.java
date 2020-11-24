package models;

import classes.Categoria;
import classes.Producto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ModeloCategoria extends Conexion_tiendavirtual {

    public ArrayList<Categoria> getCategorias() {
        ArrayList<Categoria> categoria = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "select * from tblcategoria";
            pst = getConexion().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                categoria.add(new Categoria(rs.getInt("IdCategoria"), rs.getString("Nombre_Catg"), rs.getString("Descripcion_Catg")));
            }
        } catch (Exception e) {

        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (Exception e) {
            }

        }

        return categoria;
    }

    public Categoria getcateoria(int IdCategoria) {

        Categoria categoria = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "CALL select_categoria(?)";
            pst = getConexion().prepareCall(sql);
            pst.setInt(1, IdCategoria);
            rs = pst.executeQuery();
            while (rs.next()) {
                categoria = new Categoria(rs.getInt("IdCategoria"), rs.getString("Nombre_Catg"), rs.getString("Descripcion_Catg"));
            }
        } catch (Exception e) {
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (Exception e) {
            }
        }
        return categoria;
    }
    
    public boolean crear_categoria(Categoria c) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String sql = "CALL crear_categoria(?,?)";
            pst = getConexion().prepareStatement(sql);
            pst.setString(1, c.getNombre_Catg());
            pst.setString(2, c.getDescripcion_Catg());
            
            if (pst.executeUpdate() == 1) {
                flag = true;
            }
        } catch (Exception e) {
            System.err.println("Error al crear categoria!! " + e);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println(e);
            }
        }
        return flag;
    }
      public boolean deletecategoria(int IdCategoria){
        boolean flag = false; 
        PreparedStatement pst= null; 
        ResultSet rs = null; 
        try {
            String sql = "CALL delete_categoria(?)"; 
            pst = getConexion().prepareCall(sql); 
            pst.setInt(1, IdCategoria);
            if(pst.executeUpdate()==1){
                flag=true; 
                
            }
            
        } catch (Exception e) {
        }finally{
            try {
                if(getConexion()!=null)getConexion().close();
                if(pst!=null)pst.close();
            } catch (Exception e) {
            }
            
        }
        
        return flag; 
    }
      public boolean actualizar_categoria(Categoria c) {

        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String sql = "CALL actualizar_categoria(?,?,?)";
            pst = getConexion().prepareStatement(sql);
            pst.setInt(1, c.getIdCategoria());
            pst.setString(2, c.getNombre_Catg());
            pst.setString(3, c.getDescripcion_Catg());
            
            if (pst.executeUpdate() == 1) {
                flag = true;
            }

        } catch (Exception e) {
            System.err.println("Error al actualizar Categoria!! " + e);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println(e);
            }
        }
        return flag;
    }
    
//      public static void main(String[] args) {
//        ModeloCategoria mc = new ModeloCategoria();
//        Categoria ct = new Categoria(19, "Prueba desde java", "Prueba desde java");
//          System.out.println(mc.actualizar_categoria(ct));
//          
//    }
}
