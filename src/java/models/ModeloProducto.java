package models;

import classes.Producto;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import models.Conexion_tiendavirtual;
import java.sql.ResultSet;

public class ModeloProducto extends Conexion_tiendavirtual {

    public ArrayList<Producto> getAllProductos() {
        ArrayList<Producto> productos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "call select_Productos()";
            pst = getConexion().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                productos.add(new Producto(rs.getInt("IdProducto"), rs.getString("Nombre"), rs.getString("Descripcion"), rs.getInt("Cantidad"), rs.getString("Imagen_1"), rs.getString("Imagen_2"), rs.getString("Imagen_3"), rs.getString("Imagen_4"), rs.getString("Imagen_5"), rs.getString("Estado"), rs.getInt("IdSubCategoria"), rs.getInt("IdInventario"), rs.getFloat("PrecioVenta"), rs.getFloat("PrecioCompra")));
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

        return productos;
    }

    public Producto getproducto(int IdProducto) {

        Producto producto = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "call select_Producto(?)";
            pst = getConexion().prepareCall(sql);
            pst.setInt(1, IdProducto);
            rs = pst.executeQuery();
            while (rs.next()) {
                producto = new Producto(rs.getInt("IdProducto"), rs.getString("Nombre"), rs.getString("Descripcion"), rs.getInt("Cantidad"), rs.getString("Imagen_1"), rs.getString("Imagen_2"), rs.getString("Imagen_3"), rs.getString("Imagen_4"), rs.getString("Imagen_5"), rs.getString("Estado"), rs.getInt("IdSubCategoria"), rs.getInt("IdInventario"), rs.getFloat("PrecioVenta"), rs.getFloat("PrecioCompra"));
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

        return producto;

    }

    public boolean crear_producto(Producto p) {

        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String sql = "CALL crear_producto(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(sql);
            pst.setString(1, p.getNombre());
            pst.setString(2, p.getDescripcion());
            pst.setInt(3, p.getCantidad());
            pst.setString(4, p.getImagen_1());
            pst.setString(5, p.getImagen_2());
            pst.setString(6, p.getImagen_3());
            pst.setString(7, p.getImagen_4());
            pst.setString(8, p.getImagen_5());
            pst.setString(9, p.getEstado());
            pst.setInt(10, p.getIdSubCategoria());
            pst.setInt(11, p.getIdInventario());
            pst.setFloat(12, p.getPrecioVenta());
            pst.setFloat(13, p.getPrecioCompra());
            if (pst.executeUpdate() == 1) {
                flag = true;
            }

        } catch (Exception e) {
            System.err.println("Error al crear producto!! " + e);
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
    
    public boolean deleteProducto(int IdProducto){
        boolean flag = false; 
        PreparedStatement pst= null; 
        ResultSet rs = null; 
        try {
            String sql = "call delete_producto(?)"; 
            pst = getConexion().prepareCall(sql); 
            pst.setInt(1, IdProducto);
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
    public boolean actualizar_producto(Producto p) {

        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String sql = "CALL actualizar_producto(?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(sql);
            pst.setInt(1, p.getIdProducto());
            pst.setString(2, p.getNombre());
            pst.setString(3, p.getDescripcion());
            pst.setInt(4, p.getCantidad());
            pst.setString(5, p.getEstado());
            pst.setFloat(6, p.getPrecioVenta());
            pst.setFloat(7, p.getPrecioCompra());
            if (pst.executeUpdate() == 1) {
                flag = true;
            }

        } catch (Exception e) {
            System.err.println("Error al actualizar producto!! " + e);
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
    
    

//    public static void main(String[] args) {
//        ModeloProducto mp = new ModeloProducto();
//        System.out.println(mp.crear_producto(new Producto(0, "Nintendo Switch", "Máquina híbrida centrada en el juego tradicional en casa, pero con facilidad de llevar toda esa experiencia a una pantalla más pequeña para disfrutar de los videojuegos dónde, cuándo y con quién quieras, igual que una consola portátil. La consola Nintendo Switch está diseñada para acompañarte dondequiera que vayas, transformándose de consola para el hogar a consola portátil en un instante. Así tendrás más ocasiones para disfrutar de tus juegos favoritos como más te guste. Coloca la consola Nintendo Switch en la base y juega en alta definición.", 10, "images/home/Nintendo.jpg", "images/home/Nintendo.jpg", "images/home/Nintendo.jpg", "images/home/Nintendo.jpg", "images/home/Nintendo.jpg", "Activo", 1, 1, 1399000, 900000)));
//    }
}
