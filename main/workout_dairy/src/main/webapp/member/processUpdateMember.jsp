<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- <%@ include file="../dbconn.jsp" %> --%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String locate_state = request.getParameter("locate_state");
	String locate_city = request.getParameter("locate_city");
	
	String elite = request.getParameter("elite");
	
	String squat1 = request.getParameter("squat");
	int squat=Integer.parseInt(squat1);
	
	String deadlift1 = request.getParameter("deadlift");
	int deadlift=Integer.parseInt(deadlift1);
	
	String bench_press1 = request.getParameter("bench_press");
	int bench_press=Integer.parseInt(bench_press1);
	
	String military_press1 = request.getParameter("military_press");
	int military_press=Integer.parseInt(military_press1);

	java.util.Date currentDatetime = new java.util.Date(System.currentTimeMillis());
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
%>

<sql:setDataSource var="dataSource"
	url="jdbc:oracle:thin:@localhost:1521:orcl" 
	driver="oracle.jdbc.driver.OracleDriver" user="workout" password="1234" /> 

<sql:update dataSource="${dataSource}" var="resultSet">
   UPDATE MEMBER SET PASSWORD=?, NAME=?, GENDER=?, locate_state=?, locate_city=?, 
   ELITE=?, squat=?, DEADLIFT=?, bench_press=?, military_press=? WHERE ID=?
	<sql:param value="<%=password%>" />
	<sql:param value="<%=name%>" />
	<sql:param value="<%=gender%>" />
	<sql:param value="<%=locate_state%>" />
	<sql:param value="<%=locate_city%>" />
	<sql:param value="<%=elite%>" />
	<sql:param value="<%=squat%>" />
	<sql:param value="<%=deadlift%>" />
	<sql:param value="<%=bench_press%>" />
	<sql:param value="<%=military_press%>" />
	<sql:param value="<%=id%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="resultMember.jsp?msg=0" />
</c:if>

