package com.proyectoprueba.prueba.service;

import com.proyectoprueba.prueba.model.Proyecto;
import com.proyectoprueba.prueba.repository.ProyectoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProyectoService implements IProyectoService {

    @Autowired
    public ProyectoRepository proRepo;
    
    @Override
    public List<Proyecto> verProyecto() {
       return proRepo.findAll();
    }

    @Override
    public void crearProyecto(Proyecto pro) {
        proRepo.save(pro);
    }

    @Override
    public void borrarProyecto(Long id) {
           proRepo.deleteById(id);
    }

    @Override
    public Proyecto buscarProyecto(Long id) {
          return proRepo.findById(id).orElse(null);
    }
    
}
