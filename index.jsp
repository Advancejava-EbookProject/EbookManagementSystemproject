<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
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
.crd-ho:hover{
background-color:#d1d2eb;
}
.paint-card {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
.carousel-item {
    height: 500px; 
}
.img-custom {
    height: 100%; 
    width: 100%; 
    object-fit: cover;
}
</style>
</head>
<body style="background-color:#e0dcd7;">
<%
	User u = (User) session.getAttribute("userobj");
	%>

<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block img-custom w-100" src="img/slider2.avif" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
    <h5>Explore a new world with books</h5>
    <p>...</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-custom" src="img/slider1.avif" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
    <h5>Explore a new world with books</h5>
    <p>...</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-custom " src="img/slider3.jpeg" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
    <h5>Explore a new world with books</h5>
    <p>...</p>
  </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
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
<a href="" class="btn btn-outline-secondary btn-sm"> <i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho ">
<div class="card-body text-center">
<div class="bg-image hover-zoom">
<img alt="" src="book/b4.jpg" class="w-90">
</div>
<p>The Stranger</p>
<p>Albert Camus</p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">500</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>
</div></div></div>
</div><div class="text-center mt-1">
<a href="" class="btn btn-primary btn-sm text-white">View all</a></div></div>
<hr>
<div class="container">
<h3 class="text-center">New books</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>
</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>
</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>
</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>
</div></div></div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-primary btn-sm text-white">View all</a></div></div>
<hr>
<div class="container">
<h3 class="text-center">Old books</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-dark btn-sm ml-5">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-dark btn-sm ml-5">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">
<a href="" class="btn btn-outline-dark btn-sm ml-5">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>

</div></div></div>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/b1.jpg" class="img-thumblin">
<p>Hobbit and Lord of the Rings</p>
<p>J.R.R Tolkein</p>
<div class="row">

<a href="" class="btn btn-outline-dark btn-sm ml-5">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1">1200</a>
</div>

</div></div></div>

</div><div class="text-center mt-1">
<a href="" class="btn btn-primary btn-sm text-white">View all</a></div></div><br>
<%@include file="all_component/footer.jsp" %>
</body>
</html>