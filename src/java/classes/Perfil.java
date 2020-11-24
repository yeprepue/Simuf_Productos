/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 * 
 * @author Briin
 */
public class Perfil {
      private int IdPerfil;
    private String NombrePerfil;  
    private String DescripcionPerfil;

    public Perfil(int IdPerfil, String NombrePerfil, String DescripcionPerfil) {
        this.IdPerfil = IdPerfil;
        this.NombrePerfil = NombrePerfil;
        this.DescripcionPerfil = DescripcionPerfil;
    }
    public Perfil(int IdPerfil, String NombrePerfil) {
        this.IdPerfil = IdPerfil;
        this.NombrePerfil = NombrePerfil;        
    }
    public Perfil() {
        
    }
    

    /**
     * @return the IdPerfil
     */
    public int getIdPerfil() {
        return IdPerfil;
    }

    /**
     * @param IdPerfil the IdPerfil to set
     */
    public void setIdPerfil(int IdPerfil) {
        this.IdPerfil = IdPerfil;
    }

    /**
     * @return the NombrePerfil
     */
    public String getNombrePerfil() {
        return NombrePerfil;
    }

    /**
     * @param NombrePerfil the NombrePerfil to set
     */
    public void setNombrePerfil(String NombrePerfil) {
        this.NombrePerfil = NombrePerfil;
    }

    /**
     * @return the DescripcionPerfil
     */
    public String getDescripcionPerfil() {
        return DescripcionPerfil;
    }

    /**
     * @param DescripcionPerfil the DescripcionPerfil to set
     */
    public void setDescripcionPerfil(String DescripcionPerfil) {
        this.DescripcionPerfil = DescripcionPerfil;
    }
}
