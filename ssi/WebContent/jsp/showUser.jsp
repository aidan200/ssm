<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/User/save">
		用户id：<input type="text" name="id" value="${user.id }"  <c:if test="${user.id==undefined}">disabled="true"</c:if>><br>
		用户名：<input type="text" name="name" value="${user.name }" ><br>
		密码：<input type="text" name="pwd" value="${user.pwd }"><br>
		<input type="submit"><br>
	</form>
</body>
</html>