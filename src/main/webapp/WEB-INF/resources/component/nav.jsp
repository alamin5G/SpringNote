<%@ include file="/WEB-INF/resources/component/jstl.jsp" %>

<nav class="navbar navbar-expand-md bg-light border-bottom border-body bg-body-tertiary " data-bs-theme="dark">
  <div class="container-fluid" >
  	<i class="fa fa-book" aria-hidden="true"> <a class="navbar-brand" href="${pageContext.request.contextPath }/homepage"> Spring Note</a></i>
  	
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath }/homepage">Home</a>
        </li>
        <c:if test="${not empty isLoginSuccess }">
        <li class="nav-item">
          <a class="nav-link active" href="${pageContext.request.contextPath }/user/addNote">Add Note</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="${pageContext.request.contextPath }/user/viewNotes">View Notes</a>
        </li>
        </c:if>
      </ul>
      
      <c:if test="${empty isLoginSuccess }">
        <a href="${pageContext.request.contextPath }/user-registration" class="btn m-2 btn-outline-success">Register</a>
    
        <a href="${pageContext.request.contextPath }/user-login" class="btn m-2 btn-outline-danger">Login</a>
      </c:if>
       <c:if test="${not empty isLoginSuccess }">
        <a href="#" class="btn m-2 btn-outline-success"><i class="fa-thin fa-user"> ${isLoginSuccess.name }</i> </a>
    
        <a href="${pageContext.request.contextPath }/user/user-logout" class="btn m-2 btn-outline-danger">Logout</a>
      </c:if>
    </div>
    
  </div>
</nav>