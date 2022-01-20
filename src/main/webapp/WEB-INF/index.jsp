<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Books API</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1 style="margin-top:40px; margin-left:100px">All Books</h1>
	<div>	
		<div style="text-align:center; width:75%; margin-top:10px;margin-left:100px;border:solid"class="cantainer mt-4">
			
			<table class="table table-striped">
				<thead>
					<tr>
						<td>ID</td>
						<td>Title</td>
						<td>Language</td>
						<td># of Pages</td>
					</tr>
				</thead>
				<tbody>
						<c:forEach var="book" items="${books}">
					<tr>
							<td><a href="/api/books/${book.id}">${book.title}</a></td>
							<td>${book.language}</td>
							<td>${book.numOfPages}</td>
					</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
	</div>	
</body>
</html>