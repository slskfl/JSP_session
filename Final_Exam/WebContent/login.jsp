<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id="nina";
	String pwd="1234";
	String name="니나";


	if(id.equals(request.getParameter("id"))&&
			pwd.equals(request.getParameter("pwd"))){
		session.setAttribute("loginUser", name); //세션 생성
		response.sendRedirect("main.jsp");// 강제적으로 페이지 이동
	} else{
		response.sendRedirect("loginForm.jsp");
	}
%>

${loginUser.uerId}