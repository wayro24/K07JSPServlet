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

/*
	연습문제] 작성용 교안에 있는 getMemberDTO()를 MemberDAO
		클래스에 작성한후 아래 코드럴 적당히 수정하여 로그인 페이지에
		회원의 이름이 출력되도록 구현하시오.
*/

// boolean isMember = dao.getMemberDTO(id, pw);
MemberDTO dto = dao.getMemberDTO(id, pw);

if(dto.getId()!=null){
	session.setAttribute("USER_ID", dto.getId());
	session.setAttribute("USER_PW", dto.getPass());
 	session.setAttribute("USER_NAME",dto.getName());
	response.sendRedirect("Login.jsp");
}
else{
	request.setAttribute("ERROR_MSG", "넌 회원이 아니시군-_-;");
	request.getRequestDispatcher("Login.jsp").forward(request,response);
}


%>





