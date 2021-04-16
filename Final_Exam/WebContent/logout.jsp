<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<% 
		session.invalidate(); //세션연결 끊기
	%>
	<!-- 화면이 불리고 난 후에 실행 -->
	<script>
		alert("로그아웃이 되었습니다.");
		location.href="loginForm.jsp";
	</script>
</body>
</html>