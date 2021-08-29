<!--  %@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"% -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Minhas Receitas</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
  
  <style>
	body {
		  background-image: url('img/madeira_escura_2.jpg');
		  background-color: #0A2A12;
		  background-repeat: no-repeat;
		  background-position: center;
		  background-attachment: fixed;  
		  background-size: cover;
		  font-size:15px;
		  font-family: arial, sans-serif;
	}


	p {
		 color: #ffffff;
		 font-size:20px;
		 font-weight: bold;	
	}
	
	label{
		 color: #ffffff;
		 font-size:18px;
		 font-weight: bold;	
	}
			
</style>
  
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>
	
	<c:set var="titulo" value="INCLUIR RECEITA"/>
	<c:set var="rota" value="/gravarReceita"/>
	<c:set var="metodo" value="post"/>	
	<c:set var="botao" value="Incluir"/>			

	<c:if test="${not empty editarReceita}">
		<c:set var="titulo" value="EDITAR RECEITA"/>
		<c:set var="rota" value="/receita/${editarReceita.id}/atualizar"/>                                   
		<c:set var="botao" value="Gravar"/>			
	</c:if>	
		
	<div class="container">		
		<p>${titulo}</p>
			
		<form action="${rota}" method="${metodo}">
		
			<div class="form-group">
				<label>Nome</label>
				<input type="text" class="form-control" value = "${editarReceita.nome}" placeholder = "Digite aqui o nome da receita" name="nome">
			</div>

			<div class="form-group">
				<label>Descreva os ingredientes (com as medidas)</label><br>			
				<textarea name="ingredientes" rows="4" cols="60" class="form-control" placeholder = "Exemplo:
&#149; 2 xícaras de sagu (ou 250 g)
&#149; 1 xícara de açúcar mascavo
&#149; 10 cravos
&#149; 0,75 litro suco de vinho tinto seco
&#149; 1,25 litro de água
				">${editarReceita.ingredientes}</textarea>
  			</div>
  			
  			<div class="form-group">
 				<label>Descreva o modo de preparo</label><br>	 						
				<textarea name="preparo" rows="4" cols="60" class="form-control" placeholder = "Exemplo:
1)	Coloque o sagu de molho por 2 horas em água.
2)	Escorra a água.
3)	Em uma panela coloque 1,25 litro de água, o sagu e o cravo.
4)	Leve para aquecer em fogo alto, mexendo sempre.
5)	Quando iniciar a fervura, abaixe o fogo, coloque o açúcar e continue mexendo para não grudar.
6)	Quando as bolinhas do sagu começarem a ficar transparentes (cerca de 30 minutos), desligue o fogo e coloque o vinho.
7)	Mexa bem.
8)	Deixe tampado até esfriar, mexendo de meia em meia hora.
9)	Quando estiver frio coloque em uma tigela de vidro e leve para geladeira.				
				">${editarReceita.preparo}</textarea>
  			</div>
  			
   			<div class="form-group">
 				<label>Nota</label><br>	 						
				<textarea name="nota" rows="1" cols="60" class="form-control" placeholder = "Digite alguma nota ou dica importante (O preenchimento deste campo é opcional)">${editarReceita.ingredientes}</textarea>
  			</div>		 					
 			<br>
 			
 			<fieldset id="group1">
 				<label>Tipo de alimentação: &nbsp;</label> 			
	 			
	 			<label class="radio-inline">	 				
	 				<input type="radio" id="onivora" name="tipoAlimentacao" value="Onívora" <c:if test="${editarReceita.tipoAlimentacao == 'Onívora'}">checked</c:if> <c:if test="${empty editarReceita}">checked</c:if>>Onívora 
	 			</label>
	 			
	 			<label class="radio-inline">					
	 				<input type="radio" id="vegana" name="tipoAlimentacao" value="Vegana" <c:if test="${editarReceita.tipoAlimentacao == 'Vegana'}">checked</c:if>>Vegana 
				</label>
				<label class="radio-inline">
					<input type="radio" id="vegetariana" name="tipoAlimentacao" value="Vegetariana" <c:if test="${editarReceita.tipoAlimentacao == 'Vegetariana'}">checked</c:if>>Vegetariana
				</label>
					
 			</fieldset>
 			<br> 			
  			<fieldset id="group2">
  				<label>Contém glúten? &nbsp;</label>
  				<label class="radio-inline"> 			
	 				<input type="radio" id="sim" name="gluten" value="Sim" <c:if test="${editarReceita.gluten == 'Sim'}">checked</c:if> <c:if test="${empty editarReceita}">checked</c:if>>Sim
	 			</label>
	 			<label class="radio-inline">	  			
					<input type="radio" id="nao" name="gluten" value="Não" <c:if test="${editarReceita.gluten == 'Não'}">checked</c:if>>Não
				</label>	
 			</fieldset>			
  			<br>  			
  			<fieldset id="group3">
  				<label>Sabor: &nbsp;</label>
  				<label class="radio-inline"> 			
	 				<input type="radio" id="doce" name="sabor" value="Doce" <c:if test="${editarReceita.sabor == 'Doce'}">checked</c:if> <c:if test="${empty editarReceita}">checked</c:if>>Doce
	 			</label>
	 			<label class="radio-inline">	  			
					<input type="radio" id="salgada" name="sabor" value="Salgada" <c:if test="${editarReceita.sabor == 'Salgada'}">checked</c:if>>Salgada
				</label>	
 			</fieldset>			
  			<br>  			  
   			<fieldset id="group4">
  				<label>Dificuldade de preparo: &nbsp;</label>
  				<label class="radio-inline"> 			
	 				<input type="radio" id="nenhuma" name="dificuldade" value="Nenhuma" <c:if test="${editarReceita.dificuldade == 'Nenhuma'}">checked</c:if> <c:if test="${empty editarReceita}">checked</c:if>>Nenhuma
	 			</label>
	 			<label class="radio-inline">	  			
					<input type="radio" id="pequena" name="dificuldade" value="Pequena" <c:if test="${editarReceita.dificuldade == 'Pequena'}">checked</c:if>>Pequena
				</label>
  				<label class="radio-inline"> 			
	 				<input type="radio" id="media" name="dificuldade" value="Média" <c:if test="${editarReceita.dificuldade == 'Média'}">checked</c:if>>Média
	 			</label>				
  				<label class="radio-inline"> 			
	 				<input type="radio" id="grande" name="dificuldade" value="Grande" <c:if test="${editarReceita.dificuldade == 'Grande'}">checked</c:if>>Grande
	 			</label>				
  				<label class="radio-inline"> 			
	 				<input type="radio" id="masterChef" name="dificuldade" value="Master Chef" <c:if test="${editarReceita.dificuldade == 'Master Chef'}">checked</c:if>>Master Chef
	 			</label>					
 			</fieldset>			
  			<br>
  			 
   			<div class="form-group">			
				<label>Tempo gasto no preparo (em minutos): </label>
				<input type="text" value = "${editarReceita.tempoGasto}" name="tempoGasto" size="5">
			</div>
			 			
  			<div class="form-group">			
				<label>Quantidade de porções produzidas: </label>
				<input type="text" value = "${editarReceita.porcoes}" name="porcoes" size="9">
			</div>
			
  			<div class="form-group">			
				<label>Quantidade de calorias (em kcal): </label>
				<input type="text" value = "${editarReceita.calorias}" name="calorias" size="12">
			</div> 			
			
			<div class="form-group">
				<label>Referência</label>
				<input type="text" class="form-control" value = "${editarReceita.referencia}" placeholder = "https://www.receita.com.br/" name="referencia">
			</div>			
			
			<div class="form-group">
				<label>Foto</label>
				<input type="text" class="form-control" value = "${editarReceita.nomeFoto}" placeholder = "Foto" name="nomeFoto">
			</div>				
			
			
			<!--  input id="incluirOuEditar" name="incluirOuEditar" type="hidden" value="${incluirOuEditar}"  -->
					
			<br>
			<button type="submit" class="btn btn-default">${botao}</button>
			<br><br><br><br>
		</form> 						 
	
	</div>
	
</body>
</html>
