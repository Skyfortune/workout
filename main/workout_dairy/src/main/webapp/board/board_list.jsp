<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap ver:4.6 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>게시판</title>
</head>
<body>
<jsp:include page="/menu.jsp" />
<!-- 세션값 체크 -->
<% 
String loginId=null;
if(session.getAttribute("Id") != null){
	loginId = (String)session.getAttribute("Id");
}
%>

<div class="container">
	<div class="row">
		<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
		<thead>
		<tr>
		<th style="background-color: #eeeeee; text-align:center;">번호</th>
		<th style="background-color: #eeeeee; text-align:center;">제목</th>
		<th style="background-color: #eeeeee; text-align:center;">작성자</th>
		<th style="background-color: #eeeeee; text-align:center;">작성일</th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<!-- 테스트 -->
				<td>1</td>
				<td>제목란</td>
				<td>이름</td>
				<td>2022-09-20</td>
			</tr>
		</tbody>
		</table>
		<!-- 글쓰기 버튼 생성 -->
		<a href="write.jsp" class="btn btn-primary pull-right"  style="float: right;" >글쓰기</a>
	</div>
	
</div>

<jsp:include page="/footer.jsp" />
</body>
</html>