<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%
	String name;
	if(session.getAttribute("name") != null){
		name = (String)session.getAttribute("name");
	} else {
		name = "세션 값 없음";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 테스트</h2>
	<button onclick="location.href='sessionSet.jsp'">세션 값 저장</button>
	<button onclick="location.href='sessionDel.jsp'">세션 값 삭제</button>
	<button onclick="location.href='sessionInv.jsp'">세션 초기화</button>
	<h3><%=name %></h3>
	<hr/>
	<h3><%=session.isNew() %></h3>
	<%
		if(session.getAttribute("list") != null){
			List<String> list = (List)session.getAttribute("list");
			for(int i=0; i<list.size(); i++){
	%>			
				<h4><%=list.get(i) %></h4><br/>
	<%			
			}
		}
	%>
</body>
</html>