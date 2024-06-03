<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Functions Tag</title>
</head>
<body>	
	<c:set var="str" value="JSTL project is running on Tomcat Server"></c:set>
	
	Length: ${fn:length(str)}
	
	<c:forEach items= "${fn:split(str,' ')}" var="s">
	${s}
	</c:forEach>
</body>
</html>