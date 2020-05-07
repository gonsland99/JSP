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
		request.setAttribute("data", "데이터");
		pageContext.setAttribute("page", "페이지컨텍스트");
		pageContext.forward("pageContextTest2.jsp");
		//pageContext 허용범위는 자신의 페이지까지
	%>
</body>
</html>