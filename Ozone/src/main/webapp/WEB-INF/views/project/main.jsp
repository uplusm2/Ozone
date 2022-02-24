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
   <style>
	@import url('https://fonts.googleapis.com/css2?family=Ranchers&display=swap');
	.icon {
	   animation: header 3s;
	}
	.header {
	   animation: move 3s;
	}
	@keyframes header {
	   0% { opacity: 0;}
	   99% {opacity: 0;}
	   100% { opacity: 1;}
	}
	@keyframes move {
	   0% { transform: translateX(-50px)}
	   100% { transform: translateX(0px)}
	}
	 
	 /* layout  */
	body {
		/* font-family: 'Noto Sans KR', sans-serif; */
	   font-family: 'IBM Plex Sans KR', sans-serif;
		font-size: 18px; 
		font-weight: 500; 
	   color: #5C6F7E;
	/*    background: #6CA1FD; */
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
/* 	   background: #6CA1FD;; */
/* 	   background: #fff; */
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
/* 	   background-color :  #6CA1FD; ; */
 	  
	   /* background: #F5F8FF; */
	   text-align: center;
	   /* padding-top: 20px; */
	   opacity: 0;
	}
	.icon{
		position: absolute;
		left: 20px;
	   font-size : 35px;
	   color : rgba(255, 255, 255, 0.623);
	   margin-left : -5px;
	   opacity: 0.6;
	   height : 75px;
	   width : 75px;
	   padding-top : 15px;
	   margin-bottom: 0px;
	}
	.icon:nth-child(2) {
		top: 75px;
	}
	.icon:nth-child(3) {
		top: 150px;
	}
	.icon:nth-child(4) {
		top: 225px;
	}
	.icon:nth-child(5) {
		top: 300px;
	}
	.icon:nth-child(6) {
		top: 375px;
	}
	.icon:nth-child(7) {
		top: 450px;
	}
	.icon:nth-child(8) {
		top: 525px;
	}
	.icon.project {
	   opacity: 1;
	   color: #fff;
	}
	.icon:hover{
	  opacity: 1;
	  color: #fff;
	}
	
	/* header */
	header h1 {
	   margin-top: 220px;
	   font-size: 70px;
	   font-weight: 700;
	   color: #6CA1FD;
/* 	   background: #F5F8FF; */
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
	
	.title {
	   position: relative;
	   width: 100%;
	   height: 100vh;
	   /* background: #6CA1FD; */
	   color: #ffffffe0;
	}
	.title h1 {
	   position: absolute;
	   top: 20vh;
	   left: 100px;
	   font-size: 300px;
	   font-weight: 300;
	   animation: title 3s;
	   letter-spacing: 21px;
	   font-family: 'Ranchers', cursive;
	   text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.13);
	}
	@keyframes title {
	   0% { opacity: 0; transform: scale(2);}
	   /* 50% { opacity: 0.4; transform: scale(1.5); } */
	   100% { opacity: 1; transform: scale(1); }
	} 
	.individual-bubble {
	   width: 200px;
	   position: absolute;
	   border-radius: 100%;
	   /* bottom: 50vh; */
	   bottom: 2vh;
	   background-color: #ffffff67;
	   border: 2px solid #ffffff75;
	   z-index: -1;
	   transform: translateX(-100px) translateY(-10px);
	   box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.13);
	}
	.wave {
	  opacity: .4;
	  position: absolute;
	  bottom: 4%;
	  left: -15%;
/* 	  background: #0af; */
	  background: #749FFE;
	  width: 2500px;
	  height: 2500px;
	  margin-left: 0px;
	  margin-top: -250px;
	  transform-origin: 50% 48%;
	  border-radius: 43%;
	  animation: drift 3000ms infinite linear;
	  z-index: -1;
	}
	
	.wave.-three {
	  animation: drift 5000ms infinite linear;
	}
	
	.wave.-two {
	  animation: drift 7000ms infinite linear;
	  opacity: .1;
/* 	  background: yellow; */
	  background: #FF738E;
	}
	@keyframes drift {
 	 from { transform: rotate(0deg); }
 	 from { transform: rotate(360deg); }
	}
	div.bi {
		postion: absolute;
	}
   </style>
</head>
<body>
   <div class="bi bi-list icon project" onclick = ""></div>
   <div class="bi bi-calendar2-event icon" onclick = ""></div>
   <div class="bi bi-envelope icon" onclick = ""></div>
   <div class="bi bi-window-sidebar icon" onclick = ""></div>
   <div class="bi bi-file-earmark-check icon" onclick = ""></div>
   <div class="bi bi-folder2 icon" onclick = ""></div>
   <div class="bi bi-card-list icon" onclick = ""></div>
   <div class="bi bi-person-video2 icon" onclick = ""></div>
   <div class="wrap">
      <section class="main">
         <div class='wave -one'></div>
		 <div class='wave -two'></div>
		 <div class='wave -three'></div>
         <div class="title bubbles animate">
            <h1>OZONE</h1>
         </div>
      </section>
   </div>
   <div class="">
   </div>
</body>
<script>
	jQuery(document).ready(function($) {
	    var bArray = [];
	    var sArray = [4,6,8,10,11,12,14,6,7,10,5,20,30];
	
	    for (var i = 0; i < $('.bubbles').width()+200; i++) {
	       bArray.push(i);
	    }
	
	    function randomValue(arr) {
	       return arr[Math.floor(Math.random() * arr.length)];
	    }
	
	    setInterval(function(){
	       var size = randomValue(sArray);
	       $('.bubbles').append('<div class="individual-bubble" style="left: ' + randomValue(bArray) + 'px; width: ' + size + 'px; height:' + size + 'px;"></div>');
	       $('.individual-bubble').animate({
	          'bottom': '110%',
	          'opacity' : '-=1'
	       }, 3700, function(){
	          $(this).remove()
	       }
	       );
	    }, 170);
	 });
</script>
</html>