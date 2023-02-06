<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>회원정보</h2>

<br>
<form>

<table align="center" border ="1">

	<tr>
		<td>아이디</td>		
		<td>
		<input type="text" name="id">		
		<input type="button" value="중복확인" onclick="openWin(this.form.id.value)">
		</td>
	</tr>
	<tr>	
		<td>이름</td>
		<td>
		<input type="name" name="name">
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<td>비밀번호확인</td>
		<td><input type="password" name="repwd"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
		<input type="radio" name="sex" value="남" checked>남
		<input type="radio" name="sex" value="여" checked>여
		</td>
	</tr>
	<tr>
		<td >이메일</td>
		<td><input type="text" name="email">
		@
		<select name="mail2">
		<option>naver.com</option>
		<option>daum.net</option>
		<option>gamil.com</option>
		</select>				
		</td>
	</tr>
	
	<tr>
		<td>핸드폰</td>
		<td>
		<select name="phone">
		<option>010</option>
		<option>011</option>
		<option>017</option>
		</select>				
		-<input type="text" name = "phone_mid" size="5">		
		-<input tpye="text" name = "phone_fin" size="5"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>
		<input type="text" name = "home_num1" size="5">-
		<input type="text" name = "home_num2" size="5">-
		<input type="text" name = "home_num3" size="5">
		</td>
	<tr>
		<td>주소</td>
		<td>
		<input type="text" id="Address"/>
		</td>
	</tr>
		
	
	<tr>
			<td colspan="2">
			<input type="button" value="회원가입" onclick="check()">&nbsp;
			<input type="reset" value="다시 작성">&nbsp;</td>
	</tr>
</table>
</form>
</div>
</body>

</html>