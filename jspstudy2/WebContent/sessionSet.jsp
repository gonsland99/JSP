<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%
	session.setAttribute("name", "session test!");
	List<String> list = new ArrayList();
	list.add("수박");
	list.add("참외");
	list.add("메론");
	list.add("사과");
	list.add("포도");
	session.setAttribute("list", list);
%>
<script>
	location.href="sessionTest.jsp";
</script>