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
			<div class="col-12 d-flex">
				<div class="card flex-fill">
					<div class="card-header">
						<h2 class="card-title mb-0 text-center">Questions list</h2>
					</div>
					
					<div class="container table-responsive">
						<c:if test="${update != null}">
							<div class="alert text-center mb-2 py-3 px-2 rounded-3" style="background-color: #0f8b43a6; color: #003817; font-weight: bold;">
								<span class="text-center">${update}</span>
							</div>	
							<%session.removeAttribute("update"); %>								
						</c:if>
						<c:if test="${delete != null}">
							<div class="alert text-center mb-2 py-3 px-2 rounded-3" style="background-color: #0f8b43a6; color: #003817; font-weight: bold;">
								<span class="text-center">${delete}</span>
							</div>	
							<%session.removeAttribute("delete"); %>									
						</c:if>
						<c:if test="${insert != null}">
							<div class="alert text-center mb-2 py-3 px-2 rounded-3" style="background-color: #0f8b43a6; color: #003817; font-weight: bold;">
								<span class="text-center">${insert}</span>
							</div>			
							<%session.removeAttribute("insert"); %>							
						</c:if>
						<a href="<%=request.getContextPath()%>/new" class="btn btn-primary mb-2">Add New Question</a>
						<table id="example" class="table table-hover my-5">
							<thead>
								<tr>
									<th>Id</th>
									<th>Question</th>
									<th>Theme</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>								
								<c:forEach items="${listQuestions}" var="q">
									<tr>
										<th scope="row">${q.idQuestion}</th>
										<td>${q.question}</td>
										<td>${q.theme}</td>
										<td class="text-nowrap">
											<a href="edit?id=${q.idQuestion }" ><span class="badge bg-secondary">Edit</span></a>
											<a href="delete?id=${q.idQuestion }" onclick="return confirm('Are you sure to delete this product?')"><span class="badge bg-danger">Delete</span></a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<script type="text/javascript">
window.setTimeout(function () {
    $(".alert").fadeTo(500, 0).slideUp(500, function () {
        $(this).remove();
    });
}, 3000);
</script>
<%@include file="layout/footer.jsp" %>

