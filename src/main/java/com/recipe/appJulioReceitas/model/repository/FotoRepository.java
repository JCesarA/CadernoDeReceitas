package com.recipe.appJulioReceitas.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.recipe.appJulioReceitas.model.domain.Receita;

@Repository
public interface FotoRepository extends CrudRepository<Receita, Long> {    
}