<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<jsp:useBean id="mybean" class="com.test.jsp.dto.BeanTest" scope="page"></jsp:useBean>
<jsp:useBean id="yourbean" class="com.test.jsp.dto.BeanTest" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="name" name="mybean" value="이순신"/>
	<%
		out.println(mybean.getName());
	
	%>
	<hr/>
	<%
		yourbean.setName("김영희");
	%>
	<jsp:getProperty property="name" name="yourbean"/>
</body>
</html>