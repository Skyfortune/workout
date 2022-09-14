<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- <%@ include file="../dbconn.jsp" %> --%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = (request.getParameter("id") == null) ? "": request.getParameter("id").trim();

	String squat1 = request.getParameter("squat");
	int squat=Integer.parseInt(squat1);
	
	String deadlift1 = request.getParameter("deadlift");
	int deadlift=Integer.parseInt(deadlift1);
	
	String bench_press1 = request.getParameter("bench_press");
	int bench_press=Integer.parseInt(bench_press1);
	
	String military_press1 = request.getParameter("military_press");
	int military_press=Integer.parseInt(military_press1);
	
	String barbell_row1 = request.getParameter("barbell_row");
	int barbell_row=Integer.parseInt(military_press1);

	String term1 = request.getParameter("term");
	int term=Integer.parseInt(term1);
	
	Date currentDatetime = new Date(System.currentTimeMillis());
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
%>

<sql:setDataSource var="dataSource"
	url="jdbc:oracle:thin:@localhost:1521:orcl" 
	driver="oracle.jdbc.driver.OracleDriver" user="workout" password="1234" /> 

<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO mad_cow VALUES (?, ?, ?, ?, ?, ?, ?)
    <sql:param value="<%=id%>" />
	<sql:param value="<%=squat%>" />
	<sql:param value="<%=deadlift%>" />
	<sql:param value="<%=bench_press%>" />
	<sql:param value="<%=military_press%>" />
	<sql:param value="<%=barbell_row%>" />
	<sql:param value="<%=term%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="resultInfo.jsp?msg=1" />
</c:if>

