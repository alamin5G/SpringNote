<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Spring Note</title>
<%@ include file="/WEB-INF/resources/component/links_file.jsp"%>
	<%@ include file="/WEB-INF/resources/component/jstl.jsp" %>
</head>
<body style="background-color:#f5f1f5">
	<%@ include file="/WEB-INF/resources/component/nav.jsp"%>
	<div class="container-fluid m-0 p-0">
 		<div class="bg-image" 
     		style="background-image: url('<c:url value="/resources/img/notepad3.jpg" />');
            height: 100vh">
		
		 	<!-- add note form start -->
			<div class="container pt-5">
				<div class="row">
					<div class="col-md-8 offset-md-2">
						<div class="card bg-success text-white rounded">
							<div class="card-header text-center fs-3">Edit Your Note</div>
								<c:if test="${not empty note }">
									<b class="fs-bol text-center p-1 bg-warning">${note }</b>
									<c:remove var="note"/>
								</c:if>
							<div class="card-body">
								<form method="post" action="${pageContext.request.contextPath }/user/noteUpdated">
									<input type="hidden" name="id" value="${notes.id }">
									<div class="mb-3">
										<label for="name" class="form-label">Note Title</label> <input
											type="text" class="form-control" id="name" name="title" value="${notes.title }"
											aria-describedby="emailHelp" placeholder="Morning Workout Challenge">
									</div>
									<div class="mb-3">
										<label for="details" class="form-label">Write Note Details</label> 
										<textarea rows="6" cols="" class="form-control" id="details" name="details"
											placeholder="I will run for 2KM within 10 minutues and then start....">${notes.details } </textarea>
									</div>
									<button type="submit"
										class="btn btn-outline-warning btn-success mb-2 d-grid gap-2 col-6 mx-auto">Update Note</button>
								</form>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>