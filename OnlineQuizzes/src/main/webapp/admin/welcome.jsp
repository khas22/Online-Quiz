<% 
	response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.addHeader("Prama","no-cache");
	response.addHeader("Expires","0");
	if(session.getAttribute("username") == null){ response.sendRedirect("login.jsp");} 
%>
<%@include file="layout/header.jsp" %>
<main class="content">
	<div class="container-fluid p-0">

		<h1 class="mb-3"><strong>Welcome to the Admin Panel</h1>

		<div class="row">
			<div class="col-12">
				<div class="card flex-fill w-100">
					<div class="card-header">

						<h5 class="card-title mb-0">Project Topic</h5>
					</div>
					<div class="card-body py-3">
						<h4>Online quiz management system</h4>
						<p>
							This software project should be
							implemented by creating an online discussion platform that will consist of a
							wide range of questions on different topics, fields, and subjects. By creating a
							user-friendly environment of Bluebook implementation, this application is a
							resourceful tool for individuals who wish to practice mock quizzes and tests.
						</p>
					</div>
				</div>
			</div>
			<div class="col-12 d-flex">
				<div class="w-100">
					<h1 class="mb-3"><strong>Participants</h1>
					<div class="row row-cols-1 row-cols-md-3 g-4">
					  <div class="col col-md-3">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath()%>/img/photos/isaac.png" class="card-img-top" alt="Skyscrapers"/>
					      <div class="card-body">
					        <h5 class="card-title">22107174</h5>
					        <p class="card-text">
					          Isaac Mumba Ngoy
					        </p>
					      </div>
					    </div>
					  </div>
					  <div class="col col-md-3">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath()%>/img/photos/charle.jpg" class="card-img-top" alt="Los Angeles Skyscrapers"/>
					      <div class="card-body">
					        <h5 class="card-title">22121577</h5>
					        <p class="card-text">Charles Onwuchekwa</p>
					      </div>
					    </div>
					  </div>
					  <div class="col col-md-3">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath()%>/img/photos/patrick.jpg" class="card-img-top" alt="Palm Springs Road"/>
					      <div class="card-body">
					        <h5 class="card-title">22107163</h5>
					        <p class="card-text">
					        Patrick Popoola
					        </p>
					      </div>
					    </div>
					  </div>
					  <div class="col col-md-3">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath()%>/img/photos/mohamed.jpeg" class="card-img-top" alt="Palm Springs Road"/>
					      <div class="card-body">
					        <h5 class="card-title">22113856</h5>
					        <p class="card-text">
					          Mohammed Alawaid
					        </p>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</div>

		</div>
	</div>
</main>
<%@include file="layout/footer.jsp" %>