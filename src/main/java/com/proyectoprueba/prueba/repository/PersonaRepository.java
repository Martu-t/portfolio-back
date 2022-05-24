package com.proyectoprueba.prueba.repository;

import com.proyectoprueba.prueba.model.Persona;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonaRepository extends JpaRepository <Persona, Long> {

    public void save(Long id);
    
}
