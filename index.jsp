<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EbookIndex</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
.back-img{
background-image:url("img/b.jpg");
height: 60vh;
width: 100%;
background-repeat: no-repeat;
background-size: cover;
}
.crd-ho:hover{
background-color:#d1d2eb;
}
</style>
</head>
<body style="background-color:#e0dcd7;">
<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
<h2 class="text-center text-danger">EBook Management System</h2>
</div>

<div class="container">
<h3 class="text-center">Best selling Books</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"> <i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b4.jpg" class="img-thumblin">
<p>The Stranger</p>
<p>Albert Camus</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">500</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>
</div></div></div>
</div><div class="text-center mt-1">
<a href="" class="btn btn-success btn-sm text-white">View all</a></div></div>
<hr>
<div class="container">
<h3 class="text-center">New books</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>
</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>
</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>
</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>
</div></div></div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-success btn-sm text-white">View all</a></div></div>
<hr>
<div class="container">
<h3 class="text-center">Old books</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="/books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="books/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">

<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">1200</a>
</div>

</div></div></div>

</div><div class="text-center mt-1">
<a href="" class="btn btn-success btn-sm text-white">View all</a></div></div><br>
<%@include file="all_component/footer.jsp" %>
</body>
</html>