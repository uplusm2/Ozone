<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">
<head>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>보낸요청함</title>
	<%@ include file="/WEB-INF/views/project/header.jsp" %>
	<style>
	
	#ccc {
		margin-top: 50px;
	}
	
	</style>
</head>
<body>
	<!--  -->
	<main>
		<div align="center">
			<h1>보낸 요청함</h1>
		</div>
		<div align="center">
		<table border width="1000">
			<tr>
				<th>번호</th>
				<th>수신자</th>
				<th>제목</th>
				<th>내용</th>
				<th>첨부파일</th>
			</tr>
			<c:forEach items="${list}" var="dto">
			<tr>
				
				<td>${dto.boardseq}</td>
				<td>권과장</td>
				<td>${dto.boardtitle}</td>
				<td>${dto.boardcontent}</td>
				
				<td>
					<a href="/ozone/file/download?orgfilename=${dto.ofilename}&filename=${dto.filename}">
						${dto.ofilename}
					</a>
				</td>
				
			</tr>
			</c:forEach>
		</table>
		
		</div>
		
		
		<div id="ccc" align="center">
			<input type="button" value="업무 요청" onclick="location.href='/ozone/file/add';">
			<input type="button" value="받은 요청함" onclick="location.href='/ozone/file/rlist';">
		</div>
		
	</main>
	
	
</body>
</html>































