

package classes;


public class Articulo {  
    
    
    private int IdProducto; 
    private int cantidad;     

    public Articulo() {
    }
    public Articulo(int IdProducto, int cantidad) {
        this.IdProducto = IdProducto;
        this.cantidad = cantidad;
    }        
    public int getIdProducto() {
        return IdProducto;
    }  
    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }
    public int getCantidad() {
        return cantidad;
    }
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}
