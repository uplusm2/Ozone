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
    .search{
    	margin: 0px 0px 15px 150px;
    }
</style>

<div class = "content">
	<form action="/addok" method="post">
	    <div class="list">
	        <input type="button" value="개인 일정" class="btn btn-default" onclick="location.href='/calendar';">
	        <input type="button" value="메모 리스트" class="btn btn-default" onclick="location.href='/memolist';">
	        <input type="submit" value="작성 완료" class="btn btn-info addok" style="margin-bottom: 1.5%; margin-left: 50%;" onclick="location.href='/addok';">
	        <hr>
			<input type="date" class="search">
			<input type="hidden" name="m" value="sdf">
	        <table  class="table-bordered">
	            <tr>
	                <th>제목</th>
	                <td><input type="text" class="form-control" placeholder="제목을 입력해 주세요. 예 ) 가나다"></td>
	            </tr>
	            <tr>
	                <th>참조인</th>
	                <td><input type="text" class="form-control" placeholder="참조인을 입력해 주세요. 예 ) @이혜인 , @잘레시안"></td>
	            </tr>
	            <tr>
	                <th>Meeting 지역</th>
	                <td><input type="button" value="Meeting 지역 선택" class="btn btn-info location"></td>
	            </tr>
	            <tr>
	                <th>내용</th>
	                <td><input type="text" class="form-control" placeholder="내용을 입력해 주세요. 예 ) 모두 모이세요!!"></td>
	            </tr>
	        </table>
	    </div>
    </form>
</div>

<script type="text/javascript">
	$('.btn.btn-info.location').click(()=>{
		var xPos = (document.body.offsetWidth/2) - (1200/2); // 가운데 정렬
		xPos += window.screenLeft; // 듀얼 모니터일 때
		var yPos = (document.body.offsetHeight/2) - (1200/2);
		window.open('/addlocation','window','width=500,height=500,left='+xPos+',top='+yPos);
	});
</script>
