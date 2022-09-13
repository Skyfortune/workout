<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">루틴 목록</h1>
		</div>
	</div>
	<div class="jumbotron">
		<div class="row" align="left">
		<%@ include file="dbconn.jsp"%>
			<%
				String sql = "select * from routine";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				
				<h3><%=rs.getString("p_name") %></h3>
        	<p><%=rs.getString("p_category") %>
        	<p><%=rs.getString("p_text") %>
        	<p><%=rs.getString("p_term") %>Week
        	<br>
        	<a class="btn btn-secondary" 
        		href="./routine.jsp?id=<%=rs.getString("p_id")%>" 
        		role="button">자세히</a>
        	<a class="btn btn btn-success" href="#2" role="button">바로 실행</a>
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
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>