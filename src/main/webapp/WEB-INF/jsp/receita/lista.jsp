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

	table {		
		 border-collapse: collapse;
		 width: 100%;
	}
	
	th {
		 border: 1px solid #dddddd;
		 text-align: center;
		 padding: 8px;
		 background-color: #686868;	  
		 color: #ffffff;		 
	}
	
	tr:nth-child(even) {
		 background-color: #f0f0f0;
	}

	tr:nth-child(odd) {
		 background-color: #ffffff;
	}
	
	td {
		 border: 1px solid #dddddd;
		 text-align: center;
		 padding: 8px;
	}
	
	p {
		 color: #ffffff;
		 font-size:20px;
		 font-weight: bold;	
	}
	
	.label1 {
	  	color: White;
	  	font-weight: bold;
	  	font-size: 18px;			
	}
	
	.opcao {
	  	color: Black;			  	
	  	font-size: 14px;
	  /*	width: 400px;	*/	
	  	height: 34px;
	}		 				
			
</style>
  
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>
		
	<div class="container">	
		<c:if test="${not empty mensagem}">			
			<div class="alert alert-success alert-dismissible">
				<!--  a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a  --> 
				<strong>Sucesso!</strong> ${mensagem}
			</div>			
		</c:if>
		<c:if test="${not empty receitas}">
		
			<p>Total de receitas na lista: ${receitas.size()}</p>
			
			<form action="/ordenarReceita" method = "post">	
		 		
		 		<label class = "label1">Ordenar por </label>
				<select class = "opcao"  name = "sortBy" >
					<option value = "nome">Nome</option>
					<option value = "dificuldade">Dificuldade</option>			  	
				</select>
				<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-sort-by-alphabet"></i></button>

			</form>
			<br>			
			 
			<table>
				<thead>
					<tr>
						<!-- th>ID</th-->
						<th>NOME</th>
						<th colspan="3">COMO FAZER</th>						
						<th>TIPO</th>
						<th>GLÚTEN</th>
						<th>SABOR</th>
						<th>DIFICULDADE</th>
						<th>TEMPO (min)</th>
						<th>PORÇÕES</th>
						<th>CALORIAS (kcal)</th>				
						<th colspan="3">GERENCIAMENTO</th>	      		      		      	      		      
					</tr>
				</thead>
				<tbody>
					<c:forEach var="receita" items="${receitas}">
						<tr>
							<!-- td>${receita.id}</td-->
							<td style= "text-align: left">${receita.nome}</td>
							<td><a href="/receita/${receita.id}/consultarIngredientes">Ingredientes</a></td>														
							<td><a href="/receita/${receita.id}/consultarPreparo">Preparo</a></td>							
							<td><a href="/receita/${receita.id}/consultarNotas">Notas</a></td>								
							<td>${receita.tipoAlimentacao}</td>
							<td>${receita.gluten}</td>				      		      
							<td>${receita.sabor}</td>		      
							<td>${receita.dificuldade}</td>
							<td>${receita.tempoGasto}</td>
							<td>${receita.porcoes}</td>				      				      
							<td>${receita.calorias}</td>						
							<td><a href="/receita/${receita.id}/imprimir">Imprimir</a></td>	
							<td><a href="/receita/${receita.id}/editar">Editar</a></td>		      	      
							<td><a href="/receita/${receita.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>	  	 
		</c:if>
		<c:if test="${empty receitas}">
			<br>
			<p>NÃO HÁ RECEITAS CADASTRADAS.</p>				
		</c:if>		
	</div>
</body>
</html>
