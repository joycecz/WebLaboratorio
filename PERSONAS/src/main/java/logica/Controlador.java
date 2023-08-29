/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladorPersistencia;

/**
 *
 * @author admin
 */
public class Controlador {
    ControladorPersistencia controlPersis = new ControladorPersistencia();
    
    public void crearUsuario(String nombre, String correo, String telefono, String foto){
        Persona per= new Persona();
        per.setNombre(nombre);
        per.setCorreo(correo);
        per.setTelefono(telefono);
        per.setFoto(foto);
        
        controlPersis.crearUusaurio(per);
    }

    public List<Persona> getUsuarios() {
        
        return controlPersis.getUsuarios();
    }

    public void borrarPersona(int id) {
        controlPersis.borrarPersona(id);
    }

    public Persona traerUsuario(int id) {
        return controlPersis.traerUsuario(id);

    }

    public void editarUsuario(Persona per) {
        controlPersis.editarUsuario(per);
    }
}
