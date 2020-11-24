/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *Nombre varchar(100) 
Descripcion varchar(1000) 
Cantidad int(11) 
Imagen_1 varchar(100) 
Imagen_2 varchar(100) 
Imagen_3 varchar(100) 
Imagen_4 varchar(100) 
Imagen_5 varchar(100) 
Estado varchar(200) 
IdSubCategoria int(11) 
IdInventario int(11) 
PrecioVenta float 
PrecioCompra
 * @author Angie
 */
public class Producto {
   
    private int IdProducto; 
    private String Nombre; 
    private String Descripcion; 
    private int Cantidad;
    private String Imagen_1; 
    private String Imagen_2; 
    private String Imagen_3;
    private String Imagen_4; 
    private String Imagen_5; 
    private String Estado; 
    private int IdSubCategoria; 
    private int IdInventario;
    private float PrecioVenta; 
    private float PrecioCompra; 

    
    public Producto(int IdProducto, String Nombre, String Descripcion, int Cantidad, String Imagen_1, String Imagen_2, String Imagen_3, String Imagen_4, String Imagen_5, String Estado, int IdSubCategoria, int IdInventario, float PrecioVenta, float PrecioCompra) {
        this.IdProducto = IdProducto;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Cantidad = Cantidad;
        this.Imagen_1 = Imagen_1;
        this.Imagen_2 = Imagen_2;
        this.Imagen_3 = Imagen_3;
        this.Imagen_4 = Imagen_4;
        this.Imagen_5 = Imagen_5;
        this.Estado = Estado;
        this.IdSubCategoria = IdSubCategoria;
        this.IdInventario = IdInventario;
        this.PrecioVenta = PrecioVenta;
        this.PrecioCompra = PrecioCompra;
    }

    
    
    public Producto() {
    }

    public int getIdProducto() {
        return IdProducto;
    }
       
    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }

    
    public String getNombre() {
        return Nombre;
    }

   
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    
    public String getDescripcion() {
        return Descripcion;
    }

   
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

   
    public int getCantidad() {
        return Cantidad;
    }

  
    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    
    public String getImagen_1() {
        return Imagen_1;
    }

   
    public void setImagen_1(String Imagen_1) {
        this.Imagen_1 = Imagen_1;
    }

    
    public String getImagen_2() {
        return Imagen_2;
    }

   
    public void setImagen_2(String Imagen_2) {
        this.Imagen_2 = Imagen_2;
    }

   
    public String getImagen_3() {
        return Imagen_3;
    }

  
    public void setImagen_3(String Imagen_3) {
        this.Imagen_3 = Imagen_3;
    }

    
    public String getImagen_4() {
        return Imagen_4;
    }

  
    public void setImagen_4(String Imagen_4) {
        this.Imagen_4 = Imagen_4;
    }

   
    public String getImagen_5() {
        return Imagen_5;
    }

    
    public void setImagen_5(String Imagen_5) {
        this.Imagen_5 = Imagen_5;
    }

  
    public String getEstado() {
        return Estado;
    }

   
    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

   
    public int getIdSubCategoria() {
        return IdSubCategoria;
    }

  
    public void setIdSubCategoria(int IdSubCategoria) {
        this.IdSubCategoria = IdSubCategoria;
    }

   
    public int getIdInventario() {
        return IdInventario;
    }

   
    public void setIdInventario(int IdInventario) {
        this.IdInventario = IdInventario;
    }

 
    public float getPrecioVenta() {
        return PrecioVenta;
    }

   
    public void setPrecioVenta(float PrecioVenta) {
        this.PrecioVenta = PrecioVenta;
    }

    
    public float getPrecioCompra() {
        return PrecioCompra;
    }

  
    public void setPrecioCompra(float PrecioCompra) {
        this.PrecioCompra = PrecioCompra;
    }                    
}
