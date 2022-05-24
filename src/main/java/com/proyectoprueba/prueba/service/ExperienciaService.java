package com.proyectoprueba.prueba.service;

import com.proyectoprueba.prueba.model.Experiencia_laboral;
import com.proyectoprueba.prueba.repository.ExperienciaRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExperienciaService implements iExperienciaService {
    
    @Autowired
    public ExperienciaRepository expRepo;

    @Override
    public List<Experiencia_laboral> verExperiencia() {
        return expRepo.findAll();
    }

    @Override
    public void crearExperiencia(Experiencia_laboral exp) {
        expRepo.save(exp);
    }

    @Override
    public void borrarExperiencia(Long id) {
        expRepo.deleteById(id);
    }

    @Override
    public Experiencia_laboral buscarExperiencia(Long id) {
        return expRepo.findById(id).orElse(null);
    }
    
}


