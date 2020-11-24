
package classes;


public class Categoria {
    
private int IdCategoria; 
private String Nombre_Catg;
private String Descripcion_Catg;

    public Categoria(int IdCategoria, String Nombre_Catg, String Descripcion_Catg) {
        this.IdCategoria = IdCategoria;
        this.Nombre_Catg = Nombre_Catg;
        this.Descripcion_Catg = Descripcion_Catg;
    }

    

    
    public Categoria() {
        
    }

    public int getIdCategoria() {
        return IdCategoria;
    }

    
    
    public void setIdCategoria(int IdCategoria) {
        this.IdCategoria = IdCategoria;
    }

    
    
    public String getNombre_Catg() {
        return Nombre_Catg;
    }

    
    
    public void setNombre_Catg(String Nombre_Catg) {
        this.Nombre_Catg = Nombre_Catg;
    }

    
    public String getDescripcion_Catg() {
        return Descripcion_Catg;
    }

    
    public void setDescripcion_Catg(String Descripcion_Catg) {
        this.Descripcion_Catg = Descripcion_Catg;
    }
    
}
