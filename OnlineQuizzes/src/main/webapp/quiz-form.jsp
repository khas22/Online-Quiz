<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quiz tests</title>  

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
	        <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/">Home</a>
	      </nav>
	  </div>
	</nav>
  </header>

  <main class="my-5 p-lg-5">
    <h1 class="text-center text-dark text-capitalize"><%= request.getParameter("topic") %> Quiz</h1>
    <div class="container-lg">
    <form class="container-md form-control bg-transparent border-0" action="<%=request.getContextPath()%>/quiz" method="post">
    	<% int i = 1; %>
    <c:forEach items="${quizQuestions}" var="q">
    <div class="row justify-content-center">
    	<div class="col col-md-8">
    	<div class="card my-3 shadow">
            <h5 class="card-header bg-primary text-white">${q.question}</h5>
            <div class="card-body">
            	<input type="hidden" name="id<%=i%>" value="${q.idQuestion}" />
            	<input type="hidden" name="q<%=i%>" value="${q.question}" />
            	
                <div class="form-check">
                	<label class="form-check-label">
                    <input class="form-check-input" type="radio" name="question<%=i%>" value="1" required>
                    ${q.answer1}</label>
                </div>
                <div class="form-check">
                	<label class="form-check-label">
                    <input class="form-check-input" type="radio" name="question<%=i%>" value="2" required>
                    ${q.answer2}</label>
                </div>
                <div class="form-check">
                	<label class="form-check-label">
                    <input class="form-check-input" type="radio" name="question<%=i%>"  value="3" required>
                    ${q.answer3}</label>
                </div>
                <div class="form-check">
                	<label class="form-check-label">
                    <input class="form-check-input" type="radio" name="question<%=i%>" value="4" required>
                    ${q.answer4}</label>
                </div>    
          </div>
        </div>
        <% i ++; %>
        </div>
        </div>
		</c:forEach>
        <div class="my-4 text-center">
		    <button class="btn btn-primary btn-lg" type="submit">Submit</button>
		 </div>          
    </form>
    </div>
  </main>

  <footer class="mt-5 text-dark text-center">
    <p>Project Java Group 3</p>
  </footer>
</div> 
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>