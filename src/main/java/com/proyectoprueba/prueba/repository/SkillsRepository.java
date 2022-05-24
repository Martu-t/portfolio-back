package com.proyectoprueba.prueba.repository;

import com.proyectoprueba.prueba.model.Skills;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillsRepository extends JpaRepository <Skills, Long> {
    
    public void save(Long id);
}
