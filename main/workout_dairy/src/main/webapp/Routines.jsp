<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Routine" %>
<jsp:useBean id="routineDAO" class="dao.RoutineRepository" scope="session" />
<!-- 임시로 지정, 나중에 데이터베이스로 바꿀 것 -->
<!DOCTYPE html>
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
	<%
		ArrayList<Routine> listofRoutines = routineDAO.getAllRoutines();
	%>
	
	
	<div class="jumbotron">
      <div class="row" align="left">
      <%
      	for(int i=0; i<listofRoutines.size(); i++){
      		Routine routine = listofRoutines.get(i);
      	
      %>
        <div class="col-md-4">
        	<h3><%=routine.getRname() %></h3>
        	<p><%=routine.getCategory() %>
        	<p><%=routine.getterm() %>Week
        	<br>
        	<button type="button" href="#" class="btn btn-secondary">자세히</button>
        	<br>
        	<button type="button" href="#" class="btn btn-success">실행</button>
        	
        </div>
        <%
        		}
        %>
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