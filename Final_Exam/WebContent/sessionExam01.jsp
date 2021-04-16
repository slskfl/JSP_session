<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션생성</title>
</head>
<body>
	Exam01 수행 후 Exam02 또는 Exam03번을 실행하세요.
<!-- https://velog.io/@max9106/JSP-Session%EC%84%B8%EC%85%98-j0k5ccyiub -->
<!-- https://m.blog.naver.com/PostView.nhn?blogId=park7671&logNo=30122046307&proxyReferer=https:%2F%2Fwww.google.com%2F -->
	<%
		session.setAttribute("id", "nina");
		session.setAttribute("pwd", "1234");
		session.setAttribute("age", 20);
		
	%>
</body>
</html>