package com.proyectoprueba.prueba.repository;

import com.proyectoprueba.prueba.model.Proyecto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProyectoRepository extends JpaRepository <Proyecto, Long> {
    public void save(Long id);
}
