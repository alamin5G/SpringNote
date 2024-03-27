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
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card bg-success text-white rounded">
					<div class="card-header text-center fs-3">Login</div>
					<b class="fs-bol text-center p-1 bg-warning">Login Failed</b>
					<div class="card-body">
						<form>

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


							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" name="checkbox"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agreed on Terms and Condition.</label>
							</div>
							<button type="submit"
								class="btn btn-outline-warning btn-success mb-2 text-center d-grid gap-2 col-6 mx-auto">Login</button>
						</form>
						<div class="card-footer text-center text-white">
							
								Don't you have an account? Go to <a href="user-registration" class="text-decoration-none text-white bg-warning p-1 m-1 rounded" >Register Page</a>
								
							

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>