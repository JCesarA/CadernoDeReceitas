package com.recipe.appJulioReceitas.model.service;

import org.springframework.stereotype.Service;

import java.util.Optional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.recipe.appJulioReceitas.model.domain.Receita;
import com.recipe.appJulioReceitas.model.repository.FotoRepository;


@Service
public class FotoService {

    private static final Logger logger = LoggerFactory.getLogger("ReceitaService.class");
    @Autowired
    private static FotoRepository repository;

    public static int saveFoto(Receita model) {
        try {
            repository.save(model);
            return 1;
        } catch (Exception e) {
            logger.error("ERROR", e);
            return 0;
        }
    }

    public static Receita getFoto(Long id) {
        Optional<Receita> findById = repository.findById(id);
        if (findById.isPresent()) {
            Receita getFotoDetails = findById.get();
            logger.info("id= " + getFotoDetails.getId() + " Nome da foto = " + getFotoDetails.getNomeFoto());
            return getFotoDetails;
        } else {
            return null;
        }
    }	
	
}