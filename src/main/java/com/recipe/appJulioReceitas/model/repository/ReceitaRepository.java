package com.recipe.appJulioReceitas.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.recipe.appJulioReceitas.model.domain.Receita;

@Repository
public interface ReceitaRepository extends CrudRepository<Receita, Integer>{

	public List<Receita> findAll(Sort sort);
	
	
}