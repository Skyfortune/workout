<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Routine"%>
<%@ page import="dao.RoutineRepository"%>
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
//		String id = request.getParameter("id");
//		Routine routine = routineDAO.getRoutineById(id);
	%>
	<%@ include file="dbconn.jsp" %>
	<%
		String id = request.getParameter("id");
		String sql = "select * from routine where p_id = '"+id+"'";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next())
		{
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./upload/<%=rs.getString("p_id")%>.jpg" style="width:100%">
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_category")%>
				<p>
					<b>훈련기간</b> :
					<%=rs.getString("p_term")%>
					주
				<p>
					<b>상세정보</b> :
					<%=rs.getString("p_text")%><br>
					<a href="./Routine/addInfo.jsp" class="btn btn-success">루틴 실행</a> <a
						href="./Routines.jsp" class="btn btn-secondary"> 루틴 목록 </a>
			</div>
		</div>
		<hr>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
		conn.close();
	%>
	
	
	<%@ include file="footer.jsp"%>
</body>
</html>