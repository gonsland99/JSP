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
		pageContext.setAttribute("pageScope", "pageValue");
		request.setAttribute("requestScope", "requestValue");
	%>
	
	<%=pageContext.getAttribute("pageScope") %>
	<hr/>
	<%=request.getAttribute("requestScope") %>
	<jsp:forward page="attributeTest5.jsp"></jsp:forward>
</body>
</html>