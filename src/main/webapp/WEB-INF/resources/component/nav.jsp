<%@ include file="/WEB-INF/resources/component/jstl.jsp" %>

<nav class="navbar navbar-expand-md bg-light border-bottom border-body bg-body-tertiary " data-bs-theme="dark">
  <div class="container-fluid" >
  	<i class="fa fa-book" aria-hidden="true"> <a class="navbar-brand" href="hompage"> Spring Note</a></i>
  	
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="hompage">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="addNote">Add Note</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="viewNotes">View Notes</a>
        </li>
        
      </ul>
      
      <c:if test="${empty isLoginSuccess }">
        <a href="user-registration" class="btn m-2 btn-outline-success">Register</a>
    
        <a href="user-login" class="btn m-2 btn-outline-danger">Login</a>
      </c:if>
       <c:if test="${not empty isLoginSuccess }">
        <a href="#" class="btn m-2 btn-outline-success"><i class="fa-thin fa-user"> ${isLoginSuccess.name }</i> </a>
    
        <a href="user-logout" class="btn m-2 btn-outline-danger">Logout</a>
      </c:if>
    </div>
    
  </div>
</nav>