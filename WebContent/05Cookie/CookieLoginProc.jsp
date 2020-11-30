<%@page import="util.CookieUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 파일명 : CookieLoginProc.jsp --%>
<%
//클라이언트가 전송한 폼값을 받아온다. 
String userid = request.getParameter("user_id");
String userpw = request.getParameter("user_pw");
/*
	checkbox의 경우 항목이 여러개이므로 주로 getParameterValues()를 
	통해 배열로 받는것이 기본이지만, 항목이 하나만 있는 경우에는 아래와같이
	처리가능하다. 
*/
String id_save = request.getParameter("id_save");

if("kosmo".equals(userid) && "1234".equals(userpw)){
	//JDBC연동없이 kosmo/1234일때 로그인 성공
	
	//로그인 성공시 회원 아이디를 쿠키로 생성한다.
	CookieUtil.makeCookie(request,response,"LoginId","kosmo",60*60*24);
	//아이디 저장하기 체크박스를
	if(id_save==null){
		//체크해제하면 쿠키를 삭제한다.
		CookieUtil.makeCookie(request,response,"SaveId","",0);
	}
	else{
		//체크하면 쿠키를 생성한다.
		CookieUtil.makeCookie(request,response,"SaveId","kosmo",60*60*24);
	}
	//로그인과 쿠키생성이 완료되면 기존 로그인 페이지로 이동한다.
	response.sendRedirect("CookieLoginMain.jsp");
}
else{
	//로그인에 실패한경우 리퀘스트 영역에 속성을 저장한 후..
	request.setAttribute("ERROR_MSG", "회원이 아닙니다");
	//로그인 페이지로 포워드(전달) 한다. 
	request.getRequestDispatcher("CookieLoginMain.jsp").forward(request, response);
	//포워드한 페이지는 리퀘스트영역이 공유되므로 위에 저장한 속성을 읽어올수있다.
}
%>






