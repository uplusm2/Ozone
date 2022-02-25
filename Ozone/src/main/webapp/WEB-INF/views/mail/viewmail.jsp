<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="view-mail">
	<input type="button" class="btn btn-default" value="삭제">
    <input type="button" class="btn btn-default" value="스팸차단">
    <input type="button" class="btn btn-default" value="전달">
    <input type="button" class="btn btn-default" value="답장" onclick="location.href='/mail/sendmail?id=youme1234@naver.com'">
    <input type="button" class="btn btn-default" value="이동">
    <input type="button" class="btn btn-default" value="읽음">
    <hr>
    <div class="view-mail-content">
		<label for="sender">보낸사람</label>
		<span>이유미&lt;youme1234@naver.com&gt;</span><br>
		<label for="reference">참조</label>
		<span>이혜인&lt;hyein111@gmail.com&gt;, </span><span>주하성&lt;hasung@naver.com&gt;</span><br>
		<label for="title">제목</label>
		<span>안녕하세요 이유미입니다</span>
		<div style="border: 1px solid #999; height: 300px; padding: 20px;">안녕하세요 이유미입니다.</div>    
    </div>
</div>