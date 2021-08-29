package com.recipe.appJulioReceitas.model.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

/**
*
* @author Julio Cesar Alves da Silva
*/

// CLASSE
@Entity   // Identifica que a classe Receita é uma tabela
@Table(name = "TbReceitas")					// Define o nome para a tabela. Sem este comando a tabela teria o nome da classe: Receita.
public class Receita {
	
	// ATRIBUTOS
	@Id										// Define a chave id como chave primária
	@GeneratedValue(strategy = GenerationType.IDENTITY)	// Gera números sequencias para a id
	private Integer id;						// Chave primária
	private String nome;					// Nome da receita
	private String tipoAlimentacao;   		// Vegana, vegetariana, onívora
	private String gluten;				    // Sim, Não
	private String sabor;					// Doce, salgada
	private String dificuldade;				// Pequena, Média, Grande
	private int tempoGasto;					// Tempo gasto no preparo em minutos
	private int porcoes;					// Quantidade de porções
	private float calorias;					// Quantidade de calorias
	private String referencia;				// Referência da receita (página da internet, etc)
	@Lob
	private byte[] foto;					// Foto da receita
	private String nomeFoto;				// Nome da foto
	@Lob 
//	@Column(name="ingredientes", length=2147483647)	
	private String ingredientes;			// Ingredientes
	@Lob 	
	private String preparo;					// Modo de preparo
	@Lob 	
	private String nota;					// Alguma nota de relevância

	
	@Override
	public String toString() {		
		return "A receita " + nome + " precisa de " + tempoGasto + " minutos para ficar pronta.";
	}

	//CONSTRUTOR
	public Receita() {
		super();
	}
	public Receita(String nomeFoto, byte[] foto) {
	    super();
	    this.nomeFoto = nomeFoto;
	    this.foto = foto;
	}
	
	// MÉTODOS DE ACESSO (ENCAPSULAMENTO)
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTipoAlimentacao() {
		return tipoAlimentacao;
	}

	public void setTipoAlimentacao(String tipoAlimentacao) {
		this.tipoAlimentacao = tipoAlimentacao;
	}

	public String getGluten() {
		return gluten;
	}

	public void setGluten(String gluten) {
		this.gluten = gluten;
	}

	public String getSabor() {
		return sabor;
	}

	public void setSabor(String sabor) {
		this.sabor = sabor;
	}

	public String getDificuldade() {
		return dificuldade;
	}

	public void setDificuldade(String dificuldade) {
		this.dificuldade = dificuldade;
	}

	public int getTempoGasto() {
		return tempoGasto;
	}

	public void setTempoGasto(int tempoGasto) {
		this.tempoGasto = tempoGasto;
	}

	public int getPorcoes() {
		return porcoes;
	}

	public void setPorcoes(int porcoes) {
		this.porcoes = porcoes;
	}

	public float getCalorias() {
		return calorias;
	}

	public void setCalorias(float calorias) {
		this.calorias = calorias;
	}

	public String getIngredientes() {
		return ingredientes;
	}

	public void setIngredientes(String ingredientes) {
		this.ingredientes = ingredientes;
	}

	public String getPreparo() {
		return preparo;
	}

	public void setPreparo(String preparo) {
		this.preparo = preparo;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getReferencia() {
		return referencia;
	}

	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

	public String getNomeFoto() {
		return nomeFoto;
	}

	public void setNomeFoto(String nomeFoto) {
		this.nomeFoto = nomeFoto;
	}

}