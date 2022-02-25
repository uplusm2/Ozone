<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<nav class="content-sidebar">
    <div class="sidebar-btn">
        <input class="btn btn-primary" type="button" value="메일쓰기" onclick="location.href='/mail/sendmail';">
        <input class="btn btn-default" type="button" value="내게쓰기">
    </div>
    <ul class="sidebar-menu">
        <li onclick="">전체메일함</li>
        <li onclick="location.href='/mail/inmail'">받은메일함</li>
        <li onclick="location.href='/mail/outmail'">보낸메일함</li>
        <li onclick="">내게쓴메일함</li>
        <li onclick="">휴지통</li>
    </ul>
</nav>