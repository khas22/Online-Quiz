<% 
	response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.addHeader("Prama","no-cache");
	response.addHeader("Expires","0");
	if(session.getAttribute("username") == null){ response.sendRedirect("login.jsp");} 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="layout/header.jsp" %>
<main class="content">
	<div class="container-fluid p-0">
		<div class="row">
			<div class="col-12  d-flex">
				<div class="card flex-fill">
					<div class="card-header">
						<c:if test="${question != null}">
							<h1 class="card-title mb-0 text-center">Edit Question</h1>
		            	</c:if>
		            	
						<c:if test="${question == null}">
							<h1 class="card-title mb-0 text-center">Add New Question</h1>
		            	</c:if>
					</div>
					<div class="container">
					<c:if test="${question != null}">
						<form action="update" method="post">
					</c:if>
					<c:if test="${question == null}">
						<form action="insert" method="post">
					</c:if>

				
					<c:if test="${question != null}">
						<input type="hidden" name="id" value="${question.idQuestion}" />
					</c:if>
					
					  <div class="mb-3">
					    <label for="question" class="form-label">Question</label>
					    <textarea class="form-control" id="question" name="question" placeholder="Enter your question" required>${question.question}</textarea>
					  </div>

					<div class="mb-3">
					    <label for="answer1" class="form-label">Answer 1</label>
					    <input type="text" class="form-control" id="answer1"  name="answer1" value="<c:out value='${question.answer1}' />" required>
					</div>
					
					<div class="mb-3">
					    <label for="answer2" class="form-label">Answer 2</label>
					    <input type="text" class="form-control" id="answer2" name="answer2" value="<c:out value='${question.answer2}' />" required>
					</div>
					
					<div class="mb-3">
					    <label for="answer3" class="form-label">Answer 3</label>
					    <input type="text" class="form-control" id="answer3" name="answer3" value="<c:out value='${question.answer3}' />" required>
					</div>
					
					<div class="mb-3">
					    <label for="answer4" class="form-label">Answer 4</label>
					    <input type="text" class="form-control" id="answer4" name="answer4" value="<c:out value='${question.answer4}' />" required>
					</div>
					
					<div class="row">
					
					  <div class="col-6 mb-3">
					  	<label for="goodAnswer" class="form-label">Good answer is</label>
					    <select class="form-select" required aria-label="select example" name ="goodAnswer">
					      <option value="">Select the good answer</option>
					      <option value="1">Answer 1</option>
					      <option value="2">Answer 2</option>
					      <option value="3">Answer 3</option>
					      <option value="4">Answer 4</option>
					    </select>
					  </div>
					  
					  <div class="col-6 mb-3">
					  	<label for="theme" class="form-label">Theme</label>
					    <select class="form-select" required aria-label="select example" name="theme">
					      <option value="">Select the theme</option>
					      <option value="general knowledge">General Knowledge</option>
					      <option value="sports">Sports</option>
					      <option value="geography">Geography</option>
					      <option value="basic science">Basic Science</option>
					      <option value="computer">Computer Science</option>
					    </select>
					  </div>
					</div>
					
					  <div class="mb-3">
					    <button class="btn btn-primary" type="submit">Save</button>
					    <a href="<%=request.getContextPath()%>/list" class="btn btn-secondary" type="submit">Cancel</a>
					  </div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<%@include file="layout/footer.jsp" %>

