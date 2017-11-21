<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var = "contextPath" value="${ pageContext.request.contextPath }"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<ul class="navbar-nav mr-auto">
	<li class="nav-item" onmouseover="menu_over(this);"
		onmouseout="menu_out(this)"><a class="nav-link" href="project/mazeHome.jsp">메뉴 1 </a></li>
	<li class="nav-item" onmouseover="menu_over(this);"
		onmouseout="menu_out(this)"><a class="nav-link" href="project/algorithm.jsp">메뉴 2</a></li>
	</ul>
    <%-- 세션에 사용자 정보가 없는 경우 --%>
  </div>
	
	<button onclick="randomNum()">랜덤 숫자 뽑기</button><p id="rseed"></p>
	<form id="signupForm" class="form-signin" method="post" action="${contextPath}/maze">
    <label>시드: <input type="text" name="seed" id="seed" class="form-control" required>123456</input></label><br>
	<label>가로 크기 : <input type="text" name="mazewidth" id="mazewidth" class="form-control" required>30</input></label><br>
	<label>세로 크기 : <input type="text" name="mazeheight" id="mazeheight" class="form-control" required>30</input></label><br>
    <button class="btn btn-lg btn-primary btn-block" type="submit" >미로 생성</button>
  	</form>
	
	<script type="text/javascript">
		function randomNum(){
				var result = Math.floor(Math.random() * 100000000) + 1;	
				document.getElementById("rseed").innerHTML=result;
		}
	</script>
</body>
</html>