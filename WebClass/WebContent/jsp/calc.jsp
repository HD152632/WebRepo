<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숫자 합 계산</title>
</head>
<body>
<form>
<input type="number" name="num" min="1" required>
<button type="submit">계산</button>
</form>
<% 
	//java code 작성
	String n = request.getParameter("num");
	int num;
	if(n!=null){
		num=Integer.valueOf(n);
		num=num*(num+1)/2;
%>

<h1>1 ~ <%=n %>까지의 합은 <%=num %>입니다. </h1>

<% 
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
%>
현재 일시는 <%=sdf.format(new Date()) %>

</body>
</html>