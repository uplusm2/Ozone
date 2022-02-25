<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<div>
	<h1>메일을 성공적으로 보냈습니다</h1>
    <input type="button" class="btn btn-default" value="받은메일함" onclick="location.href='/mail/outmail'">
	<input type="button" class="btn btn-default" value="보낸메일함" onclick="location.href='/mail/outmail'">
</div>