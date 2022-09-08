<%@ page contentType="text/html; charset=utf-8"%>

<head>
<title>1RepMax(1RM) 계산기</title>
<SCRIPT LANGUAGE="JavaScript">
	
</SCRIPT>
</head>
<body bgcolor="" text="#15354d" link="#15354d" vlink="#15354d"
	alink="#15354d" onLoad="hide('tblreps');">
	<p>
		<h2 align="center">
	</h2>
	</p>

<script>
<!-- hide this script tag's contents from old browsers
	// JavaScript Form Validation  
	function check_values(form) {
		show('tblreps');
		foundError = false;

		// FIRST CHECK FOR BLANK FIELDS

		// Make sure the weight field is not blank
		if (isFieldBlank(form.LBS)) {
			alert("들어 올린 중량을 입력하세요!");
			//  foundError = true;
		}

		// NOW LET'S CHECK THAT THE FIELDS ARE VALID

		// If we don't alredy have an error, check the LBS  Field
		if (foundError == false && isValidNumber(form.LBS) == false) {
			alert("You Entered An Unbelievable Weight Amount.");
			foundError = true;
		}

		if (foundError == false) {
			update_maxsingle(form)

		} else {

			document.open();
			document
					.write("<HTML><HEAD><TITLE>Form Verification </TITLE></HEAD>");
			document.write("<BODY BGCOLOR=FFFFFF TEXT=000000><CENTER>");
			document
					.write("<H1><BLINK>You Have Made An Input Error</BLINK> </H1>");
			document
					.write("<H1>Please Use Your Back Button And Reenter Your Data </H1>");
			document.write("</CENTER></BODY></HTML>");
			document.close();

		}

	}
	// Check for a blank field
	function isFieldBlank(theField) {
		if (theField.value == "")
			return true;
		else
			return false;
	}

	function isValidNumber(theField) {
		inStr = theField.value;
		inLen = inStr.length;

		// If this is a 4 digit number XXXYYYZZZZ
		if (inLen <= 4) {

			for (var i = 0; i < inLen; i++) {
				var ch = inStr.substring(i, i + 1)

				if (ch < "0" || "9" < ch)
					return false;
			}

			return true;
		}

		return false;
	}

	function update_maxsingle(form) {

		var coeff = new Array(15)
		coeff[1] = "1.0"
		coeff[2] = ".95"
		coeff[3] = ".93"
		coeff[4] = ".90"
		coeff[5] = ".87"
		coeff[6] = ".85"
		coeff[7] = ".83"
		coeff[8] = ".80"
		coeff[9] = ".77"
		coeff[10] = ".75"
		coeff[11] = ".73"
		coeff[12] = ".70"
		coeff[13] = ".67"
		coeff[14] = ".65"
		coeff[15] = ".63"

		var Reps = getSelectValue(form.REPS);
		var MAXSINGLE = form.LBS.value / coeff[Reps];
		var it = MAXSINGLE;
		form.ONERM1.value = it * 1.0;
		form.ONERM2.value = it * .95;
		form.ONERM3.value = it * .93;
		form.ONERM4.value = it * .90;
		form.ONERM5.value = it * .87;
		form.ONERM6.value = it * .85;
		form.ONERM7.value = it * .83;
		form.ONERM8.value = it * .80;
		form.ONERM9.value = it * .77;
		form.ONERM10.value = it * .75;
		form.ONERM11.value = it * .73;
		form.ONERM12.value = it * .70;
		form.ONERM13.value = it * .67;
		form.ONERM14.value = it * .65;
		form.ONERM15.value = it * .63;

	}

	function getSelectValue(selectObject) {
		return selectObject.options[selectObject.selectedIndex].text
	}

	function hide(id) {
		document.getElementById(id).style.display = 'none';
	}

	function show(id) {
		document.getElementById(id).style.display = '';
	}
// -- done hiding from old browsers -->
</script>
	<form name="theform">
		<div align="center">
			<center>
				<table border="0" cellpadding="0">
					<!-- <tr>
             <td align="center" colspan="0"> </td>
         </tr>
         <tr>
             <td align="center" valign="top" colspan="0"> </td>
         </tr>
  -->

					</B>
				</table>
			</center>
		</div>
		<p align="center"></p>
		<div align="center">
			<center>
				<table border="2" cellpadding="0">
					<tr>
						<td colspan="3"><font size="2"><FONT COLOR="#15354d">들어올린무게
							</font><input type="text" size="3" name="LBS"> kg </td>
						<td><font size="2"><FONT COLOR="#15354d">최대 반복
									횟수 (10미만을 권장합니다) </font><select name="REPS" size="1">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
							</select>개</td>
					</tr>
				</table>

				<table border="1" cellpadding="0" Id="tblreps">
					<tr>
						<td align="center"><font size="2">
						<!-- 한개만 가져가자  -->
						<FONT COLOR="#15354d">1 RM = </font></td>
						<td align="center"><input type="text" size="4" name="ONERM1"></td>
					</tr>

				</table>
				<table>
					<tr>
						<td align="center"><input type="button" value="계산"
							onclick="check_values(this.form)"; ><br></td>
						<td align="center"><input type="reset" value=" 리셋"
							onclick="hide('tblreps')"; > <br></td>
					</tr>
					</td>
				</table>
				<br>
</body>
</html>




