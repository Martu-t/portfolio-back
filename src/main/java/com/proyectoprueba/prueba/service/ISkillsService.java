package com.proyectoprueba.prueba.service;

import com.proyectoprueba.prueba.model.Skills;
import java.util.List;


public interface ISkillsService {
    
    public List<Skills> verSkills();
    
    public void crearSkills (Skills ski);
    
    public void borrarSkills (Long id);
    
    public Skills buscarSkills (Long id);
}
