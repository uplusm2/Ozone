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
	   /* background: #fff; */
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
	
	
	/* project-board select */
	.project-board {
	   background: #F5F8FF;
	   /* background: #fff; */
	   color: #5C6F7E;
	   font-family: 'IBM Plex Sans KR', sans-serif;
	   width: 1300px;
	   height: 900px;
		margin: 60px 0px 0px 100px;
	   border-radius: 10px;
	   /* margin-top: 100px; */
	   padding: 40px 20px 0px 30px;
	}
	.project-board img {
	   width: 30px;
	   height: 30px;
	   border-radius: 20px;
	   margin: 5px 2px 10px 0px;
	   background-color: #fff;
	}
	.project-board .select {
	   margin: 20px 55px;
	   font-size: 22px;
	   padding-top: 30px;
	   background: #fff;
	}
	.project-board .select select{
	   position: relative;
	   top: 0;
	   left: 0;
	   border: 0;
	   /* background: #F5F8FF; */
	   background: #fff;
	   left: -3px;
	   font-weight: 700;
	}
	
	/* project board */
	.project-board .board {
	   width: 1200px;
	   position: relative;
	   left: 20px;
	   top: -10px;
	   height: 700px;
	   background: #fff;
	   padding: 50px;
	   border-radius: 10px;
	   margin-top: 50px;
	}
	.project-board .board table {
	   position: absolute;
	   width: 1100px;
	   border: 1px solid #95A1A9;
	   border-radius: 20px;
	} 
	.project-board .board table,
	.project-board .board table th,
	.project-board .board table td{
	   border-left: 0px;
	   border-right: 0px;
	   margin: 0px auto;
	   /* margin-top: 70px; */
	   text-align: center;
	   font-weight: 500;
	}
	.project-board .board table th {
	   font-weight: 700;
	   font-size: 18px;
	   text-align: center;
	   width: 200px;
	}
	.project-board .board table tr {
	   border: 1px solid #95A1A9;
	   border-left: 0px;
	   border-right: 0px;
	   height: 40px;
	}
	.project-board .board table td {
	   font-size: 17px;
	}
	.project-board .board table th:nth-child(1),
	.project-board .board table td:nth-child(1) {
	   padding-left: 20px;
	   width: 350px;
	   text-align: left;
	   color: #5C6F7E;
	   cursor: pointer;
	   position: relative;
	}
	.project-board .board table th:nth-child(1) {
	   text-align: center;
	}
	.project-board .board table td:nth-child(1) {
	   left: 60px;
	}
	.project-board .board table td:nth-child(2) {
	   color: #fff;
	   text-align: center;
	   padding: 0;
	   width: 100px;
	   position: relative;
	}
	.project-board .board table td:nth-child(2) {
	   width: 250px;
	}
	.project-board .board table td:nth-child(5) .status {
	   position: absolute;
	   left: 42px;
	   top: 8px;
	   padding: 2px 2px;
	   font-weight: 400;
	   border-radius: 7px;
	   width: 100px;
	}
	.project-board .board table .not-started {
	   background: #749FFE;
	}
	.project-board .board table  .in-progress {
	   background: #FF738E;
	}
	.project-board .board table  .completed {
	   background: #FE9E62;
	}
	.project-board .board table td:nth-child(5) {
	   /* color: #c9c9c9; */
	   font-weight: 400;
	   font-size: 15px;
	   position: relative;
	   top: 2px;
	   color: #fff;
	}
	.project-board .board table td:nth-child(5) {
	   position: relative;
	}
	.project-board .board table td:nth-child(1) .priority {
	   position: absolute;
	   width: 55px;
	   left: -40px;
	   top: 13px;
	   height: 18px;
	   line-height: 18px;
	   padding: 0px 7px;
	   text-align: center;
	   font-size: 13px;
	   font-weight: 400;
	   color: #5C6F7E;
	   background: #E3ECFF;
	   border-radius: 20px;
	}
	.project-board .board table td:nth-child(1) .priority.middle {
	   background: #FFECE0;
	}
	.project-board .board table td:nth-child(1) .priority.high {
	   background: #FCE0E5;
	   padding: 1px 5px 1px 5px;
	}
	
	
	/* 페이지바 */
	.project-board .board .pagebar {
	   width: 345px;
	   font-size: 19px;
	   margin: 10px auto;
	   margin-top: 510px;
	   color: #cdcdcd;
	}
	.project-board .pagebar li {
	   margin: 5px;
	   font-weight: 400;
	   cursor: pointer;
	}
	.project-board .pagebar li.active {
	   color: #9bacff;
	   font-weight: 500;
	}
	.project-board .pagebar li:hover {
	   color: #9bacff;
	}
	.project-board .pagebar li.glyphicon {
	   top: 3px;
	}
	
	
	/* 게시판 검색 */
	.project-board .search {
	   position: relative;
	   width: 350px;
	   font-size: 15px; 
	   margin: 10px auto;
	   margin-top: -10px;
	   /* color: #cdcdcd; */
	}
	.project-board .search select:focus,
	.project-board .search input:focus {
	   outline: 0;
	}
	.project-board .search select {
	   border: 1px solid #cdcdcd;
	   background: #FAFAFA;
	   margin-right: -4px;
	   border-radius: 20px 0px 0px 20px;
	   padding: 5px;
	   padding-left: 10px; 
	   border-right: 0px;
	   position: relative;
	}
	.project-board .search:after {
	   content: '';
	   position: absolute;
	   left: 0;
	   top: 7px;
	   width: 77px;
	   height: 20px;
	   /* background: rgba(0, 0, 0, 0.274); */
	   border-right: 1px solid #cdcdcd;
	   z-index: 1;
	}
	.project-board .search input {
	   position: relative;
	   top: 0.3px;
	   border: 1px solid #cdcdcd;
	   background: #FAFAFA;
	   width: 263px;
	   padding: 6.3px;
	   padding-left: 6px; 
	   border-left: 0px;
	   border-radius: 0px 20px 20px 0px;
	}
	.project-board .search i {
	   position: absolute;
	   right: 16px;
	   top: 4px;
	   width: 28px;
	   height: 28px;
	   font-size: 16px;
	   padding-left: 6px;
	   padding-top: 2px;
	   border-radius: 50%;
	   background: #9BACFF;
	   color: #fff;
	}
	
	
	/* detail */
	.project-detail img {
	   width: 30px;
	   height: 30px;
	   border-radius: 20px;
	   margin-right: 3px;
	   background-color: #fff;
	   /* border: 1px solid #5C6F7E; */
	   position: relative;
	   top: -2px;
	}
	.project-detail {
	   background: #fff;
	   width: 1000px;
	   padding: 60px 80px 100px 80px;
	   margin-top: 100px;
	   color: #5C6F7E;
	   border-radius: 10px;
	   border: 1px solid #E0E0E0;
	   font-size: 17px;
	   position: relative;
	   transition: all 0.3s;
	}
	.project-detail h1 {
	   font-weight: 1000;
	   font-size: 40px;
	   margin-bottom: 20px;
	}
	.project-detail table tr td i {
	   margin-right: 10px;
	   font-size: 22px;
	   position: relative;
	   top: 2px
	}
	.project-detail table tr:first-child td {
	   width: 90px;
	   font-weight: 700;
	}
	.project-detail table tr:nth-child(4) td,
	.project-detail table tr:nth-child(5) td {
	   font-weight: 700;
	   font-size: 15px;
	}
	.project-detail table tr td:first-child {
	   font-weight: 400;
	   font-size: 19px;
	   color: #95A1A9;
	   width: 180px;
	   height: 40px;
	}
	.project-detail table tr .status {
	   padding: 4px 8px;
	   font-weight: 400;
	   border-radius: 8px;
	   color: #fff;
	   font-size: 15px;
	}
	.project-detail table tr .status.not-started {
	   background: #749FFE;
	}
	.project-detail table tr .status.in-progress {
	   background: #FF738E;
	}
	.project-detail table tr .status.completed {
	   background: #FE9E62;
	}
	.project-detail table tr .priority {
	   padding: 1px 7px 1px 7px;
	   text-align: center;
	   font-size: 15px;
	   font-weight: 400;
	   color: #5C6F7E;
	   background: #E3ECFF;
	   border-radius: 20px;
	   position: relative;
	   top: 2px
	}
	.project-detail table tr .priority.middle {
	   background: #FFECE0;
	}
	.project-detail table tr .priority.high {
	   background: #FCE0E5;
	   padding: 1px 5px 1px 5px;
	}
	.project-detail table tr:nth-child(6) td,
	.project-detail table tr:nth-child(8) td {
	   color: #5C6F7E;
	   font-weight: 700;
	   padding: 50px 5px 10px 0px;
	   font-size: 28px;
	   letter-spacing: 1px;
	}
	.project-detail table tr:nth-child(7) td{
	   color: #5C6F7E;
	   font-size: 17px;
	   font-weight: 700;
	   position: relative;
	   top: -10px;
	   left: 2px;
	}
	.project-detail table tr.to-do td {
	   padding: 0px 5px;
	   margin-bottom: -20px;
	   font-size: 17px;
	   height: 10px;
	   color: #5C6F7E;
	}
	.project-detail table tr.to-do td input[type="checkbox"] {
	   position: relative;
	   margin-right: 5px;
	   top: -1px;
	}
	.project-detail table tr.to-do td input[type="checkbox"]:checked + label {
	   font-weight: 400;
	   color: #95A1A9;
	   text-decoration: line-through;
	   /* font-style: italic; */
	   /* font-size: 16px; */
	}
	
	
	/* 프로젝트 수정과 삭제로 이동 */
	.project-detail.hover {
	   background: #fbfbfb;
	   transition: all 0.3s;
	   opacity: 0.7;
	}
	.project-detail > i {
	   position: absolute;
	   font-size: 45px;
	   right: 20px;
	   top: 10px;
	   color: #e0e0e0;
	   opacity: 0;
	}
	.project-detail > i.hover {
	   opacity: 1;
	   cursor: pointer;
	   transition: all 0.3s;
	   z-index: 1;
	   right: -70px;
	   width: 150px;
	}
	.project-detail > i.hover:hover {
	   color: #5C6F7E;
	   transition: all 0.3s;
	   opacity: 1;
	}
	.project-detail > i.click-hover {
	   opacity: 1;
	   cursor: pointer;
	   transition: all 0.3s;
	   z-index: 1;
	   right: -70px;
	   width: 150px;
	}
	.project-detail > i.click {
	   top: -14px;
	   right: -50px;
	   color: #5C6F7E;
	   opacity: 1.5;
	   z-index: 1;
	   height: 100px;
	}
	.project-detail > i.bi-trash.click {
	   top: 40px;
	}
	
	
	/* 프로젝트 만들기 */
	.project-detail form input.title {
	   font-weight: 700;
	   font-size: 40px;
	   margin-bottom: 20px;
	   border: 0px;
	   color: #5C6F7E;
	}
	.project-detail form input:hover,
	.project-detail form input:focus {
	   outline: 0;
	}
	.project-detail form table .search {
	   position: relative;
	   left: -10px;
	   border: 0px;
	   font-weight: 400;
	   background: #FBFBFB;
	   width: 700px;
	   border-radius: 7px;
	   padding: 2px;
	   padding-left: 8px;
	}
	.project-detail form table .description {
	   border: 0;
	}
	.project-detail form table .new-to-do {
	   position: relative;
	   left: -80px;
	   top: -4px;
	   border: 0;
	   border-radius: 7px;
	   padding: 1px 6px 1px 6px;
	   font-size: 20px;
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
</head>
<body>
   <div class = "header">
      <div class="bi bi-list icon" onclick="location.href='/ozone';"></div>
      <div class="bi bi-calendar2-event icon" onclick = ""></div>
      <div class="bi bi-envelope icon" onclick = ""></div>
      <div class="bi bi-window-sidebar icon" onclick="location.href='/project/column';"></div>
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
         <i class="upte bi bi-trash"></i>
         <table>
            <tr>
               <td><i class="bi bi-people-fill"></i>Member</td>
               <td><img src="<%= root %>/resources/img/kakao.png">카카오</td>
               <td><img src="<%= root %>/resources/img/google.png">구글</td>
               <td><img src="<%= root %>/resources/img/KakaoTalk_20220104_002701045.png">이유미</td>
               <td><img src="<%= root %>/resources/img/오 현우님.png">황현우</td>
               <td><img src="<%= root %>/resources/img/터진 헤인님.png">이혜인</td>
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