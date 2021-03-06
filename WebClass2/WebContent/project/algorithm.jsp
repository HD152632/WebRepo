<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "contextPath" value="${ pageContext.request.contextPath }"/>
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
		onmouseout="menu_out(this)"><a class="nav-link" href="mazeHome.jsp">Main</a></li>
	<li class="nav-item" onmouseover="menu_over(this);"
		onmouseout="menu_out(this)"><a class="nav-link" href="algorithm.jsp">알고리즘</a></li>
	</ul>
    <%-- 세션에 사용자 정보가 없는 경우 --%>
  </div>
</nav>
	<img src="img1.png" style="width:180px"/> 우선 출발지에서 도착 지점까지 이어지는 길을 만듭니다. 이 때, 길은 도착지점쪽으로 이동하는 경향이 있지만 도착지점과 반대방향으로 이동하기도 합니다. 만약 길이 갈림길을 만들지 않으면 더이상 나아갈 수 없는 경우, <br>
	<img src="img2.png" style="width:180px"/> 한 점을 잡고, 그 점에서 원래 있던 길까지 이어지도록 길을 만듭니다. 이를 반복합니다.<br>
	<img src="img3.png" style="width:180px"/> <img src="img4.png" style="width:180px"/> <img src="img5.png" style="width:180px"/> <br>
	<img src="img6.png" style="width:180px"/> 그러면 이렇게 미로가 완성됩니다. 정답을 보여 줄 땐 현재 노랗게 표시된 부분도 표시하고, 그렇지 않을 땐 다른 길과 동일하게 표시합니다.
	
</body>
</html>