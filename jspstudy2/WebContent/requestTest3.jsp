<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie ck : cookies){
				out.println(ck.toString() + "<br/>");
			}
		}
		out.println("<hr/>");	
		out.println("서버 도메인명: " + request.getServerName());	
		out.println("<hr/>");	
		out.println("서버 포트번호: " + request.getServerPort());	
		out.println("<hr/>");
		out.println("요청 URL: " + request.getRequestURL().toString());	
		out.println("<hr/>");
		out.println("요청 URI: " + request.getRequestURI());	
		out.println("<hr/>");
		out.println("ContextPath: " + request.getContextPath());	
		out.println("<hr/>");
	%>
</body>
</html>