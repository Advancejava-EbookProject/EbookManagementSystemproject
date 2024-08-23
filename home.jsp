<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Home</title>
<%@include file="allCss.jsp"%>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-4">
<div class="card">
<div class="card-body text-center">
<i class="fas fa-plus-square fa-3x text-primary"></i><br>
<h4>Add Books</h4>
</div>
</div>
</div>
<div class="col-md-4">				
<div class="card">
<div class="card-body text-center">
<i class="fab fa-buromobelexperte fa-3x text-primary"></i><br>
<h4>Category</h4>
</div>
</div>
</div>
<div class="col-md-4">
				
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-danger"></i></i><br>
							<h4>All Books</h4>
							
						</div>
					</div>				
			</div>
			<div class="col-md-4 mt-3">
				
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-warning"></i><br>
							<h4>Orders</h4>
							
						</div>
					</div>				
			</div>
			<div class="col-md-4 mt-3">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-file-signature fa-3x text-danger"></i><br>
							<h4>Review</h4>
							
						</div>
					</div>
			</div>
	<div class="col-md-4 mt-3">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
							<h4>Logout</h4>
						</div>
					</div>
				</a>
			</div>
			
</div>
</div>
</body>
</html>