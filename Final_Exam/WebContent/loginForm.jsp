<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<!-- loginAction으로 바꾸기 -->
	<form method="post" action="login.jsp">
		<label for="userid">아이디 : </label>
		<input type="text" name="id" id="userid"/> 
		<!-- 값을 넘길때에는 name을, label과 매핑을 id를 이용 -->
		<label for="userpwd">암호 : </label>
		<input type="password" name="pwd" id="userpwd"/>
		<br>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>