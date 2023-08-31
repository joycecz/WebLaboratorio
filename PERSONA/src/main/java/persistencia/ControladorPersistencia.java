/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Persona;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author admin
 */
public class ControladorPersistencia {
    PersonaJpaController personaJpa = new PersonaJpaController();

    public ControladorPersistencia() {
    }
    
    
    public void crearUusaurio(Persona per){
        personaJpa.create(per);
    }

    public List<Persona> getUsuarios() {
        return personaJpa.findPersonaEntities();
    }
    
    public void borrarPersona(int id){
        try {
            personaJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladorPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
     }

    public Persona traerUsuario(int id) {
        return personaJpa.findPersona(id);
        
    }

    public void editarUsuario(Persona per) {
        try {
            personaJpa.edit(per);
        } catch (Exception ex) {
            Logger.getLogger(ControladorPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
