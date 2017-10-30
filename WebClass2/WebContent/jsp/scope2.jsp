<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>scope2</h1>
<form action="/WebClass/scope" method="post">
<input type="text" name="id">
<input type="hidden" name="pwd" value="test">
<button type="submit">send</button>
</form>

<form>
<h1>id: <%= request.getParameter("id") %></h1>
<h1>pwd: <%= request.getParameter("pwd") %></h1>
<h1>request: <%= request.getAttribute("key") %></h1>
<h1>session: <%= session.getAttribute("key") %></h1>
<h1>application: <%= application.getAttribute("key") %></h1>

</body>
</html>