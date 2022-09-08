<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%></p>
		<p>지속적으로 문제가 발생한다면 관리자를 통해 연락을 주세요</p>
		<p>
			<a href="main.jsp" class="btn btn-secondary"> 메인으로 돌아가기 &raquo;</a>
		</p>
	</div>
</body>
</html>


<!-- 
web.xml

<error-page>
	<error-code>404</error-code>
	<location>/exceptionNopage.jsp</location>
</error-page>

입력하기
 -->