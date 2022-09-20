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
	String loginId = null;
	if (session.getAttribute("id") != null) {
		loginId = (String) session.getAttribute("id");
	}
	%>

	<div class="container">
		<div class="row">
			<form methed="post" action="writeAction.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: white; text-align: center;">게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text class=form-control" plaveholder="글 제목"
								name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placefolder="글내용"
									name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>
	<!-- 게시판 글쓰기 양식 영역 끝 -->

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>


	<jsp:include page="/footer.jsp" />
</body>
</html>