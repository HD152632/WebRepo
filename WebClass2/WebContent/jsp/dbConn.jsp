<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JDBC Connection example</h1>
<%
	Connection conn = null;
	Statement stmt= null;
	try {
		String jdbcUrl= "jdbc:mysql://localhost:3306/webclass";
		String userId= "root", userPwd= "root";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, userId, userPwd);
		stmt= conn.createStatement(); out.println("database successfully opened.");
	} catch(SQLException e) {out.println(e.getMessage());} 
	finally {
		if(stmt!= null) stmt.close();
		if(conn != null) conn.close();
	}
%>
</body>
</html>