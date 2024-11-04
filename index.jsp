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
background-color:#0077b6;
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
    <h2>Epic Reads</h2>
    <p>Dive into a universe of stories that will blow your mind!</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-custom" src="img/slider1.avif" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
    <h2>Explore a new world with books</h2>
    <p>Join the Book Revolution</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-custom " src="img/slider3.jpeg" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
    <h2>Bookish Adventures Awaits!</h2>
    <p>Unleash Your Inner Bookworm Today!</p>
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
<h3 class="text-center">Recent Books</h3>
<div class="row">
<%
BookDAOImpl dao2 =new BookDAOImpl(DBConnect.getConn());
 List<BookDtls>list2=dao2.getRecentBooks();
 for(BookDtls b:list2)
 {%>
<div class="col-md-3">
<div class="card crd-ho paint-card">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>
<%
if(b.getBookCategory().equals("old")){
%>
Categories:<%=b.getBookCategory() %></p>
<div class="row">
<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-outline-dark btn-sm ml-5">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1"><i class="fas fa-rupee-sign"></i><%=b.getPrice() %></a>
</div>	
<% }else{
%>
	Categories:<%=b.getBookCategory()%>
<div class="row">
<% if (u==null){%>
	<a href="login.jsp" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<% }else{%>
	<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<% }
	%>
<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm "><i class="fas fa-rupee-sign"></i><%=b.getPrice() %></a>
</div>

<% }
%>
</div></div></div>
 <% }
 %>
<div class=" text-center mt-1 ">
<a href="all_recent_book.jsp" class="btn btn-primary btn-sm text-white">View all</a>
</div>
</div>
</div>

<hr>

<div class="container">
<h3 class="text-center">New books</h3>
<div class="row">
<%
BookDAOImpl dao =new BookDAOImpl(DBConnect.getConn());
 List<BookDtls>list=dao.getNewBook();
 for(BookDtls b:list)
 {%>
 <div class="col-md-3">
	 <div class="card crd-ho paint-card">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>"style="width: 150px; height: 200px" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Categories:<%=b.getBookCategory() %></p>
<div class="row">
<% if (u==null){%>
	<a href="login.jsp" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<% }else{%>
	<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<% }
	%>
<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1"><i class="fas fa-rupee-sign"></i><%=b.getPrice() %></a>
</div>
</div></div></div>	 
 <% 
 }
%></div>
<div class=" text-center mt-1">
<a href="all_new_book.jsp" class="btn btn-primary btn-sm text-white">View all</a>
</div>
</div>

<hr>

<div class="container">
<h3 class="text-center">Old books</h3>
<div class="row">
<%
BookDAOImpl dao3 =new BookDAOImpl(DBConnect.getConn());
 List<BookDtls>list3=dao3.getOldBooks();
 for(BookDtls b:list3)
 {%>
<div class="col-md-3">
<div class="card crd-ho paint-card">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>"style="width: 150px; height: 200px" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p><%=b.getBookCategory()%></p>
<div class="row">
<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-outline-dark btn-sm ml-4">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-4"><i class="fas fa-rupee-sign"></i><%=b.getPrice() %></a>
</div>
</div></div></div>

 <% }
 %>
 </div></div>
<div class="text-center mt-1">
<a href="all_old_book.jsp" class="btn btn-primary btn-sm text-white">View all</a></div>
<br>
<%@include file="all_component/footer.jsp"  %>  

</body>
</html>