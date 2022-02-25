<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="send-mail">
    <form method="POST" action="/mail/sendok" enctype="multipart/form-data">
        <input type="submit" value="보내기" class="btn btn-primary btn-send">
        <hr>
        <label for="sender">받는사람</label>
        <input type="text" name="sender" class="form-control" value="youme1234@naver.com"><br>
        <label for="reference">참조</label>
        <input type="text" name="reference" class="form-control"><br>
        <label for="subject">제목</label>
        <input type="text" name="subject" class="form-control"><br>
        <label for="file">파일첨부</label>
        <input type="file" name="file">
        <textarea class="summernote" name="content"></textarea>
    </form>
</div>
