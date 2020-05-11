<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println(config.getServletName());
		out.println("<hr/>");
		Enumeration e = config.getInitParameterNames();
		while(e.hasMoreElements()){
			String name = (String)e.nextElement();
			out.println(name + ":" + config.getInitParameter(name));
			out.println("<hr/>");
		}
	%>
</body>
</html>