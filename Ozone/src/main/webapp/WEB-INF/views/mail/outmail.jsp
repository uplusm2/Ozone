<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<div class="mail-menu">
    <input type="checkbox" name="cbAll">
    <input type="button" class="btn btn-default" id="btnDel" value="삭제">
    <input type="button" class="btn btn-default" value="스팸차단">
    <input type="button" class="btn btn-default" value="전달">
    <input type="button" class="btn btn-default" value="답장">
    <input type="button" class="btn btn-default" value="이동">
    <input type="button" class="btn btn-default" value="읽음">

    <div class="search">
        <form>
            <input type="text" name="word" class="form-control word" placeholder="메일 검색" required
                autocomplete="off">
            <button type="submit" class="btn btn-search"><i class="bi bi-search"></i></button>
            <input class="btn btn-search-detail" type="button" value="상세">
        </form>
    </div>

    <div class="search-detail" id="searchDetail">
        <form>
            <fieldset>
                <label>보낸사람</label>
                <input type="text" class="form-control">
                <label>받는사람</label>
                <input type="text" class="form-control">
                <label>참조</label>
                <input type="text" class="form-control">
                <label>제목</label>
                <input type="text" class="form-control">
                <label>내용</label>
                <input type="text" class="form-control">
                <label>기간</label>
                <input type="date" class="form-control">
                <input type="date" class="form-control">
                <input type="submit" class="btn btn-default form-control">
            </fieldset>
        </form>
    </div>
</div>

<table class="table table-hover mail-list" id="mailTable">
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope"></i></td>
        <td>이유미</td>
        <td>반갑습니다.</td>
        <td id="currentDate">22.02.14 22:36</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope"></i></td>
        <td>김철수</td>
        <td>안녕하세요~</td>
        <td id="currentDate">22.02.14 22:36</td>
    </tr>
</table>

<nav class="mail-pagination">
    <ul class="pagination">
        <li>
            <a href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <li><a href="#">1</a></li>
        <li>
            <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>

<script>
date = new Date();
year = date.getFullYear();
month = date.getMonth() + 1;
day = date.getDate();
hours = date.getHours();
minutes = date.getMinutes();
document.getElementById("currentDate").innerHTML = hours + ":" + minutes;



$('#btnDel').on('click', function() {
	$('#mailTable').html("<tr><td colspan='5' style='text-align:center'>메일함이 비었습니다.</td></tr>");
});

</script>