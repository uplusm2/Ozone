<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
        html, body{
            height : 100%;
            width : 100%;
            padding : 0px;
            margin : 0px;
            background-color:#F5F8FF ;
        }

        .header{
            float : left;
            width : 120px;
            height : 100%;
            background-color :  white ;
            text-align: center;
        }

        .header .icon{
            font-size : 50px;
            color : #C9C9C9;
            margin-left : 17px;
            opacity: 0.7;
            height : 75px;
            width : 75px;
            margin-top:25%;
            padding-top : 25xp;
            border-bottom : 1px solid white;
        }

        .icon:hover{
            opacity: 1;
            color:#777;
           	cursor: Pointer;
        }
        
</style>
<div class = "header">
        <div class="bi bi-list icon" onclick = "location.href='/ozone';"></div>
        <div class="bi bi-calendar2-event icon" onclick = "location.href='/calendar';"></div>
        <div class="bi bi-envelope icon" onclick = "location.href='/mail/inmail';"></div>
        <div class="bi bi-window-sidebar icon" onclick = "location.href='/project/column';"></div>
        <div class="bi bi-file-earmark-check icon" onclick = ""></div>
        <div class="bi bi-folder2 icon" onclick = ""></div>
        <div class="bi bi-card-list icon" onclick = ""></div>
        <div class="bi bi-person-video2 icon" onclick = ""></div>
</div>