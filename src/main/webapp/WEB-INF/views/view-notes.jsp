<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Spring Note</title>
<%@ include file="/WEB-INF/resources/component/links_file.jsp"%>
<%@ include file="/WEB-INF/resources/component/jstl.jsp"%>
</head>
<body style="background-color: #f5f1f5">
	<%@ include file="/WEB-INF/resources/component/nav.jsp"%>
	<div class="container-fluid m-0 p-0">
 		<img alt="note-background" src="<c:url value="/resources/img/notepad.jpg" />" width="100%" height="850px">
 	</div>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card bg-success text-white rounded">
					<div class="card-header text-center fs-3">View Your Notes</div>
					<div class="card-body">
						<div class="text-center">
							<img alt="note icon"
								src="<c:url value="/resources/img/notes.png" />" height="50px"
								width="50px">
						</div>
						<p>What is Programming?</p>
						<p>Programming is a task, where computer science student</p>
						<p>Publish Date: 2020-07-21</p>

						<div class="text-center">
							<a href="editNote" class="btn btn-primary btn-sm">Edit</a> 
							<a href="deleteNote" class="btn btn-danger btn-sm">Delete</a>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card bg-success text-white rounded">
					<div class="card-header text-center fs-3">View Your Notes</div>
					<div class="card-body">
						<div class="text-center">
							<img alt="note icon"
								src="<c:url value="/resources/img/notes.png" />" height="50px"
								width="50px">
						</div>
						<p>What is Java Programming?</p>
						<p>Java Programming is a task, where computer science student</p>
						<p>Publish Date: 2020-07-21</p>

						<div class="text-center">
							<a href="editNote" class="btn btn-primary btn-sm">Edit</a> 
							<a href="deleteNote" class="btn btn-danger btn-sm">Delete</a>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>

</body>
</html>