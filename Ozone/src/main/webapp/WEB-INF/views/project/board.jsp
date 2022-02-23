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
      <section class="project-board">
         <div class="project-select">
            <i class="bi bi-kanban"></i>
            <select name="view" id="view">
               <option value="all">All Tasks</option>
               <option value="status">By Status</option>
            </select>
         </div>

         <div class="board">
            <table>
               <tr>
                  <th>Title</th>
                  <th>Member</th>
                  <th>Date Created</th>
                  <th>Due Date</th>
                  <th>Status</th>
               </tr>
               <tr>
                  <td><span class="priority high">Highð¥</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status not-started">Not Started</span></td>
               </tr>
               <tr>
                  <td><span class="priority low">Low</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status completed">Completed</span></td>
               </tr>
               <tr>
                  <td><span class="priority low">Low</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status not-started">Not Started</span></td>
               </tr>
               <tr>
                  <td><span class="priority middle">Middle</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status in-progress">In Progress</span></td>
               </tr>
               <tr>
                  <td><span class="priority high">Highð¥</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status completed">Completed</span></td>
               </tr>
               <tr>
                  <td><span class="priority high">Highð¥</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status not-started">Not Started</span></td>
               </tr>
               <tr>
                  <td><span class="priority middle">Middle</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status completed">Completed</span></td>
               </tr>
               <tr>
                  <td><span class="priority low">Low</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status not-started">Not Started</span></td>
               </tr>
               <tr>
                  <td><span class="priority high">Highð¥</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status in-progress">In Progress</span></td>
               </tr>
               <tr>
                  <td><span class="priority middle">Middle</span>ê³ êµ¬ë§ì¼(Servlete+JSP)</td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 16, 2022</td>
                  <td>Feb 22, 2022</td>
                  <td><span class="status completed">Completed</span></td>
               </tr>
               <!-- <tr>
                  <td>ìì© êµì¡ ì¼í°(DB) </td>
                  <td><span class="status not-started">Not Started</span></td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority middle">Middle</span></td>
               </tr>
               <tr>
                  <td>í´ë¡  ì½ë© ëª¨ì </td>
                  <td><span class="status not-started">Not Started</span></td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority high">Highð¥</span></td>
               </tr>
               <tr>
                  <td>ê°ì ì¥í° </td>
                  <td><span class="status completed">Completed</span></td>
                  <td>
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority middle">Middle</span></td>
               </tr>
               <tr>
                  <td>ìê³ ë¦¬ì¦ </td>
                  <td><span class="status not-started">Not Started</span></td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority high">Highð¥</span></td>
               </tr>
               <tr>
                  <td>ê³ êµ¬ë§ì¼(Servlete+JSP) </td>
                  <td><span class="status not-started">Not Started</span></td>
                  <td>
                     <img src="img/ì¤ íì°ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority low">Low</span></td>
               </tr>
               <tr>
                  <td>íì´ë ì¤ì¡´ </td>
                  <td><span class="status in-progress">In Progress</span></td>
                  <td>
                     <img src="img/KakaoTalk_20220104_002701045.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority middle">Middle</span></td>
               </tr>
               <tr>
                  <td>í¬í¸í´ë¦¬ì¤ ì¤ë¹ </td>
                  <td><span class="status not-started">Not Started</span></td>
                  <td>
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority high">Highð¥</span></td>
               </tr>
               <tr>
                  <td>ì©ì©ëë </td>
                  <td><span class="status completed">Completed</span></td>
                  <td>
                     <img src="img/ì¤ íì°ë.png">
                     <img src="img/ì¤ íì¸ë.png">
                     <img src="img/KakaoTalk_20220205_020132636.jpg">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority low">Low</span></td>
               </tr>
               <tr>
                  <td>ë¿ë¦¬ ê¹ì êµ­ì¬ </td>
                  <td><span class="status in-progress">In Progress</span></td>
                  <td>
                     <img src="img/ì¤ íì¸ë.png">
                  </th>
                  <td>Feb 22, 2022</td>
                  <td><span class="priority low">Low</span></td>
               </tr> -->
            </table>
            <div class="pagebar">
               <ul class="pagination">
                  <li class='glyphicon glyphicon-menu-left'></li>
                  <li class='active'>1</li>
                  <li>2</li>
                  <li>3</li>
                  <li>4</li>
                  <li>5</li>
                  <li>6</li>
                  <li>7</li>
                  <li>8</li>
                  <li>9</li>
                  <li>10</li>
                  <li class='glyphicon glyphicon-menu-right'></li>
               </ul>
            </div>
            <div class="search">
               <form>
                  <select name="column" class="text">
                     <option value="title">ì ëª©</option>
                     <option value="content">ë´ì©</option>
                     <option value="nickname">ìì±ì</option>
                  </select> 
                  <input type="text" name="word" placeholder="ê²ìì´ë¥¼ ìë ¥íì¸ì." required class="text"> 
                  <i class="bi bi-search"></i>
               </form>
            </div>
         </div>
      </section>
      <section class="project-calendar">
         <div id="calendar"></div>
         <img src="img/desk.png" alt="">
      </section>
   </div>
</body>
<script>
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