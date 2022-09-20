<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<!-- 루틴의 정보를 입력받습니다. 일단은 Mad-cow 정도가 적용되게 만들고,
하드코딩으로 하는 한이 있더라도, mad-cow는 적용이 잘 되도록 만들어봅니다. -->
<!-- 나중에는 어떤 루틴을 하더라도 제작이 되도록 만들 필요가 있습니다. -->
<!-- 시퀀스 에러인지 페이지가 넘어가지지 않음 -->

<!-- bootstrap ver:4.6 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	
<!-- squat,deadlift,bench,press,row,term(고정시키기) -->	
<script type="text/javascript">
	function checkForm() {
		
 		let form1 =  "newRoutine";
//  		let form2 = document.forms[form1];
//  		let form3 = document.forms[form1].elements["id"];
		
		if (!document.forms[form1].elements["squat"].value) {
			alert("스쿼트 란을 입력해주세요.");
			return false;
		}
		if (!document.forms[form1].elements["deadlift"].value) {
			alert("데드리프트 란을 입력해주세요.");
			return false;
		}
		if (!document.forms[form1].elements["bench_press"].value) {
			alert("벤치프레스 란을 입력해주세요.");
			return false;
		}
		if (!document.forms[form1].elements["military_press"].value) {
			alert("밀리터리프레스 란을 입력해주세요.");
			return false;
		}
		if (!document.forms[form1].elements["barbell_row"].value) {
			alert("바벨로우 란을 입력해주세요.");
			return false;
		}
	}
</script>
<title>매드카우 루틴 정보입력</title>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<!-- 자동으로 이름 받아서 할 수 있도록 만듭시다. -->
			<h1 class="display-3">매드카우 루틴 정보 입력</h1>
		</div>
	</div>

		
			
	<div class="container">
		<form name="newRoutine" class="form-horizontal"  
		action="processInfo.jsp" method="post" 
		onsubmit="return checkForm()">
			
			<div class="form-group  row">
				<label class="col-sm-2 ">이름</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" 
					placeholder=
					<%
					if(session.getAttribute("sessionId") !=null){
						String loginId = (String) session.getAttribute("sessionId");
						out.println(loginId);
					}
					else{
						out.println("이름");
					}
					%>
					 >
				</div>
			</div>
			
			
			<div class="form-group  row">
				<label class="col-sm-2 ">스쿼트</label>
				<div class="col-sm-3">
					<input name="squat" type="number" class="form-control" placeholder="squat" >
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2 ">데드리프트</label>
				<div class="col-sm-3">
					<input name="deadlift" type="number" class="form-control" placeholder="deadlift" >
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2 ">벤치프레스</label>
				<div class="col-sm-3">
					<input name="bench_press" type="number" class="form-control" placeholder="bench_press" >
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2 ">밀리터리프레스</label>
				<div class="col-sm-3">
					<input name="military_press" type="number" class="form-control" placeholder="military_press" >
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2 ">바벨로우</label>
				<div class="col-sm-3">
					<input name="barbell_row" type="number" class="form-control" placeholder="barbell_row" >
				</div>
			</div>
			
			
			
			<div class="form-group  row ">
				<label class="col-sm-2">루틴기간</label>
				<div class="col-sm-10"> 
					<select name="term">
						<option>8</option>
					</select>
					주
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
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " value="등록 " > 
					<input type="reset" class="btn btn-primary " value="취소 " onclick="reset()" >
				</div>
			</div>
		</form>
	</div>
</body>
</html>