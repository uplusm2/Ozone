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
</style>

    <div class = "content">
        
        <div class="list">
            <table class="table table-hover">
                <tr>
                    <input type="button" value="개인 일정" class="btn btn-default" onclick="location.href='/addcalendar';">
                    <input type="button" value="메모 작성" class="btn btn-default" onclick="location.href='/memoadd';">
                    <span class="btn btn-default search"> <input type="text" name="search"> <input type="button" value="🍳"></span>
                </tr>
                <tr>
                    <th>No.</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>날짜</th>
                    <th>작성자</th>
                </tr>
                <tr onclick="location.href='/addmemodetail'">
                    <td>9</td>
                    <td>가나다</td>
                    <td>모두 모이세요!!</td>
                    <td>2022-02-26</td>
                    <td>황현우</td>
                </tr>
                <tr onclick="location.href='/memodetail'">
                    <td>8</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr onclick="location.href='/memodetail'">
                    <td>7</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr onclick="location.href='/memodetail'">
                    <td>6</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>제목입니다.</td>
                    <td>내용입니다.</td>
                    <td>2022-02-16</td>
                    <td>황현우</td>
                </tr>
                <tr>
                    <td>2</td>
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
