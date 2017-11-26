<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	%>
	
	<%
	try{	
		String jdbcUrl= "jdbc:mysql://localhost:3306/webclass";
		String userId= "root", userPwd= "root";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, userId, userPwd);
		
		String selectsql="select * from randmap";
		pstmt=conn.prepareStatement(selectsql);
		
		rs = pstmt.executeQuery();
		if(!rs.next()){
			String inputsql = "insert into randmap values(?,?,?)";
			pstmt = conn.prepareStatement(inputsql);
			pstmt.setInt(1,(int)(Math.floor(Math.random() * 100000000)+1));
			pstmt.setInt(2,50);
			pstmt.setInt(3,50);
			pstmt.executeUpdate();
		}
		
		selectsql="select * from randmap";
		pstmt=conn.prepareStatement(selectsql);
		
		rs = pstmt.executeQuery();
		
		rs.next();
%>
		<button onclick="randomNum()">랜덤 숫자 뽑기</button><p id="rseed">
		<form id="signupForm" class="form-signin" method="post" action="${contextPath}/maze" onsubmit="return dbEdit();">
	    <label>시드: <input type="text" name="seed" id="seed" class="form-control" value=<%=String.valueOf(rs.getInt("seed")) %> required></label><br>
		<label>가로 크기 : <input type="text" name="mazewidth" id="mazewidth" class="form-control" value=<%=String.valueOf(rs.getInt("width")) %> required></label><br>
		<label>세로 크기 : <input type="text" name="mazeheight" id="mazeheight" class="form-control" value=<%=String.valueOf(rs.getInt("height")) %> required></label><br>
	    <button class="btn btn-lg btn-primary btn-block" type="submit" >미로 생성</button>
	  	</form>
	  	
	  	
<%
	pstmt = conn.prepareStatement("delete from randmap");
	pstmt.executeUpdate();
	} catch(SQLException e) {out.println(e.getMessage());}
	if(pstmt!=null) pstmt.close();
	if(conn != null) conn.close();
%>
	
	<script type="text/javascript">
		function randomNum(){
				var result = Math.floor(Math.random() * 100000000) + 1;	
				document.getElementById("seed").value=result;
		}
		
		function dbEdit(){
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			String inputsql = "insert into randmap values(?,?,?)";
			pstmt = conn.prepareStatement(inputsql);
			pstmt.setInt(1,document.getElementById("seed").value);
			pstmt.setInt(2,document.getElementById("mazewidth").value);
			pstmt.setInt(3,document.getElementById("mazeheight").value);
			pstmt.executeUpdate();
		}
	</script>
	
	
</body>
</html>