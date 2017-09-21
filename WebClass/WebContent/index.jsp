<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--3.선언부 --%>>

<%! private static final String DEFAULT_NAME = "Guest"; %>
<% 
	//java code 작성
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;
%>
<%-- 표현식 --%>>
<h1>Hello, <%=name %></h1>
	
</body>
</html>