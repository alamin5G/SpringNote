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
 		<div class="bg-image" 
     		style="background-image: url('<c:url value="/resources/img/background.jpg" />');
            background-repeat: repeat-y;
            background-size: 100% 100%">
		
		<div class="text-center">
			<h2>View Your Notes</h2>
			<c:if test="${not empty msg }" >
				<h4 class="text-danger">${msg }</h4>
			<c:remove var="msg"/>
			</c:if>
		</div>
		 	<!-- view note form start -->
			<div class="container pt-3">
			
				<c:forEach items="${notes }" var="nt" > 
					<div class="row m-2">
						<div class="col-md-8 offset-md-2">
							<div class="card bg-success text-white rounded ">
								
									<div class="card-header text-center fs-3">
										<img alt="note icon" src="<c:url value="/resources/img/notes.png" />" height="50px" width="50px">
										 ${nt.title }
									</div>
									<div class="card-body">
										
										<p>${nt.details }</p>
										<p>${nt.createdTime }</p>
				
										<div class="text-center">
											<a href="${pageContext.request.contextPath }/user/editNote/${nt.id}" class="btn btn-primary btn-sm">Edit</a> 
											<a href="${pageContext.request.contextPath }/user/deleteNote?id=${nt.id}" class="btn btn-danger btn-sm">Delete</a>
										</div>
									</div>
								
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>	
	</div>
</body>
</html>