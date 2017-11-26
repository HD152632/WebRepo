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
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		String jdbcUrl= "jdbc:mysql://localhost:3306/webclass";
		String userId= "root", userPwd= "root";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, userId, userPwd);
		stmt= conn.createStatement(); out.println("database successfully opened.");
		
		pstmt = conn.prepareStatement("delete from user where id = 'test'");
		pstmt.executeUpdate();
		
		String inputsql = "insert into user values(?,?,?,?)";
		pstmt = conn.prepareStatement(inputsql);
		pstmt.setString(1,"test");
		pstmt.setString(2,"testpwd");
		pstmt.setString(3,"testN");
		pstmt.setString(4,"testNN");
		pstmt.executeUpdate();
		
		out.println("member 테이블에 새로운 레코드를 추가했습니다.");
		
		String selectsql="select * from user";
		pstmt = conn.prepareStatement(selectsql);
		
		rs = pstmt.executeQuery();
		rs.next();%>
		<p><%= rs.getString("id") %>
<%
	} catch(SQLException e) {out.println(e.getMessage());} 
	finally {
		if(pstmt!=null) pstmt.close();
		if(stmt!= null) stmt.close();
		if(conn != null) conn.close();
	}
%>
</body>
</html>