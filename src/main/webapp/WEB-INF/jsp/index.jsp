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
</head>

<style>
	body {		  
		  background-color: black;
		  background-repeat: no-repeat;
		  background-position: center;
		  background-attachment: fixed;  
		  background-size: cover;
		  font-size:15px;
		  font-family: arial, sans-serif;
	}			
</style>

<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>  
		
	<div class="container">
	  <h2 style="color:white;">O seu livro de receitas</h2>
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	      <li data-target="#myCarousel" data-slide-to="3"></li>
	      <li data-target="#myCarousel" data-slide-to="4"></li>
	      <li data-target="#myCarousel" data-slide-to="5"></li>
	      <li data-target="#myCarousel" data-slide-to="6"></li>
	      <li data-target="#myCarousel" data-slide-to="7"></li>
	      <li data-target="#myCarousel" data-slide-to="8"></li>
	      <li data-target="#myCarousel" data-slide-to="9"></li>      
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner">
	
	      <div class="item active">
	        <img src="img/Slide1.jpg" alt="Aveioca" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>AVEIOCA</h3>
	          <p> </p>          
	        </div>
	      </div>
	
	      <div class="item">
	        <img src="img/Slide2.jpg" alt="Creme de espinafre" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>CREME DE ESPINAFRE</h3>
	          <p> </p>         
	        </div>
	      </div>
	    
	      <div class="item">
	        <img src="img/Slide3.jpg" alt="Muffin de banana e amendoim" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>MUFFIN DE BANANA E AMENDOIM</h3>
	          <p> </p>        
	        </div>
	      </div>
	      
	      <div class="item">
	        <img src="img/Slide4.jpg" alt="Pãozinho de inhame" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>PÃOZINHO DE INHAME</h3>
	        </div>
	      </div>
	   
	      <div class="item">
	        <img src="img/Slide5.jpg" alt="Pudim de leite de soja" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>PUDIM DE LEITE DE SOJA</h3>          
	        </div>
	      </div>
	    
	      <div class="item">
	        <img src="img/Slide6.jpg" alt="Pudim de milharina" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>PUDIM DE MILHARINA</h3>          
	        </div>
	      </div>      
	      
	      <div class="item">
	        <img src="img/Slide7.jpg" alt="Spaghetti Julio Cesar" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>SPAGHETTI JULIO CESAR</h3>          
	        </div>
	      </div>
	
	      <div class="item">
	        <img src="img/Slide8.jpg" alt="Torta integral de banana" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>TORTA INTEGRAL DE BANANA</h3>          
	        </div>
	      </div>
	    
	      <div class="item">
	        <img src="img/Slide9.jpg" alt="Torta integral de maçã" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>TORTA INTEGRAL DE MAÇÃ</h3>          
	        </div>
	      </div>      
	      
	      <div class="item">
	        <img src="img/Slide10.jpg" alt="Tutu de feijão" style="width:100%;">
	        <div class="carousel-caption">
	          <h3>TUTU DE FEIJÃO</h3>          
	        </div>
	      </div>       
	  
	    </div>
	
	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>

</body>
</html>
