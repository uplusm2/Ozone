<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>OZONE</title>
   <link rel="stylesheet" href="<%= root %>/resources/css/main.css">
   <link rel="stylesheet" href="<%= root %>/resources/css/jquery-ui.css">
   <link rel="stylesheet" href="<%= root %>/resources/css/bootstrap.css">
   <link rel="stylesheet" href="<%= root %>/resources/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
   <link href='<%= root %>/resources/fullcalendar-5.10.2/lib/main.css' rel='stylesheet' />
   <script src='<%= root %>/resources/fullcalendar-5.10.2/lib/main.js'></script>
   <script src="<%= root %>/resources/js/jquery-1.12.4.min.js"></script>
   <script src="<%= root %>/resources/js/jquery-ui.js"></script>
   <script src="<%= root %>/resources/js/bootstrap.min.js"></script>
   
</head>
   <style>
	@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Black+Han+Sans&family=Gothic+A1:wght@300;400;500;600;700;800;900&family=Gowun+Dodum&family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&family=Josefin+Sans:ital,wght@0,700;1,700&family=Jua&family=Nanum+Gothic:wght@700;800&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@400;500;700&family=Rubik&display=swap');
	
	/* reset */
	* {margin: 0; padding: 0;}
	html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, tbody, tfoot, thead, tr, th, td {margin:0; padding:0;}
	a { color: inherit; text-decoration: none;}
	li {list-style: none;}
	address, em, i { font-style: none;}
	h1, h2, h3, h4, h5, h6 { font-size: inherit; }
	a:hover {text-decoration: none; color: inherit; }  
	
	
	 /* layout  */
	body {
		/* font-family: 'Noto Sans KR', sans-serif; */
	   font-family: 'IBM Plex Sans KR', sans-serif;
		font-size: 18px; 
		font-weight: 500; 
	   color: #5C6F7E;
	   background: #F5F8FF;
	   /* background: #fff; */
	   z-index: -2;
	   position: relative;
	}
	/* body{ 
	   -ms-overflow-style: none; 
	} 
	::-webkit-scrollbar { 
	   display: none; 
	} */
	section {
	   width: 1200px;
		margin: 60px auto;
	}
	.wrap {
	   background: #F5F8FF;
	   /* background: #Fff; */
	   /* width: 100%; */
	   overflow: hidden;
	   height: 100vh;
	   position: relative;
	   z-index: -1;
	}
	html, body{
	   height : 100%;
	   width : 100%;
	   padding : 0px;
	   margin : 0px;
	}
	.header{
	   float : left;
	   width : 65px;
	   height : 100%;
	   background-color :  #fff ;
	   /* background: #F5F8FF; */
	   text-align: center;
	   /* padding-top: 20px; */
	}
	.header .icon{
	   font-size : 35px;
	   color : #C9C9C9;
	   margin-left : -5px;
	   opacity: 0.6;
	   height : 75px;
	   width : 75px;
	   padding-top : 15px;
	   margin-bottom: 0px;
	   border-bottom : 1px solid white;
	}
	.header .icon.project {
	   opacity: 1;
	   color: #9bacff;
	}
	.icon:hover{
	  opacity: 1;
	  color: #9bacff;
	}
	
	/* header */
	header h1 {
	   margin-top: 220px;
	   font-size: 70px;
	   font-weight: 700;
	   color: #6CA1FD;
	   background: #F5F8FF;
	   text-align: center;
	}
	
	/* basic */
	.basic {
	   text-align: center;
	}
	.basic div {
	   margin: 10px auto;
	   width: 360px;
	   border: 1px solid #C9C9C9;
	   border-radius: 5px;
	   font-size: 20px;
	}
	.basic input {
	   border: 0;
	   padding-left: 10px;
	   width: 300px;
	   height: 50px;
	}
	.basic input:focus {
	   outline: 0;
	}
	.basic i {
	   position: relative;
	   top: 5px;
	   left: 3px;
	   font-size: 31px;
	   margin: 9px;
	   color: #5C6F7E;
	}
	.basic .login {
	   width: 370px;
	   height: 60px;
	   border-radius: 30px;
	   background: #6CA1FD;
	   color: #fff;
	   font-size: 30px;
	   font-weight: 700;
	   padding: 7px 0 5px 0;
	   margin-top: 40px;
	}
	
	
	/* simple */
	.simple {
	   text-align: center;
	   z-index: -2;
	}
	.simple .simple-login {
	   margin: 0 auto;
	   position: relative;
	   content: '';
	   border-top: 1px solid #000;
	   width: 280px;
	   height: 300px;
	   padding-top: 40px;
	   top: 10px;
	}
	.simple h2 {
	   position: relative;
	   top: 25px;
	   font-size: 25px;
	   color: #5C6F7E;
	   font-weight: 700;
	   background: #F5F8FF;
	   /* border: 1px solid #000; */
	   margin: 0 auto;
	   width: 80px;
	   z-index: 1;
	}
	.simple .simple-login img {
	   width: 50px;
	   height: 50px;
	   border-radius: 50px;
	   margin: 0px 25px;
	}
	.simple .simple-login img:first-child {
	   margin-left: 0px;
	}
	.simple .simple-login img:last-child {
	   margin-right: 0px;
	}
	
	
	/* 프로젝트 칼럼 */
	.project-column {
	   color: #5C6F7E;
	   font-family: 'IBM Plex Sans KR', sans-serif;
	   width: 1300px;
	   height: 900px;
		margin: 60px 0px 0px 100px;
	   border-radius: 10px;
	   /* margin-top: 100px; */
	   padding: 40px 20px 0px 30px;
	   z-index: -2;
	   position: relative;
	   /* left: 0; */
	   font-weight: 700;
	}
	.project-column i {
	   margin-right: 5px;
	   margin-left: 5px;
	}
	.project-column i.bi-chevron-down {
	   font-size: 12px;
	}
	.column-select {
	   font-weight: 500;
	   position: absolute;
	   left: 90px;
	   background: #fff;
	   font-size: 15px;
	   width: 120px;
	   text-align: center;
	   border-radius: 5px;
	   z-index: 1;
	   border: 1px solid #
	}
	.column-select li {
	   margin: 3px;
	   cursor: pointer;
	}
	.project-column img {
	   width: 30px;
	   height: 30px;
	   border-radius: 20px;
	   margin: 5px 2px 10px 0px;
	}
	.project-select {
	   margin: 10px 55px;
	   font-size: 18px;
	   cursor: pointer;
	}
	.project-select select{
	   position: relative;
	   top: 0;
	   left: 0;
	   border: 0;
	   background: #F5F8FF;
	   left: -3px;
	   font-weight: 700;
	}
	.project-column .project-select select{
	   /* background: #fff; */
	}
	.project-column .column {
	   float: left;
	   width: 250px;
	   height: 700px;
	   margin: 0 30px;
	   position: relative;
	   border-radius: 10px;
	   /* background: #F5F8FF; */
	}
	.project-column div.state {
	   color: #fff;
	   height: 35px;
	   line-height: 35px;
	   font-size: 22px;
	   /* font-weight: 700; */
	   text-align: center;
	   border-radius: 10px;
	   margin: 10px 30px;
	   margin-top: 30px;
	   /* box-shadow: 3px 3px 2px #9bacff42; */
	   text-shadow: 1px 1px 1px #ddd;
	   width: 250px;
	   float: left;
	   position: relative;
	   /* z-index: 1; */
	}
	.project-column .no-state {
	   background: #919192;
	}
	.project-column .state::before {
	   content: '';
	   position: absolute;   
	   left: -10px;
	   top: -10px;
	   /* width: 270px; */
	   /* height: 700px; */
	   border-radius: 10px;
	   background: #91919217;
	   /* background: #9bacff17; */
	   z-index: -1;
	}
	.project-column .not-started {
	   background: #749FFE;
	}
	.project-column .not-started::before {
	   background: #749FFE17;
	}
	.project-column .in-progress {
	   background: #FF738E;
	}
	.project-column .in-progress::before {
	   background: #FF738E17;
	}
	.project-column .completed {
	   background: #FE9E62;
	}
	.project-column .completed::before {
	   background: #fe9e6217;
	}
	.project-column .column ul {
	   border: 1px solid #E0E0E0;
	   /* border: 1px solid #9bacff93; */
	   /* background: #dbdcdf10; */
	   background: rgb(255, 255, 255);
	   height: 95px;
	   padding: 10px;
	   padding-left: 18px;
	   border-radius: 10px;
	   margin-top: 15px;
	   box-shadow: 2px 2px 2px #9bacff42;
	   z-index: 2;
	}
	.project-column .column-no-state ul {
	   /* background: #91919208; */
	   /* border: 1px solid #919192; */
	   /* box-shadow: 2px 2px 2px #91919234; */
	   /* box-shadow: 2px 2px 2px #91919234; */
	}
	.project-column .column-not-started ul {
	   /* background: #749FFE08; */
	   /* border: 1px solid #749FFE; */
	   /* box-shadow: 2px 2px 2px #91919234; */
	   /* box-shadow: 2px 2px 2px #749FFE34; */
	}
	.project-column .column-in-progress ul {
	   /* background: #FF738E08; */
	   /* border: 1px solid #FF738E; */
	   /* box-shadow: 2px 2px 2px #FF738E34; */
	}
	.project-column .column-completed ul {
	   /* background: #FE9E6208; */
	   /* border: 1px solid #fe9e6267; */
	   /* box-shadow: 2px 2px 2px #FE9E6234; */
	}
	.project-column .column ul li:first-child {
	   position: relative;
	   /* left: 58px; */
	   font-size: 17px;
	   font-weight: 600;
	   letter-spacing: 1px;
	   margin-bottom: 2px;
	}
	.project-column .column ul li:first-child span {
	   letter-spacing: 0px;
	   position: absolute;
	   right: 5px;
	   margin-left: 12px;
	   top: 3px;
	   width: 50px;
	   height: 17px;
	   line-height: 18px;
	   text-align: center;
	   font-size: 13px;
	   font-weight: 400;
	   color: #5C6F7E;
	   background: #E3ECFF;
	   border-radius: 20px;
	   /* box-shadow: 1px 1px 2px #9BABFF; */
	   /* font-family: 'Jua', sans-serif; */
	
	}
	.project-column .column ul li:first-child span.middle {
	   background: #FFECE0;
	}
	.project-column .column ul li:first-child span.high {
	   background: #FCE0E5;
	}
	.project-column .column ul li:nth-child(2) span {
	   color: #95A1A9;
	   font-size: 15px;
	   margin-left: -3px;
	}
	.project-column .column ul li:last-child {
	   font-size: 12px;
	   color: #C9C9C9;
	   position: relative;
	   font-weight: 300;
	   right: -152px;
	   bottom: 7px
	}
	.project-column .column p {
	   color: #95A1A9;
	   font-size: 19px;
	   margin: 15px;
	}
	.project-column .column ul li:last-child i {
	   position: absolute;
	   right: 0;
	   bottom: 0px;
	   font-size: 18px;
	   color: #5C6F7E;
	   opacity: 0;
	}
	.project-column .column ul:hover li:last-child i {
	   opacity: 1;
	}
	
	
	/* 칼럼 이동 */
	.project-placeholder {
	   background-color: #F5F8FF;
	   /* width: 1px; */
	   opacity: 0.4;
	}
	.project-column .title {
	   cursor: pointer;
	}
	
	/* project-calendar */
	.project-calendar {
	   position: absolute;
	   right: 130px;
	   top: 0;
	   width: 500px;
	   float: left;
	   font-size: 14px;
	   font-weight: 500;
	   /* overflow: hidden; */
	}
	.project-calendar #calendar{
	   /* width: 500px; */
	   width: 395px;
	   height: 370px;
	   position: relative;
	   right: -130px;
	}
	.project-calendar #calendar:after {
	   position: absolute;
	   right: -32px;
	   top: 55px;
	   content: '';
	   width: 50px;
	   height: 315px;
	   /* background: #fff; */
	   background: #F5F8FF;
	   border-left: 1px solid #DDDDDD;
	}
	.project-calendar .fc-scroller {
	   overflow-y: hidden !important;
	}
	.project-calendar img {
	   position: relative;
	   bottom: -120px;
	   right: -140px;
	   width: 400px;
	}
	.project-calendar .fc-toolbar-title {
	   position: relative;
	   width: 200px;
	   padding-left: 0;
	   text-align: center;
	   /* background: #000; */
	   left: 90px;
	   font-weight: 500;
	   color: #5C6F7E;
	}
	.project-calendar .fc-today-button.fc-button.fc-button-primary {
	   position: relative;
	   left: -100px;
	   opacity: 0;
	}
	.project-calendar .fc-prev-button.fc-button.fc-button-primary,
	.project-calendar .fc-next-button.fc-button.fc-button-primary {
	   position: relative;
	   left: -265px;
	   background: #F5F8FF;
	   /* background: #fff;  */
	   border: #fff;  
	   color: #DFDFDF;
	   transition: all 0.3s;
	   /* opacity: 0; */
	}
	.project-calendar .fc-prev-button.fc-button.fc-button-primary:hover,
	.project-calendar .fc-next-button.fc-button.fc-button-primary:hover {
	   color: #9BABFF;
	   transition: all 0.3s;
	   border: 0;
	}
	.project-calendar .fc-prev-button.fc-button.fc-button-primary ,
	.project-calendar .fc-next-button.fc-button.fc-button-primary {
	   border: 0px;
	}
	.project-calendar .fc-next-button.fc-button.fc-button-primary {
	   left: -77px;
	}
	.project-calendar .fc-col-header-cell-cushion {
	   color: #fff;
	   font-weight: 500;
	}
	.project-calendar .fc-col-header-cell.fc-day {
	   background: #9BACFF;
	}
	.project-calendar .fc-daygrid-day-number {
	   color: #5C6F7E;
	   cursor: pointer;
	   /* background: #F5F8FF; */
	}
	.project-calendar .fc-daygrid-day-number:hover {
	   text-decoration: none;
	}
	.project-calendar .fc-daygrid-day.fc-day {
	   /* background-color: #F5F8FF; */
	   background-color: #fff;
	}
	.project-calendar .fc-daygrid-day.fc-day.fc-day-today {
	   background-color: #fff;
	   font-weight: 700;
	}
   </style>
<body>
   <div class = "header">
      <div class="bi bi-list icon" onclick="location.href='/ozone';"></div>
      <div class="bi bi-calendar2-event icon" onclick = ""></div>
      <div class="bi bi-envelope icon" onclick = ""></div>
      <div class="bi bi-window-sidebar icon project" onclick="location.href='/project/column';"></div>
      <div class="bi bi-file-earmark-check icon" onclick = ""></div>
      <div class="bi bi-folder2 icon" onclick = ""></div>
      <div class="bi bi-card-list icon" onclick = ""></div>
      <div class="bi bi-person-video2 icon" onclick = ""></div>
   </div>
   <div class="wrap">
      <section class="project-column">
          <div class="project-select">
            <i class="bi bi-kanban"></i>By Status<i class="bi bi-chevron-down"></i>
         </div>
         <ul class="column-select">
            <li onclick="location.href='/project/column';">By Status</li>
            <li onclick="location.href='/project/board';">All Tasks</li>
         </ul>
         
         <div class="state no-state">No State</div>
         <div class="state not-started">Not Started</div>
         <div class="state in-progress">In Progress</div>
         <div class="state completed">Completed</div>
         <div class="column column-no-state">
            <ul class="project">
               <li class="title">짱기 2주 완성<span class="high">High🔥</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
               </li>
               <li>Mar 05, 2022</li>
            </ul>
            <p>+ New</p>
         </div>
         <div class="column column-not-started">
            <ul class="project">
               <li class="title">고구마켓(MVC)<span class="low">Low</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
                  <img src="<%= root %>/resources/img/우는 사람.png">
                  <img src="<%= root %>/resources/img/인사하는 노랭이.png">
                  <img src="<%= root %>/resources/img/화이팅현우.png">
                  <img src="<%= root %>/resources/img/터진 현우님.png">
                  <img src="<%= root %>/resources/img/오 혜인님.png">
                  <!-- <span>+3</span> -->
               </li>
               <li>Feb 20, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">파이널 프로젝트 오존 <span class="high">High🔥</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
                  <img src="<%= root %>/resources/img/개발자.png">
                  <img src="<%= root %>/resources/img/뿌우.png">
                  <img src="<%= root %>/resources/img/오 혜인님.png">
                  <img src="<%= root %>/resources/img/화이팅현우.png">
                  <img src="<%= root %>/resources/img/터진 헤인님.png">
               </li>
               <li>Mar 15, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">뒤지개 단기<span class="middle">Middle</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
                  <img src="<%= root %>/resources/img/연락 준영.png">
                  <img src="<%= root %>/resources/img/터진 현우님.png">
               </li>
               <li>Feb 22, 2022</li>
            </ul>
         </div>
         <div class="column column-in-progress">
            <ul class="project">
               <li class="title">교육 센터 DB 구축<span>Low</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
                  <img src="<%= root %>/resources/img/터진 헤인님.png">
                  <img src="<%= root %>/resources/img/개발자.png">
                  <img src="<%= root %>/resources/img/오 혜인님.png">
                  <img src="<%= root %>/resources/img/연락 준영.png">
               </li>
               <li>Nov 05, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">알고리즘 마스터<span class="middle">Middle</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
                  <img src="<%= root %>/resources/img/인사 헤인.png">
                  <img src="<%= root %>/resources/img/뿌우현우.png">
                  <img src="<%= root %>/resources/img/인사하는 노랭이.png">
               </li>
               <li>Dec 30, 3030</li>
            </ul>
         </div>
         <div class="column column-completed">
            <ul class="project">
               <li class="title">자바 콘솔 용용랜드 <span class="middle">Middle</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
                  <img src="<%= root %>/resources/img/뿌우현우.png">
                  <img src="<%= root %>/resources/img/연락 준영.png">
                  <img src="<%= root %>/resources/img/터진 현우님.png">
                  <img src="<%= root %>/resources/img/화이팅현우.png">
                  <img src="<%= root %>/resources/img/뿌우.png">
               </li>
               <li>Oct 23, 2021</li>
            </ul>
            <ul class="project">
               <li class="title">뿌리 깊은 국사 <span class="low">Low</span></li>
               <li><img src="<%= root %>/resources/img/유미 후우.png"></li>
               <li>Feb 07, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">개발자 포트폴리오<span class="high">High🔥</span></li>
               <li>
                  <img src="<%= root %>/resources/img/유미 후우.png">
               </li>
               <li>Jan 02, 2022</li>
            </ul>
         </div>
      </section>
      <section class="project-calendar">
         <div id="calendar"></div>
         <img src="<%= root %>/resources/img/desk.png" alt="">
      </section>
   </div>
</body>
<script>
   $(function() {
      $(".column").sortable({
         connectWith: ".column",
         handle: ".title",
         cancel: ".state",
         placeholder: "project-placeholder"
      });
      $( ".column .project" ).disableSelection();
   });
	$(function() {
		$(".column-select").hide();
		$(".project-select").click(function() {
			$(".column-select").slideToggle(200);
		});
	});

   var calendar;
   document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
            calendar = new FullCalendar.Calendar(calendarEl, {
      });
      calendar.render();
   });

   var calHeight = 370;
   $('#calendar').fullCalendar({
      height:calHeight,
      contentHeight:calHeight
   });

</script>
</html>