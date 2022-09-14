<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>루틴 정보 입력</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="alert alert-dismissible alert-secondary">
		%해당루틴이름% 사전 정보 입력
		<%@ include file="Onereps.jsp"%>
	</div>

	<div>
		// 해당 루틴의 필요한 것을 입력 받아서 자동으로 폼을 만들기 <br> //가능하다면 1rm을 계산하는것을 받아서
		각 운동마다 입력 할 수 있게 하는것도 나쁘지 않을 것 같다 <br> //가로로 배열할지, 세로로 배열할지는 나중에
		결정 <br> //일단 복잡해지니까 최대한 심플하게 만드는것을 목표로 한다 <br>

		<div class="form-group">
			<form action="./processWorkout_info.jsp" class="form-horizontal" method="post">
				<label>무슨무슨 운동종목</label> 
				<label class="col-form-label" for="inputDefault">무게</label> 
					<input type="text" class="form-control" placeholder="kg단위로 적어주세요" id="inputDefault">
				<label class="col-form-label" for="inputDefault">횟수</label> 
				<input type="text" class="form-control" placeholder="10이하의 횟수를 권장합니다." id="inputDefault">

				<table>
					<tr>
						<td align="center"><input type="button" value="제출" onclick=""><br></td>
						<td align="center"><input type="reset" value=" 리셋" onclick="">
							<br></td>
					</tr>
					</td>
					</form>
					</div>
				</table>







				<%@ include file="footer.jsp"%>
</body>
</html>