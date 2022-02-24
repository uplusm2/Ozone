<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">
<head>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>업무 요청</title>
	<%@ include file="/WEB-INF/views/project/header.jsp" %>
	<style>
	
	</style>
</head>
<body>
	<!--  -->
	<main>
		<h1 align="center">업무 요청</h1>
		
		<form method="POST" action="/ozone/file/addok.do" enctype="multipart/form-data">
		<div align="center">
		<table border width="1000">
			<tr>
				<th>수신자</th>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="boardtitle" required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="boardcontent" required></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="attach"></td>
			</tr>
			
		</table>
		</div>

		<input type="hidden" name="senduserseq" value="1">
		<input type="hidden" name="receiveuserseq" value="4">
		
		<div align="center">
			<input type="submit" value="글쓰기">
		</div>
		</form>
		
	</main>
	
	<script>
	
	</script>
</body>
</html>

















