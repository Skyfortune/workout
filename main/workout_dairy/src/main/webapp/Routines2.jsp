<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<!-- 임시로 지정, 나중에 데이터베이스로 바꿀 것 -->
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>루틴 고르기</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">루틴 목록</h1>
		</div>
	</div>
	<div class="jumbotron">
      <div class="row" align="left">
      <%@ include file="dbconn.jsp" %>
      <%
      //	PreparedStatement pstmt = null;
      //	ResultSet rs = null;
      	String sql = "select * from product";
      	pstmt = conn.prepareStatement(sql);
      	rs = pstmt.executeQuery();
      	while (rs.next()) {
      
      	//for(int i=0; i<listofRoutines.size(); i++){
      	//	Routine routine = listofRoutines.get(i);
      	
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
        %>
        if(rs != null)
        	rs.close();
        if(pstmt != null)
        	pstmt.close();
        if(conn != null)
           conn.close();
    %>
           </div>
        <hr>
      </div>
      
      <%-- <div class="container">
      <div class="row" align="left">
      <%
      	for(int i=0; i<listofRoutines.size(); i++){
      		Routine routine = listofRoutines.get(i);
      	
      %>
        <div class="col-md-4">
        	<h3><%=routine.getRname() %></h3>
        	<p><%=routine.getCategory() %>
        	<p><%=routine.getterm() %>Week
        </div>
        <%
        		}
        %>
        <hr>
      </div> --%>
      
      <%@ include file="footer.jsp"%>

</body>
</html>