<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

	.content{
        margin-right : 120px;
        padding-top: 3%;
    }
    .content #calendar{
        width: 80%;
        padding-top: 0%;
        margin-left: 15%;
        height: 90vh;
    }
    .fc-prev-button.fc-button.fc-button-primary{
        transform: translate(-0vh);
    }
    .fc-daygrid-day.fc-day{
        background-color: white;
    }
    .fc-daygrid-day.fc-day.fc-day-today {
        background-color: #F5F8FF;
    } 
    .fc-daygrid-event.fc-daygrid-block-event.fc-h-event{
        background-color: #F5F8FF;
        text-align: center;
        width: 80%;
        margin-left: 10%;
        margin-bottom: 5%;
    }
    .fc-event-title.fc-sticky{
        color: rgb(92, 111, 126);
    }
    .fc-button.fc-button-primary{
        background-color: #F5F8FF;
        color: rgb(92, 111, 126);
    }
    .fc-today-button.fc-button.fc-button-primary{
        background-color: #F5F8FF;
        color: rgb(92, 111, 126);
    }
    .bi.bi-calendar2-event.icon{
        color: #9bacff;
    }


</style>

<div class = "content">
    <div id="calendar"></div>
</div>
 
<script>
    $('.fc-button-group').text("<input type='text'>");
    var today = new Date().toISOString().substring(0,10);
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            customButtons: {
                myCustomButton: {
                text: '메모작성',
                click: function() {
                    location.href="http://127.0.0.1:5500/front/HyunWoo/memoAdd.html";
                }
                }
            },
            headerToolbar: {
                left: 'prevYear,prev,next,nextYear myCustomButton',
                center: 'title',
                right: 'dayGridMonth,dayGridWeek,dayGridDay'
            },
            initialDate: today ,
            navLinks: true, // can click day/week names to navigate views
            editable: true,
            dayMaxEvents: true, // allow "more" link when too many events
            events: [
                {
                title: '네이버 로 갈까요?',
                url: 'http://naver.com',
                start: '2022-02-14'
                },
                {
                title: 'memo',
                url: 'http://127.0.0.1:5500/front/HyunWoo/memoList.html',
                start: '2022-02-14'
                },
                {
                title: 'Click for Naver',
                url: 'http://naver.com',
                start: '2022-02-15'
                },
                {
                title: 'Click for Google',
                url: 'http://google.com',
                start: '2022-02-15'
                }
            ]
        });
        calendar.render();
    });

    $('.fc-daygrid-day-number').append();
</script>