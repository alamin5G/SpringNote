<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Spring Note</title>
<%@ include file="/WEB-INF/resources/component/links_file.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/resources/component/nav.jsp" %>
 <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card bg-success text-white rounded">
                        <div class="card-header text-center fs-3">Registration Form</div>
                        <b class="fs-bol text-center pt-1 bg-warning">Registration successfull.</b>
                        <div class="card-body">
                            <form>
                                <div class="mb-3">
                                  <label for="name" class="form-label">Your Full Name</label>
                                  <input type="email" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter your full Name">
                                  
                                </div>
                                <div class="mb-3">
                                  <label for="email" class="form-label">Email address</label>
                                  <input type="email" class="form-control" id="email"  placeholder="Enter your email address">
                                </div>
                                <div class="mb-3">
                                  <label for="password" class="form-label">Password</label>
                                  <input type="password" class="form-control" id="password" placeholder="Enter password">
                                </div>
                                <div class="mb-3">
                                  <label for="highest-education" class="form-label">Password</label>
                                  <input type="text" class="form-control" id="highest-education" placeholder="BSc in CSE or BA in English">
                                </div>
                                
                                <div class="mb-3 form-check">
                                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">Agreed on Terms and Condition.</label>
                                </div>
                                <button type="submit" class="btn btn-outline-warning btn-success mb-2" >Registration</button>
                              </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="refer-page">
            <p>Do you have an account? Go to </p>
            <a href="user-login">Login</a> Page
        </div>
</body>
</html>