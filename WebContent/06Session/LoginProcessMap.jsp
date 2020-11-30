<%@page import="java.util.Map"%>
<%@page import="model.MemberDTO"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- LoginProcess.jsp --%>
<%
String id = request.getParameter("user_id");
String pw = request.getParameter("user_pw");

String drv = application.getInitParameter("JDBCDriver");
String url = application.getInitParameter("ConnectionURL");

MemberDAO dao = new MemberDAO(drv, url);

//방법3 : Map 컬렉션에 저장된 회원정보를 통해 세션영역에 저장
Map<String, String> memberMap = dao.getMemberMap(id,pw);

if(memberMap.get("id")!=null){
	session.setAttribute("USER_ID", memberMap.get("id"));
	session.setAttribute("USER_PW", memberMap.get("pass"));
 	session.setAttribute("USER_NAME",memberMap.get("name"));
	response.sendRedirect("Login.jsp");
}
else{
	request.setAttribute("ERROR_MSG", "넌 회원이 아니시군-_-;");
	request.getRequestDispatcher("Login.jsp").forward(request,response);
}


%>





