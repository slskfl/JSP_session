<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		Enumeration names=session.getAttributeNames();
		while(names.hasMoreElements()){
			String name=names.nextElement().toString(); //name이 id, pwd, age라는 이름을 가짐
			String value=session.getAttribute(name).toString(); // name의 객체의 값을 가져와!
			out.println(name +": " + value+"<br>");
		}
	%>
</body>
</html>