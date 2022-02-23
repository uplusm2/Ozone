<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
    
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
    .table-bordered{
        width: 80%;
        margin-left: auto;
        margin-right: auto;
    }
    .table-bordered tr:nth-child(4){
        height: 350px;
    }
    .table-bordered th{
        text-align: center;
        width: 10%;
    }
    .table-bordered td input{
        width: 100%;
    }
    .table-bordered tr:nth-child(4) input{
        height: 350px;
    }
    .btn.btn-default{
    	position: relative;
    	left: 7%;
    }
    .btn.btn-info.addok{
    	position: relative;
    	left: 15%;
    }
</style>

    <div class = "content">
        
        <div class="list">
            <input type="button" value="개인 일정" class="btn btn-default" onclick="location.href='/addcalendar';">
            <input type="button" value="메모 리스트" class="btn btn-default" onclick="location.href='/addmemolist';">
            
            <hr>

            <table  class="table-bordered">
                <tr>
                    <th>제목</th>
                    <td>가나다</td>
                </tr>
                <tr>
                    <th>참조인</th>
                    <td>@이혜인 , @잘레시안</td>
                </tr>
                <tr>
                    <th>Meeting 지역</th>
                    <td><input type="button" value="Meeting 지역" class="btn btn-info"></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>모두 모이세요!!</td>
                </tr>
            </table>
        </div>
    </div>
