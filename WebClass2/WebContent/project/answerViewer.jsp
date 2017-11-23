<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p id="viewer"><span style="line-height:85%"><%= request.getAttribute("maze") %></span></p>


<form id="signupForm" class="form-signin" method="post" action="${contextPath}/mazeanswer">
    <button class="btn btn-lg btn-primary btn-block" type="submit" >정답 확인</button>
     시드:<input name="seed" id="seed" value=<%=request.getAttribute("seed") %> readonly></input>가로 크기:<input name="mazewidth" id="mazewidth" value="<%=request.getAttribute("sizewidth") %>" readonly></input>세로 크기:<input name="mazeheight" id="mazeheight" value="<%=request.getAttribute("sizewidth") %>" readonly></input>
</form>
</body>
</html>