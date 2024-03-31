<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/resources/component/jstl.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Spring Note</title>
<%@ include file="/WEB-INF/resources/component/links_file.jsp"%>
</head>
<body style="background-color:#f5f1f5">
	<%@ include file="/WEB-INF/resources/component/nav.jsp"%>
	<div class="container-fluid m-0 p-0">
 		<div class="bg-image" 
     		style="background-image: url('<c:url value="/resources/img/notepad2.jpg" />');
            height: 100vh">
		
		 	<!-- register form start -->
			<div class="container pt-5">
				<div class="row">
					<div class="col-md-6 offset-md-3">
						<div class="card bg-success text-white rounded">
							<div class="card-header text-center fs-3">Create an account</div>
							<c:if test="${not empty msg }">
								<div class="bg-warning text-center rounded text-center p-1">
									<h5>${msg }</h5>
								</div>
								<c:remove var="msg"/>
							</c:if>
							<div class="card-body">
								<form action="registration-process" method="post">
									<div class="mb-3">
										<label for="name" class="form-label">Your Full Name</label> <input
											type="text" class="form-control" id="name" name="name"
											aria-describedby="emailHelp" placeholder="Enter your full Name">
		
									</div>
									<div class="mb-3">
										<label for="email" class="form-label">Email address</label> <input
											type="email" class="form-control" id="email" name="email"
											placeholder="Enter your email address">
									</div>
									<div class="mb-3">
										<label for="password" class="form-label">Password</label> <input
											type="password" class="form-control" id="password" name="password"
											placeholder="Enter password">
									</div>
									<div class="mb-3">
										<label for="highest-education" class="form-label">Highest
											Level of Education</label> <input type="text" class="form-control"
											id="highest-education" name="qualification"
											placeholder="BSc in CSE or BA in English">
									</div>
		
									<div class="mb-3 form-check">
										<input type="checkbox" class="form-check-input" name="checkbox"
											id="exampleCheck1"> <label class="form-check-label"
											for="exampleCheck1">Agreed on Terms and Condition.</label>
									</div>
									<button type="submit"
										class="btn btn-outline-warning btn-success mb-2 d-grid gap-2 col-6 mx-auto">Registration</button>
								</form>
								<div class="card-footer text-center text-white">
									Do you have an account? Go to <a href="user-login" class="btn text-decoration-none btn-outline-warning rounded p-1 m-1" >Login Page</a> 
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	<!-- Register form end -->
		</div>
	</div>

</body>
</html>