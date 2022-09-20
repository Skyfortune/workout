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
	<!-- 샘플부터 만드는것, 루틴 정보를 받아서 프로그램 프리뷰를 하는것부터 -->
	<!-- DB출력에 대해서 좀 더 생각해볼 것  -->
	<%@ include file="/dbconn.jsp"%>
			<%
				String sql = "select * from mad_cow_plan ORDER BY term ";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
	<div>
	
	
	<table class="table table-hover">
				
		<thead>
			<tr>
				<th scope="col"><%=rs.getInt("term") -1%>WEEK</th>
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
				<td>5x5 / <%=rs.getInt("squat") %>kg</td>
				<td>5x5 / <%=rs.getInt("bench_press") %>kg</td>
				<td>5x5 / <%=rs.getInt("barbell_row") %>kg</td>
			</tr>
		</tbody>
	</table>

	<br>


	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col"><%=rs.getInt("term") %> WEEK</th>
				<th scope="col">운동1</th>
				<th scope="col">운동2</th>
				<th scope="col">운동3</th>
			</tr>
		</thead>
		<tbody>
			<tr class="table-active">
				<th scope="row">종목</th>
				<td>스쿼트</td>
				<td>프레스</td>
				<td>데드리프트</td>
			</tr>
		</tbody>

		<tbody>
			<tr class="table-Default">
				<th scope="row">무게</th>
				<td>5x5 / <%=rs.getInt("SQUAT2") %>kg</td>
				<td>5x5 / <%=rs.getInt("MILITARY_PRESS") %>kg</td>
				<td>1x5 / <%=rs.getInt("deadlift") %>kg</td>
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