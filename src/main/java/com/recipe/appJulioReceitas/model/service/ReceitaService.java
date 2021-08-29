package com.recipe.appJulioReceitas.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.recipe.appJulioReceitas.model.domain.Receita;
import com.recipe.appJulioReceitas.model.repository.ReceitaRepository;

@Service
public class ReceitaService {
	
	@Autowired
	private ReceitaRepository receitaRepository;
		
	// MÉTODO PARA OBTER A LISTA DE RECEITAS E FAZER ORDENAÇÃO
	public List<Receita> obterLista(String campo){				
		return (List<Receita>) receitaRepository.findAll(Sort.by(Sort.Direction.ASC, campo));
	}

	// MÉTODO PARA OBTER A LISTA DE RECEITAS (responsável só por recuperar a coleção)	
	public List<Receita> obterLista(){				
		return (List<Receita>) receitaRepository.findAll(Sort.by(Sort.Direction.ASC, "nome"));
	}	
	
	// MÉTODO PARA INCLUIR
	public void incluir (Receita receita) {
		receitaRepository.save(receita);
	}
	
	// MÉTODO PARA EXCLUIR
	public void excluir (Integer id) {
		receitaRepository.deleteById(id);
	}
	
	// MÉTODO PARA LOCALIZAR UMA RECEITA PELO ID PARA SER EDITADA OU EXCLUÍDA
	public Receita obterPorId(Integer id) {
		return receitaRepository.findById(id).orElse(null);
	}
	
}