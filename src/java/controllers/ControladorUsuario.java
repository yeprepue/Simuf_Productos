/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import classes.Usuario;
import models.ModeloUsuario;

/**
 *
 * @author Angie
 */
public class ControladorUsuario {
    
        public boolean create (Usuario u){
        ModeloUsuario mu = new ModeloUsuario();
        return mu.crearUsuario(u);
    }
    
}
