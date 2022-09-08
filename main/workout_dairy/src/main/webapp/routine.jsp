<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Routine"%>
<jsp:useBean id="routineDAO" class="dao.RoutineRepository" scope="session" />
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>루틴 상세 정보</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">루틴 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Routine routine = routineDAO.getRoutineById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=routine.getRname()%></h3>
				<p><%=routine.getCategory()%>
				<p>
					<b>훈련기간</b> :
					<%=routine.getterm()%>
					주
				<p>
					<b>상세정보</b> :
					<%=routine.getText()%>
					<a href=" # " class="btn btn-success">루틴 실행</a> <a
						href="./routine.jsp" class="btn btn-secondary"> 루틴 목록 </a>
			</div>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>