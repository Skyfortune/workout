<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<!-- bootstrap ver:4.6 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:oracle:thin:@localhost:1521:orcl" 
	driver="oracle.jdbc.driver.OracleDriver" user="workout" password="1234" /> 

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM MEMBER WHERE ID=?
   <sql:param value="<%=sessionId%>" />
</sql:query>


	
	<title>회원 수정</title>
</head>
<body onload="init()">
	<jsp:include page="/menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 수정</h1>
		</div>
	</div>

	<c:forEach var="row" items="${resultSet.rows}">
	<!-- 기존 주소 불러오기 -->
	<c:set var="locate_state" value="${row.locate_state}" />
	<c:set var="locate_city" value="${row.locate_city}" />
	<!-- 각종 기록 불러오기 -->
	<c:set var="squat" value="${row.squat }" />
	<c:set var="deadlift" value="${row.deadlift }" />
	<c:set var="bench_press" value="${row.bench_press }" />
	<c:set var="military_press" value="${row.military_press }" />
	
	<div class="container">
		<form name="newMember" class="form-horizontal"
			action="processUpdateMember.jsp" method="post"
			onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id"
						value="<c:out value='${row.id }'/>" />
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="text" class="form-control"
						placeholder="password" value="<c:out value='${row.password }'/>" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">비밀번호확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="text" class="form-control"
						placeholder="password_confirm" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control"
						placeholder="name" value="<c:out value='${row.name }'/>" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<c:set var="gender" value="${row.gender }" />
					<input name="gender" type="radio" value="남"	<c:if test="${gender.equals('남')}"> <c:out value="checked" /> </c:if> >남 
						<input name="gender" type="radio" value="여"	<c:if test="${gender.equals('여')}"> <c:out value="checked" /> </c:if> >여
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소(시/도)</label>
				<div class="col-sm-4  ">
						<select name="locate_state"	id="locate_state">
						<option>서울특별시</option>
						<option>부산광역시</option>
						<option>대구광역시</option>
						<option>인천광역시</option>
						<option>광주광역시</option>
						<option>대전광역시</option>
						<option>울산광역시</option>
						<option>세종특별자치시</option>
						<option>경기도</option>
						<option>강원도</option>
						<option>충청북도</option>
						<option>충청남도</option>
						<option>전라북도</option>
						<option>전라남도</option>
						<option>경상북도</option>
						<option>경상남도</option>
						<option>제주특별자치도</option>
					</select> 
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2">주소(동/면/읍)</label>
				<div class="col-sm-3">
					<input type="text" name="locate_city"  value="${locate_city}">
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2">선수출신(엘리트)</label>
				<div class="col-sm-10">
					<input name="elite" type="checkbox" value="Y">
					 <a class="text-secondary">전국체전,국제대회 참가하신 경력이 있다면 체크 바랍니다.</a>
				</div>
				</div>

			<div>
			<div class="alert alert-dismissible alert-secondary">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<h3>1rm 계산기</h3>
			<jsp:include page="/Onereps.jsp" />
			</div>
			</div>
			<br>

			<div class="form-group  row">
				<label class="col-sm-2">스쿼트 1rm</label>
				<div class="col-sm-3">
					<input name="squat" type="number" class="form-control" placeholder="kg단위로 입력해주세요." 
					value='${row.squat}' />
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2">데드리프트 1rm</label>
				<div class="col-sm-3">
					<input name="deadlift" type="number" class="form-control" placeholder="kg단위로 입력해주세요." 
					value='${row.deadlift}' />
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2">벤치프레스 1rm</label>
				<div class="col-sm-3">
					<input name="bench_press" type="number" class="form-control" placeholder="kg단위로 입력해주세요." 
					value='${row.bench_press}' />
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">밀리터리프레스 1rm</label>
				<div class="col-sm-3">
					<input name="military_press" type="number" class="form-control" placeholder="kg단위로 입력해주세요." 
					value='${row.military_press}' />
				</div>
			</div>





			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="회원수정 "> 
					<a href="deleteMember.jsp" class="btn btn-primary">회원탈퇴</a>
				</div>
			</div>
		</form>	
	</div>
	</c:forEach>
</body>
</html>
<script type="text/javascript">
	
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>