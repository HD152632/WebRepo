<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="${contextPath}/css/signin.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<ul class="navbar-nav mr-auto">
	<li class="nav-item" onmouseover="menu_over(this);"
		onmouseout="menu_out(this)"><a class="nav-link" href="project/mazeHome.jsp">Main</a></li>
	<li class="nav-item" onmouseover="menu_over(this);"
		onmouseout="menu_out(this)"><a class="nav-link" href="project/algorithm.jsp">알고리즘</a></li>
	</ul>
    <%-- 세션에 사용자 정보가 없는 경우 --%>
  </div>
</nav>


<p id="viewer"><span style="line-height:50%"><%= request.getAttribute("maze") %></span></p>


<form id="signupForm" class="form-signin" method="post" action="${contextPath}/mazeanswer">
    <button class="btn btn-lg btn-primary btn-block" type="submit" >정답 확인</button>
     시드:<input name="seed" id="seed" value=<%=request.getAttribute("seed") %> readonly></input>가로 크기:<input name="mazewidth" id="mazewidth" value="<%=request.getAttribute("sizewidth") %>" readonly></input>세로 크기:<input name="mazeheight" id="mazeheight" value="<%=request.getAttribute("sizewidth") %>" readonly></input>
</form>

</body>
</html>