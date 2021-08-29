package com.recipe.appJulioReceitas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.recipe.appJulioReceitas.model.domain.Receita;
import com.recipe.appJulioReceitas.model.service.ReceitaService;

@Controller	
public class ReceitaController {
	
	@Autowired   // Injeção de dependência
	private ReceitaService receitaService;

	// MÉTODO PARA INICIALIZAR
	@GetMapping(value="/")					//PÁGINA NO NAVEGADOR
	public String inicializa() {
		return "index";						// ARQUIVO
	}
	
	// MÉTODO PARA ORDENAR
	@PostMapping(value="/ordenarReceita")
	public String ordenar(Model model, @RequestParam String sortBy) {		
		model.addAttribute("receitas", receitaService.obterLista(sortBy));		
		return "receita/lista";
	}
	
	// MÉTODO PARA INCLUIR NOVA RECEITA
	@GetMapping(value="/incluirReceita")
	public String telaCadastro() {
		return "receita/cadastro";
	}
	
	// RETORNO DO FORMULÁRIO DE INCLUSÃO -> GRAVAR
	// action="/receita/incluir" method="post"
	@PostMapping(value = "/gravarReceita")
	public String incluir (Model model, Receita receita) {						
		receitaService.incluir(receita);		
		model.addAttribute("mensagem","A receita " + receita.getNome() + " foi incluída com sucesso!");		
		return obterLista(model);
	}
		
	// MÉTODO PARA EXCLUIR RECEITA
	@GetMapping(value="/receita/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {				
		Receita receitaExcluida = receitaService.obterPorId(id);		
		receitaService.excluir(id);		
		model.addAttribute("mensagem","A receita "+receitaExcluida.getNome() +" foi excluída com sucesso!");		
		return obterLista(model);
	}	
	
	// MÉTODO PARA CONSULTAR INGREDIENTES
	@GetMapping(value="/receita/consultarIngredientes")
	public String consultarIngredientes() {
		return "";
	}	

	//MÉTODO PARA CONSULTAR PREPARO
	@GetMapping(value="/receita/consultarPreparo")
	public String consultarPreparo() {
		return "";
	}
	
	// MÉTODO PARA IMPRIMIR
	@GetMapping(value="/receita/{id}/imprimir")
	public String imprimir(Model model, @PathVariable Integer id) {
		return "";
	}			
	
	// MÉTODO PARA EDITAR
	@GetMapping(value = "/receita/{id}/editar")
	public String editar(Model model, @PathVariable Integer id) {	
		Receita receita = receitaService.obterPorId(id);	
		model.addAttribute("editarReceita",receita);		
		return telaCadastro();
	}		
	
	// MÉTODO PARA OBTER LISTA
	@GetMapping(value="/receita/lista")   	//PÁGINA NO NAVEGADOR
	public String obterLista(Model model) {		
		model.addAttribute("receitas",receitaService.obterLista());		
		return "receita/lista";				//ARQUIVO
	}	
	
	// MÉTODO PARA ATUALIZAR RECEITA
	@PostMapping(value="/receita/{id}/atualizar")
	public String atualizar(Model model, Receita receita) {		
		receitaService.incluir(receita);			
		model.addAttribute("mensagem","A receita "+receita.getNome() +" foi modificada com sucesso!");		
		return obterLista(model);
	}
	
}