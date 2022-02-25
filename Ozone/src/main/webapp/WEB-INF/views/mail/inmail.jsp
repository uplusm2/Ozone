<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<div class="mail-menu">
    <input type="checkbox" name="cbAll">
    <input type="button" class="btn btn-default" value="삭제">
    <input type="button" class="btn btn-default" value="스팸차단">
    <input type="button" class="btn btn-default" value="전달">
    <input type="button" class="btn btn-default" value="답장">
    <input type="button" class="btn btn-default" value="이동">
    <input type="button" class="btn btn-default" value="읽음">

    <div class="search">
        <form>
            <input type="text" name="word" class="form-control word" placeholder="메일 검색" required
                autocomplete="off">
            <button type="submit" class="btn btn-search"><i class="bi bi-search"></i></button>
            <input class="btn btn-search-detail" type="button" value="상세">
        </form>
    </div>

    <div class="search-detail" id="searchDetail">
        <form>
            <fieldset>
                <label>보낸사람</label>
                <input type="text" class="form-control">
                <label>받는사람</label>
                <input type="text" class="form-control">
                <label>참조</label>
                <input type="text" class="form-control">
                <label>제목</label>
                <input type="text" class="form-control">
                <label>내용</label>
                <input type="text" class="form-control">
                <label>기간</label>
                <input type="date" class="form-control">
                <input type="date" class="form-control">
                <input type="submit" class="btn btn-default form-control">
            </fieldset>
        </form>
    </div>
</div>

<table class="table table-hover mail-list">
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope"></i></td>
        <td style="color:cornflowerblue">황현우</td>
        <td style="color:cornflowerblue">업무 관련 요청 파일 드립니다.</td>
        <td>09:22</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope"></i></td>
        <td style="color:cornflowerblue">주하성</td>
        <td style="color:cornflowerblue">발표 관련 자료 보내드립니다</td>
        <td>09:05</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope"></i></td>
        <td style="color:cornflowerblue">이유미</td>
        <td style="color:cornflowerblue" onclick="location.href='/mail/viewmail?seq=168';">안녕하세요 이유미입니다</td>
        <td>08:45</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope"></i></td>
        <td style="color:cornflowerblue">송준영</td>
        <td style="color:cornflowerblue">인재 추천 리스트 드립니다</td>
        <td>22.02.24 22:36</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope-open"></i></td>
        <td>이찬우</td>
        <td>점심 햄버거 어떠세요</td>
        <td>22.02.24 11:36</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star-fill"></i></td>
        <td><i class="bi bi-envelope-open"></i></td>
        <td>잘레시안</td>
        <td>우리는 모두 인재입니다</td>
        <td>22.02.24 10:27</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope-open"></i></td>
        <td>Kakao</td>
        <td>카카오 유료서비스 이용약관 변경 안내</td>
        <td>22.02.23 14:24</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope-open"></i></td>
        <td>서룡</td>
        <td>입과 몸을 이롭게 하는 진정한 웰빙 중화요리 서룡</td>
        <td>22.02.23 13:54</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope-open"></i></td>
        <td>국세청</td>
        <td>국세청 뉴스레터 941호</td>
        <td>22.02.23 10:11</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="cb"></td>
        <td><i class="bi bi-star"></i></td>
        <td><i class="bi bi-envelope-open"></i></td>
        <td>이혜인</td>
        <td>모두 수고 많으셨습니다^^</td>
        <td>22.02.22 21:11</td>
    </tr>
</table>

<nav class="mail-pagination">
    <ul class="pagination">
        <li>
            <a href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">6</a></li>
        <li><a href="#">7</a></li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li><a href="#">10</a></li>
        <li>
            <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>