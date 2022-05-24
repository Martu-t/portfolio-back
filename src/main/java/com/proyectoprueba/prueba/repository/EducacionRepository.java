
package com.proyectoprueba.prueba.repository;

import com.proyectoprueba.prueba.model.Educacion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface EducacionRepository extends JpaRepository <Educacion, Long> {
 
    public void save(Long id);
    
}
