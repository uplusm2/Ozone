<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>OZONE</title>
   <link rel="stylesheet" href="css/main.css">
   <link rel="stylesheet" href="css/bootstrap.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
   <script src="js/jquery-1.12.4.min.js"></script>
   <script src="js/script.js"></script>
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
   <div class="wrap">
      <section class="project-detail">
         <h1>고구마켓</h1>
         <i class="hover bi bi-three-dots"></i>
         <i class="update bi bi-eraser"></i>
         <i class="update bi bi-trash"></i>
         <table>
            <tr>
               <td><i class="bi bi-people-fill"></i>Member</td>
               <td><img src="img/kakao.png">카카오</td>
               <td><img src="img/google.png">구글</td>
               <td><img src="img/KakaoTalk_20220104_002701045.png">이유미</td>
               <td><img src="img/오 현우님.png">황현우</td>
               <td><img src="img/터진 헤인님.png">이혜인</td>
            </tr>
            <tr>
               <td><i class="bi bi-caret-down-fill"></i>Status</td>
               <td colspan="10"><span class="status not-started">Not Started</span></td>
            </tr>
            <tr>
               <td><i class="bi bi-bookmarks"></i>Priority</td>
               <td colspan="10"><span class="priority middle">Middle</span></td>
            </tr>
            <tr>
               <td><i class="bi bi-clock"></i>Date Created</td>
               <td colspan="10">Feb 22, 2022 5:30PM</td>
            </tr>
            <tr>
               <td><i class="bi bi-calendar-check"></i>Due Date</td>
               <td colspan="10">Feb 22, 2022</td>
            </tr>
            <tr>
               <td colspan="10">Description</td>
            </tr>
            <tr>
               <td colspan="10">고구마켓은 Servlet과 JSP로 구현한 중고거래 웹사이트입니다. </td>
            </tr>
            <tr>
               <td colspan="10">To-do</td>
            </tr>
            <tr class="to-do">
               <td colspan="10"><input type="checkbox" name="check1" id="check1"><label for="check1">프론트엔드 꾸미기</label></td>
            </tr>
            <tr class="to-do">
               <td colspan="10"><input type="checkbox" name="check2" id="check2"><label for="check2">백엔드 형상관리 제대로 하기</label></td>
            </tr>
         </table>
      </section>
   </div>
</body>
</html>