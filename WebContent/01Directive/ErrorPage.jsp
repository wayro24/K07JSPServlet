<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
    <%--
    isErrorPage 지시어
     : 현재 JSP페이지가 에러처리를 담당하는지 구분하는 속성으로 
     false가 디폴트값이다. 에러처리를 위해서는 true로 설정해야한다.
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>에러발생됨 : 관리자에게 문의하세요</h2>
	<h3>연락처 : 010-1234-5678</h3>
	<h3>서버 업그레이드 중입니다.</h3>
	<img src="https://www.google.com/imgres?imgurl=http%3A%2F%2Fjesusdom.net%2Ffiles%2Fattach%2Fimages%2F19879%2F879%2F019%2F238ecf2772d9571cdddc4a91eef0e0e9.jpg&imgrefurl=http%3A%2F%2Fjesusdom.net%2Frhdtkwnd&tbnid=PYDX_wCKEnP5hM&vet=12ahUKEwjMjPaPjpDtAhVKdJQKHfrVDkwQMygLegUIARDjAQ..i&docid=FPtOzFQaCZsGtM&w=605&h=512&q=%EA%B3%B5%EC%82%AC%EC%A4%91&ved=2ahUKEwjMjPaPjpDtAhVKdJQKHfrVDkwQMygLegUIARDjAQ" alt="" />
	<h3>
		에러내용 : <%=exception.getMessage() %>
	</h3>
</body>
</html>