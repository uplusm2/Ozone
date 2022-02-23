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
   <link rel="stylesheet" href="css/jquery-ui.css">
   <link rel="stylesheet" href="css/bootstrap.css">
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
   <link href='fullcalendar-5.10.2/lib/main.css' rel='stylesheet' />
   <script src='fullcalendar-5.10.2/lib/main.js'></script>
   <script src="js/jquery-1.12.4.min.js"></script>
   <script src="js/jquery-ui.js"></script>
   <script src="js/bootstrap.min.js"></script>
</head>
<body>
   <div class = "header">
      <div class="bi bi-list icon" onclick = ""></div>
      <div class="bi bi-calendar2-event icon" onclick = ""></div>
      <div class="bi bi-envelope icon" onclick = ""></div>
      <div class="bi bi-window-sidebar icon project" onclick = ""></div>
      <div class="bi bi-file-earmark-check icon" onclick = ""></div>
      <div class="bi bi-folder2 icon" onclick = ""></div>
      <div class="bi bi-card-list icon" onclick = ""></div>
      <div class="bi bi-person-video2 icon" onclick = ""></div>
   </div>
   <div class="wrap">
      <section class="project-column">
         <div class="project-select">
            <i class="bi bi-kanban"></i>
            <select name="view" id="view">
               <option value="status">By Status</option>
               <option value="all">All Tasks</option>
            </select>
         </div>
         
         <div class="state no-state">No State</div>
         <div class="state not-started">Not Started</div>
         <div class="state in-progress">In Progress</div>
         <div class="state completed">Completed</div>
         <div class="column column-no-state">
            <ul class="project">
               <li class="title">ì§±ê¸° 2ì£¼ ìì±<span class="high">Highð¥</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
               </li>
               <li>Mar 05, 2022</li>
            </ul>
            <p>+ New</p>
         </div>
         <div class="column column-not-started">
            <ul class="project">
               <li class="title">ê³ êµ¬ë§ì¼(MVC)<span class="low">Low</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
                  <img src="img/ì°ë ì¬ë.png">
                  <img src="img/ì¸ì¬íë ë¸ë­ì´.png">
                  <img src="img/íì´ííì°.png">
                  <img src="img/í°ì§ íì°ë.png">
                  <img src="img/ì¤ íì¸ë.png">
                  <!-- <span>+3</span> -->
               </li>
               <li>Feb 20, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">íì´ë íë¡ì í¸ ì¤ì¡´ <span class="high">Highð¥</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
                  <img src="img/ê°ë°ì.png">
                  <img src="img/ë¿ì°.png">
                  <img src="img/ì¤ íì¸ë.png">
                  <img src="img/íì´ííì°.png">
                  <img src="img/í°ì§ í¤ì¸ë.png">
               </li>
               <li>Mar 15, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">ë¤ì§ê° ë¨ê¸°<span class="middle">Middle</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
                  <img src="img/ì°ë½ ì¤ì.png">
                  <img src="img/í°ì§ íì°ë.png">
               </li>
               <li>Feb 22, 2022</li>
            </ul>
         </div>
         <div class="column column-in-progress">
            <ul class="project">
               <li class="title">êµì¡ ì¼í° DB êµ¬ì¶<span>Low</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
                  <img src="img/í°ì§ í¤ì¸ë.png">
                  <img src="img/ê°ë°ì.png">
                  <img src="img/ì¤ íì¸ë.png">
                  <img src="img/ì°ë½ ì¤ì.png">
               </li>
               <li>Nov 05, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">ìê³ ë¦¬ì¦ ë§ì¤í°<span class="middle">Middle</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
                  <img src="img/ì¸ì¬ í¤ì¸.png">
                  <img src="img/ë¿ì°íì°.png">
                  <img src="img/ì¸ì¬íë ë¸ë­ì´.png">
               </li>
               <li>Dec 30, 3030</li>
            </ul>
         </div>
         <div class="column column-completed">
            <ul class="project">
               <li class="title">ìë° ì½ì ì©ì©ëë <span class="middle">Middle</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
                  <img src="img/ë¿ì°íì°.png">
                  <img src="img/ì°ë½ ì¤ì.png">
                  <img src="img/í°ì§ íì°ë.png">
                  <img src="img/íì´ííì°.png">
                  <img src="img/ë¿ì°.png">
               </li>
               <li>Oct 23, 2021</li>
            </ul>
            <ul class="project">
               <li class="title">ë¿ë¦¬ ê¹ì êµ­ì¬ <span class="low">Low</span></li>
               <li><img src="img/ì ë¯¸ íì°.png"></li>
               <li>Feb 07, 2022</li>
            </ul>
            <ul class="project">
               <li class="title">ê°ë°ì í¬í¸í´ë¦¬ì¤<span class="high">Highð¥</span></li>
               <li>
                  <img src="img/ì ë¯¸ íì°.png">
               </li>
               <li>Jan 02, 2022</li>
            </ul>
         </div>
      </section>
      <section class="project-calendar">
         <div id="calendar"></div>
         <img src="img/desk.png" alt="">
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