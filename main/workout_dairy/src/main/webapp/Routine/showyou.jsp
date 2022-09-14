<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap ver:4.6 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	
	
	
	
<title>당신의 루틴</title>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	<!-- 이제 루틴을 적용시켜서 보여주어야 합니다. DB를 받고 연산을 해서 표를 생성시킵니다. -->
	<!-- 여기서는 표를 만드는것부터 해봅시다  -->
	<!-- 샘플부터 만드는것, 루틴 정보를 받아서 프로그램 프리뷰를 하는것부터 -->
	<%@ include file="/dbconn.jsp"%>
			<%
				String sql = "select * from mad_cow";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
	<div>
	
	
	<table class="table table-hover">
				
		<thead>
			<tr>
				<th scope="col">1 WEEK</th>
				<th scope="col">운동1</th>
				<th scope="col">운동2</th>
				<th scope="col">운동3</th>
			</tr>
		</thead>
		<tbody>
			<tr class="table-active">
				<th scope="row">종목</th>
				<td>스쿼트</td>
				<td>벤치</td>
				<td>로우</td>
			</tr>
		</tbody>

		<tbody>
			<tr class="table-Default">
				<th scope="row">무게</th>
				<td>5x5 / <%=rs.getInt("squat") %></td>
				<td>5x5 / <%=rs.getInt("bench_press") %></td>
				<td>5x5 / <%=rs.getInt("barbell_row") %></td>
			</tr>
		</tbody>
	</table>

	<br>


	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">2 WEEK</th>
				<th scope="col">운동1</th>
				<th scope="col">운동2</th>
				<th scope="col">운동3</th>
			</tr>
		</thead>
		<tbody>
			<tr class="table-active">
				<th scope="row">1주차</th>
				<td>운동종목1</td>
				<td>운동종목2</td>
				<td>운동종목3</td>
			</tr>
		</tbody>

		<tbody>
			<tr class="table-Default">
				<th scope="row">1주차 계속</th>
				<td>무게/횟수1</td>
				<td>무게/횟수1</td>
				<td>무게/횟수1</td>
			</tr>
		</tbody>
	</table>
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
	<jsp:include page="/footer.jsp" />
</body>
</html>