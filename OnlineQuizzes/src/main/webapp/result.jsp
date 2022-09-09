<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Results</title>  
    
    <!-- Bootstrap core CSS -->
	<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/cover.css" rel="stylesheet" type="text/css">
  </head>
  <body class="d-flex h-100 text-white bg-light">
    
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="text-white text-center mb-auto">
  	<nav class="navbar fixed-top bg-dark">
	  <div class="container">
	    <a class="navbar-brand text-white" href="#"><h3>&#127757;nline Quiz</h3></a>
	      <nav class="nav nav-masthead justify-content-center float-md-end">
	        <a class="nav-link " aria-current="page" href="<%=request.getContextPath()%>/">Home</a>
	      </nav>
	  </div>
	</nav>
  </header>
	
	  <main class="my-5">
	  	<div class="text-center">  	
		  <c:if test="${score == 5}">
		  	<p style="font-size:120px">&#127942;</p>
			<p class="display-3 text-warning">Excellent!</p>
		  </c:if>
		  <c:if test="${score == 4}">
		  	<p style="font-size:120px">🥈</p>
			<p class="display-3 text-secondary">Well done!</p>
		  </c:if>
		  <c:if test="${score == 3}">
		  	<p style="font-size:120px">🥉</p>
			<p class="display-3" style="color: green">Not bad!</p>
		  </c:if>
		  <c:if test="${score == 2}">
		  	<p style="font-size:120px">&#128527;</p>
			<p class="display-3 text-danger">Bad, never give up!</p>
		  </c:if>
		  <c:if test="${score == 1}">
		  	<p style="font-size:120px">😒</p>
			<p class="display-3 text-danger">Unfortunately! very low Score </p>
		  </c:if>
		  <c:if test="${score == 0}">
		  	<p style="font-size:120px">😭</p>
			<p class="display-3 text-danger">There is no score to be shown!</p>
		  </c:if>
	    	<h1 class="text-capitalize text-dark mt-3">You scored ${score} out of 5.</h1>
	  	</div>
	  	
	    <c:if test="${score < 5}">
	        <h5 class="text-center text-danger display-6">Your failed question(s)</h5>
	    	<c:forEach items="${failedQuestions}" var="q">
	    	<div class="row justify-content-center">
		    	<div class="row">
			    	<div class="col-10 col-md-8 container card my-3 shadow">
			            <div class="card-body">
							<p class="h4 text-dark">${q.question}</p>
							<p class="h5" style="color: green">${q.correct}</p>
			          </div>
			        </div>
		      	</div>
		      	</div>
			</c:forEach>
	    </c:if>
	    <div class="text-center dropdown">
		  <button class="btn btn-secondary btn-lg dropdown-toggle mb-2" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
		    Try again ...
		  </button>
		  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/quiz?topic=general knowledge">General Knwoledge</a></li>
		    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/quiz?topic=sports">Sports</a></li>
		    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/quiz?topic=geography">Geography</a></li>
		    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/quiz?topic=basic science">Basic science</a></li>
		    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/quiz?topic=computer">Computer science</a></li>
		  </ul>
		</div>
	  </main>
	
	  <footer class="text-center text-dark mt-auto">
	    <p>Project Java Group 3</p>
	  </footer>
	</div> 
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
