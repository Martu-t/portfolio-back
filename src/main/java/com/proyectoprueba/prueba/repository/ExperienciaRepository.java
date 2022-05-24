package com.proyectoprueba.prueba.repository;

import com.proyectoprueba.prueba.model.Experiencia_laboral;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExperienciaRepository extends JpaRepository <Experiencia_laboral, Long> {

    public void save(Long id);
    
}
