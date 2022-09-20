<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.DAO"%>

<jsp:useBean id="bbs" class="bbs.DTO" scope="page" />
<jsp:setProperty name="bbs" property="b_title" />
<jsp:setProperty name="bbs" property="b_content" />
			<!-- 빈 이름이다 -->

<!DOCTYPE html>
<html>
<head>
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	//현재 세션 상태 체크
	String loginId = null;
	
/* 	if (session.getAttribute("sessionid") != null) {
		loginId = (String) session.getAttribute("sessionid");
	}
	//로그인 한 사람만 글을 쓸 수 있도록 코드를 수정하기
	if(loginId == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다!')");
		script.println("location.href='../member/loginMember.jsp'");
		script.println("</script>");
	}else{
		//미입력 부분 체크
		if(bbs.getB_title()==null || bbs.getB_content()==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력 안 된 사항이 있습니다!')");
			script.println("history.back()");
			script.println("</script>");
		}else{ */
			
			//정상적으로 입력이 되었다면 글쓰기 로직 실행
			DAO bbsDAO = new DAO();
			int result = bbsDAO.write(bbs.getB_title(), loginId , bbs.getB_content() );
			
			//데이터베이스 오류인 경우
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패했습니다.!')");
				script.println("history.back()");
				script.println("</script>");
				
				//글쓰기가 정상적으로 실행되면 알림창을 띄우고 게시판 메인으로 이동
			}else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기 성공!')");
				script.println("location.href='board_list.jsp'");
				script.println("</script>");
			}
	//	}
		
//	}
	%>

</body>
</html>