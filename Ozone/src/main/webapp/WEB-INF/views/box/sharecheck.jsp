<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="layout/main.css">
    <link rel="stylesheet" href="layout/header.css">

    <style>
    .header{
    float : left;
    width : 120px;
    height : 100%;
    background-color :  #023E8A ;
    text-align: center;
    
}

.header .icon{
    font-size : 30px;
    color : white;
    text-align: center;
    opacity: 0.7;
    height : 75px;
    width : 75px;
    padding-top : 25px;
    border-bottom : 1px solid white;
    margin-left : 20px;
}
html, body{
    height : 100%;
    width : 100%;
    padding : 0px;
    margin : 0px;
}


.title{
    position : relative;
    width : 100%;
    height : 10%;
    border-bottom : 1px solid #aaaaaa;
    vertical-align: middle;
    padding-left : 50px;
    font-size : 20px;
    margin-right : 0;
    overflow : hidden;
    
 }

 .titlename{
     display: table-cell;
     vertical-align: middle;
     /* border : 1px solid black; */
     height : 100px;
     width : 100px;
 }

 .icon:hover{
    opacity: 1;
 }


 .sidebar{
     border-right : 2px solid #023E8A;
     width : 180px;
     height : 90%;
     background-color : white;
     float : left;
 }

 .container{
     margin-left : 120px;
     margin-right : 0;
     padding-left : 0;
     padding-right : 0;
     height : 100%;
     width : 100%;
 }

 ul{
     padding-left : 0px;
     padding-top : 20px;
 }


 li{
     padding : 30px;
     padding-bottom: 40px;
     text-align: center;
 }


 li:hover{
     text-decoration: underline;
     font-weight : bold;
 }


 .menu{
     list-style-type: none;
 }


 .box{
    width : auto;
    height : auto;
 }


 table{
     width : 1300px;
     height : 600px;
     margin-left : 250px;
     margin-top : 70px;
 }


 th{
    padding: 10px;
    font-weight: bold;
    vertical-align: middle;
    color: #369;
    border-bottom: 3px solid #036;
    
 }

 table tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: middle;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
  }
 
  table td {
    width: 350px;
    padding: 10px;
    vertical-align: middle;
    border-bottom: 1px solid #ccc;
  }

  .main-table thead #name{
      text-align : center;
      width : auto;
  }

  .main-table thead #extra{
    width : auto;
  }

  .main-table thead #seq{
    width : 20px;
  }

  .main-table thead #subject{
    width : 800px;
  }
  

  .btncon{
    float : right;
    margin-top : 30px;
    margin-right : 300px;
  };

  .btn{
      width :70px;
      height : 40px;
      background-color: #369;
      color : white;
      border : 1px solid white;
      border-radius: 20px;
      font-size : 15px;
      cursor : pointer;
  }


  .tle{
      font-size : 30px;
      color : #036;
      border-bottom : 1px solid #369;
      width : 250px;
      float : left;
      margin-left : 30px;
      margin-top : 30px;
      height : 50px;
  }
        .box{
            margin-top : 200px;
            margin-left : 700px;
            
        }

        .box .content{
            
            width : 500px;
            height : 300px;
            border : 1px solid black;
            text-align: center;
            border-radius: 20px;
            
        }

        .box .a{
            font-size : 30px;
            margin-top : 100px;
        }

        .btn{
            width :70px;
            height : 40px;
            background-color: #369;
            color : white;
            border : 1px solid white;
            border-radius: 20px;
            font-size : 15px;
            cursor : pointer;
            margin-top : 20px;
        }

    </style>

</head>
<body>
    <div class = "header">
        <div class="bi bi-list icon" onclick = ""></div>
        <div class="bi bi-calendar2-event icon" onclick = ""></div>
        <div class="bi bi-envelope icon" onclick = ""></div>
        <div class="bi bi-window-sidebar icon" onclick = ""></div>
        <div class="bi bi-file-earmark-check icon" onclick = ""></div>
        <div class="bi bi-folder2 icon" onclick = ""></div>
        <div class="bi bi-card-list icon" onclick = ""></div>
        <div class="bi bi-person-video2 icon" onclick = ""></div>
    </div>
    <div class = "container">
        <div class = "title">
            <div class="titlename">보관함</div>
        </div>
        <div class = "sidebar">
            <ul class= "menu">
                <li onclick = "location.href='box'">개인보관함</li>
                <li onclick = "location.href='sharebox'">공개보관함</li>
                <li onclick = "location.href='imagebox'">사진 보관함</li>
                <li onclick = "location.href='documentbox'">문서 보관함</li>
            </ul>
        </div>
        <div class="box">
            <div class= "content">
                <div class = "a">공개하시겠습니까?</div>

                <input type="button" class = "btn btn-check" value="공개" onclick="location.href='view-share'">
                <input type="button" class = "btn btn-check" value="취소" onclick = "history.back()">
            </div>
        </div>    
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
    <script src="layout/js/bootstrap.min.js"></script>
</body>
</html>