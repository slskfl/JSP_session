<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 실습</title>
</head>
<body>
	<%
		String id=session.getId(); //각 접속에 대한 세션 고유 ID 를 문자열 형태로 반환
		long lastTime=session.getLastAccessedTime(); //머문시간
		long createTime=session.getCreationTime();
		long timeUsed=(lastTime-createTime)/60000;
		int inactive = session.getMaxInactiveInterval() / 60;
		boolean new_session = session.isNew();
	%>
	세션 아이디는 <%=id %> 입니다.<br>
	당신이 웹 사이트에서 머문 시간은 <%=timeUsed %>분 입니다.<br>
	세션의 유효 시간은 <%=inactive %> 분입니다.<br>
	세션이 새로 만들어 졌나요?<br>
	
	<%
		if(new_session){
			//세션이 새로 만들어짐
			out.println("네. 세션이 만들어졌습니다.");
		}else{
			out.println("아니요. 새로운 세션을 만들어졌습니다.");
		}
	%>
	
	<%
		//설정된 세션의 값을 모두 삭제합니다. >> 새로고침을 할 경우 세션id가 계속 변경됨 >> 유효하지 않음
		session.invalidate();
	
		out.print("<hr>");
		if(request.isRequestedSessionIdValid() == true){
			out.print("세션 아이디가 유효합니다."); 
		}else { 
			out.print("세션 아이디가 유효하지 않습니다."); 
		}
	
	%>
</body>
</html>