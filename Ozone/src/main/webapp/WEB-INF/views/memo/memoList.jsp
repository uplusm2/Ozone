<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link href="/front/hyunWoo/header/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="/front/hyunWoo/header/css/bootstrap.css" rel="stylesheet">
    <title>"memo"</title>
    
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
        font-size : 30px;
        color : #C9C9C9;
        margin-left : 17px;
        opacity: 0.7;
        height : 75px;
        width : 75px;
        padding-top : 25px;
        border-bottom : 1px solid white;
    }

    .icon:hover{
       opacity: 1;
       color:#777;
    }
    .content{
        margin-right : 120px;
        padding-top: 3%;
    }
    .buttons{
        padding-left: 25%;
        padding-top: 5%;
    }
    .buttons input:nth-child(n+3){
        margin-left: 30%;
    }
    .list{
        background-color: white;
        padding:3%;
        margin-left: 15%;
        width: 85%;
        border-radius: 3%;
    }
    .pagination{
        margin-left: 40%;
    }
    .table.table-hover tr:nth-child(n+3){
        cursor: pointer;
    }
    .btn.btn-default{
        margin-left: 3%;
        margin-bottom: 1.5%;
    }
    .btn.btn-default.search{
        margin-left: 45%;
    }
    .bi.bi-calendar2-event.icon{
            color: #9bacff;
    }
</style>
</head>
<body>
    <div class = "header">
        <div class="bi bi-list icon" onclick = ""></div>
        <div class="bi bi-calendar2-event icon" onclick = "http://127.0.0.1:5500/front/HyunWoo/calendar.html"></div>
        <div class="bi bi-envelope icon" onclick = ""></div>
        <div class="bi bi-window-sidebar icon" onclick = ""></div>
        <div class="bi bi-file-earmark-check icon" onclick = ""></div>
        <div class="bi bi-folder2 icon" onclick = ""></div>
        <div class="bi bi-card-list icon" onclick = ""></div>
        <div class="bi bi-person-video2 icon" onclick = ""></div>
    </div>
    <div class = "content">
        
        <div class="list">
            <table class="table table-hover">
                <tr>
                    <input type="button" value="개인 일정" class="btn btn-default" onclick="location.href='http://127.0.0.1:5500/front/HyunWoo/calendar.html';">
                    <input type="button" value="메모 작성" class="btn btn-default" onclick="location.href='http://127.0.0.1:5500/front/HyunWoo/memoAdd.html';">
                    <input type="button" value="메모 리스트" class="btn btn-default" onclick="location.href='http://127.0.0.1:5500/front/HyunWoo/memoList.html';">
                    <span class="btn btn-default search"> <input type="text" name="search"> <input type="button" value="🍳"></span>
                </tr>
                <tr>
                    <th>No.</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>날짜</th>
                    <th>작성자</th>
                </tr>
                <tr onclick="location.href='http://127.0.0.1:5500/front/HyunWoo/memoDetail.html'">
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr onclick="location.href='http://127.0.0.1:5500/front/HyunWoo/memoDetail.html'">
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr onclick="location.href='http://127.0.0.1:5500/front/HyunWoo/memoDetail.html'">
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
            </table>
            <hr>
            <nav aria-label="Page navigation">
                <ul class="pagination">
                  <li class="page-item"><a class="page-link" href="#"><</a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">></a></li>
                </ul>
            </nav>
        </div>
    </div>
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
    <script src="/front/hyunWoo/header/js/bootstrap.min.js"></script>
</body>
</html>