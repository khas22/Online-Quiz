<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Login</title>

	<link href="<%=request.getContextPath()%>/css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body class="bg-dark">
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">


						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<div class="text-center mt-4">
										<h1 class="h2">Login</h1>
									</div>
									<c:if test="${error != null}">
										<div class="alert-danger text-center mb-2 py-3 px-2 rounded-3" style="background-color: #f8233870; color: #99101e; font-weight: bold;">
											<span class="text-center">${error}</span>
										</div>									
									</c:if>
									<form action="<%=request.getContextPath()%>/login" method="post">
										<div class="mb-3">
											<label class="form-label">Username</label>
											<input class="form-control form-control-lg" type="text" name="username" placeholder="Enter your username" required/>
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label>
											<input class="form-control form-control-lg" type="password" name="password" placeholder="Enter your password" required/>
										</div>
										
										<div class="text-center mt-3">
											<button type="submit" class="btn btn-lg btn-primary">Submit</button>
										</div>
									</form>
								</div>							
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main>

	<script src="https://demo-basic.adminkit.io/js/app.js"></script>

</body>

</html>