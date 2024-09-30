<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All new Book</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #cdb4db;
}
.paint-card {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
	
		<div class="row p-3">
			<%
BookDAOImpl dao =new BookDAOImpl(DBConnect.getConn());
 List<BookDtls>list=dao.getNewBook();
 for(BookDtls b:list){
 %>
 <div class="col-md-3">
	 <div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>"style="width: 100px; height: 150px" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Categories:<%=b.getBookCategory() %></p>
<div class="row">
<a href="" class="btn btn-outline-secondary btn-sm"><i class="fas fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-outline-dark btn-sm ml-1">View Details</a>
<a href="" class="btn btn-outline-info btn-sm ml-1"><i class="fas fa-rupee-sign"></i><%=b.getPrice() %></a>
</div>
</div></div></div>
	 
 <% 
 }
%>
		</div>
	</div>
</body>
</html>
