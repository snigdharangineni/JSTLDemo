<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getAttribute("label").toString();
		out.println(name);
	%>
	
	${label}
	<c:forEach items = "${students}" var = "s">
		${s} <br/>
	</c:forEach>
	
	<sql:setDataSource var="db" driver = "org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/postgres" user="postgres" password="1234"></sql:setDataSource>
	
	<sql:query var="rs" dataSource="${db}">select * from gadgets</sql:query>
	
	<c:forEach items="${rs.rows}" var="gadget">
	
		<c:out value="${gadget.gid}"></c:out> :<c:out value="${gadget.gname}"></c:out> :<c:out value="${gadget.price}"></c:out>
	</c:forEach>
</body>
</html>