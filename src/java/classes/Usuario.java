/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Briin
 */

public class Usuario {
    private int IdUsuario;
    private String TipoDocumento ;
    private int Documento;
    private String PrimerNombre;
    private String SegundoNombre;
    private String PrimerApellido;
    private String SegundoApellido;
    private String Telefono;
    private String Celular;
    private String Direccion;
    private String Correo;
    private String Pass;
    private int IdPerfil;
    private String EstadoUsuario;
    private String LastSession;

//    public Usuario(String TipoDocumento, int Documento, String Nombre1U, String Nombre2U, String Apellidos1U, String Apellidos2U, String TelefonoU, String CelularU, String DireccionU, String CorreoU, String Pass, int PerfilU, String EstadoU) {        
//        this.TipoDocumento = TipoDocumento;
//        this.Documento = Documento;
//        this.Nombre1U = Nombre1U;
//        this.Nombre2U = Nombre2U;
//        this.Apellidos1U = Apellidos1U;
//        this.Apellidos2U = Apellidos2U;
//        this.TelefonoU = TelefonoU;
//        this.CelularU = CelularU;
//        this.DireccionU = DireccionU;
//        this.CorreoU = CorreoU;
//        this.Pass = Pass;
//        this.PerfilU = PerfilU;
//        this.EstadoU = EstadoU;
//        Date d = new Date();
//        SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mmm:ss");
//        this.LastSession = sdf.format(d);
//    }

    public Usuario( String TipoDocumento, int Documento, String PrimerNombre, String SegundoNombre, String PrimerApellido, String SegundoApellido, String Telefono, String Celular, String Direccion, String Correo, String Pass, int IdPerfil, String EstadoUsuario, String LastSession) {
        
        this.TipoDocumento = TipoDocumento;
        this.Documento = Documento;
        this.PrimerNombre = PrimerNombre;
        this.SegundoNombre = SegundoNombre;
        this.PrimerApellido = PrimerApellido;
        this.SegundoApellido = SegundoApellido;
        this.Telefono = Telefono;
        this.Celular = Celular;
        this.Direccion = Direccion;
        this.Correo = Correo;
        this.Pass = Pass;
        this.IdPerfil = IdPerfil;
        this.EstadoUsuario = EstadoUsuario;
        // this.LastSession = LastSession;
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
        this.LastSession = sdf.format(d);
    }
    public Usuario( String Correo, String Pass, int IdPerfil, String EstadoUsuario ){
        this.Correo = Correo;
        this.Pass = Pass;
        this.IdPerfil = IdPerfil;
        this.EstadoUsuario = EstadoUsuario;
    }
    

    /**
     * @return the IdUsuario
     */
    public int getIdUsuario() {
        return IdUsuario;
    }

    /**
     * @param IdUsuario the IdUsuario to set
     */
    public void setIdUsuario(int IdUsuario) {
        this.IdUsuario = IdUsuario;
    }

    /**
     * @return the TipoDocumento
     */
    public String getTipoDocumento() {
        return TipoDocumento;
    }

    /**
     * @param TipoDocumento the TipoDocumento to set
     */
    public void setTipoDocumento(String TipoDocumento) {
        this.TipoDocumento = TipoDocumento;
    }

    /**
     * @return the Documento
     */
    public int getDocumento() {
        return Documento;
    }

    /**
     * @param Documento the Documento to set
     */
    public void setDocumento(int Documento) {
        this.Documento = Documento;
    }

    /**
     * @return the PrimerNombre
     */
    public String getPrimerNombre() {
        return PrimerNombre;
    }

    /**
     * @param PrimerNombre the PrimerNombre to set
     */
    public void setPrimerNombre(String PrimerNombre) {
        this.PrimerNombre = PrimerNombre;
    }

    /**
     * @return the SegundoNombre
     */
    public String getSegundoNombre() {
        return SegundoNombre;
    }

    /**
     * @param SegundoNombre the SegundoNombre to set
     */
    public void setSegundoNombre(String SegundoNombre) {
        this.SegundoNombre = SegundoNombre;
    }

    /**
     * @return the PrimerApellido
     */
    public String getPrimerApellido() {
        return PrimerApellido;
    }

    /**
     * @param PrimerApellido the PrimerApellido to set
     */
    public void setPrimerApellido(String PrimerApellido) {
        this.PrimerApellido = PrimerApellido;
    }

    /**
     * @return the SegundoApellido
     */
    public String getSegundoApellido() {
        return SegundoApellido;
    }

    /**
     * @param SegundoApellido the SegundoApellido to set
     */
    public void setSegundoApellido(String SegundoApellido) {
        this.SegundoApellido = SegundoApellido;
    }

    /**
     * @return the Telefono
     */
    public String getTelefono() {
        return Telefono;
    }

    /**
     * @param Telefono the Telefono to set
     */
    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    /**
     * @return the Celular
     */
    public String getCelular() {
        return Celular;
    }

    /**
     * @param Celular the Celular to set
     */
    public void setCelular(String Celular) {
        this.Celular = Celular;
    }

    /**
     * @return the Direccion
     */
    public String getDireccion() {
        return Direccion;
    }

    /**
     * @param Direccion the Direccion to set
     */
    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    /**
     * @return the Correo
     */
    public String getCorreo() {
        return Correo;
    }

    /**
     * @param Correo the Correo to set
     */
    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    /**
     * @return the Pass
     */
    public String getPass() {
        return Pass;
    }

    /**
     * @param Pass the Pass to set
     */
    public void setPass(String Pass) {
        this.Pass = Pass;
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
     * @return the EstadoUsuario
     */
    public String getEstadoUsuario() {
        return EstadoUsuario;
    }

    /**
     * @param EstadoUsuario the EstadoUsuario to set
     */
    public void setEstadoUsuario(String EstadoUsuario) {
        this.EstadoUsuario = EstadoUsuario;
    }

    /**
     * @return the LastSession
     */
    public String getLastSession() {
        return LastSession;
    }

    /**
     * @param LastSession the LastSession to set
     */
    public void setLastSession(String LastSession) {
        this.LastSession = LastSession;
    }
    
    

   
}
