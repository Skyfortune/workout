<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.User_dao" %>
<%@ page language="java" contentType="text/html; chartset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
							<!-- 패키지 경로 설정 -->
<jsp:setProperty name="user" property="userid" />
<jsp:setProperty name="user" property="userpassword" />
<!DOCTYPE html>
<html>
<head>
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	//	클래스명     생성        클래스명
		User_dao userDAO = new User_dao();
		int result = userDAO.login(user.getUserid(), user.getUserpassword());
		
		if(result == 1){
			PrintWriter script = response.getWriter();
			script.println("<scipt>");
			script.println("alert('로그인 성공')");
			script.println("location.href='main.jsp'");
			script.println("</scipt>");
		}else if(result ==0){
			PrintWriter script = response.getWriter();
			script.println("<scipt>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</scipt>");
		}else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<scipt>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</scipt>");
		}else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<scipt>");
			script.println("alert('데이터베이스 오류입니다.')");
			script.println("history.back()");
			script.println("</scipt>");
		}
	%>

</body>
</html>