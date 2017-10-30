<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="price" value="1000000"></c:set>
${price }<br/>
<fmt:formatNumber value="${price}" type="number"></fmt:formatNumber>
<fmt:formatNumber value="${price}" type="percent"></fmt:formatNumber>
<fmt:formatNumber value="${price}" type="currency"></fmt:formatNumber>

<c:set var="now" value="<%=new java.util.Date() %>"/>
<fmt:formatNumber value="${now}" type="date" dateStyle="full"></fmt:formatNumber>
<fmt:formatNumber value="${now}" type="date" dateStyle="medium"></fmt:formatNumber>
<fmt:formatNumber value="${now}" type="time" timeStyle="full"></fmt:formatNumber>
<fmt:formatNumber value="${now}" type="time" timeStyle="medium"></fmt:formatNumber>
<fmt:formatNumber value="${now}" type="both" pattern="yyyy/MM/dd hh:mm:ss"></fmt:formatNumber>
</body>
</html>