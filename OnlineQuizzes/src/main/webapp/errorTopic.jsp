<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Error topic</title>  

    <!-- Bootstrap core CSS -->
	<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/cover.css" rel="stylesheet" type="text/css">
  </head>
  <body class="d-flex h-100 text-center bg-light">
    
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="text-white text-center mb-auto">
  	<nav class="navbar fixed-top bg-dark">
	  <div class="container">
	    <a class="navbar-brand text-white" href="#"><h3>&#127757;nline Quiz</h3></a>
	      <nav class="nav nav-masthead justify-content-center float-md-end">
	        <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/">Home</a>
	      </nav>
	  </div>
	</nav>
  </header>

  <main class="px-3">
  	<div class="alert alert-danger">
    	<h2>Sorry, the "<i class="text-">${topic}</i>" topic is not available for the moment!</h2>
  	</div>
   	<br>
    <p class="display-6">Choose your topic first then start your quiz.</p><br>
    <div class="dropdown">
	  <button class="btn btn-primary btn-lg dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
	    Choose topic
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

  <footer class="mt-auto text-center">
    <p>Project Java Group 3</p>
  </footer>
</div>


    
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
