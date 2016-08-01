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
	<a href="${pageContext.request.contextPath }/jsp/showUser.jsp">新增</a>
	<table border="1">
		<thead>
			<tr>
				<th>id</th>
				<th>用户名</th>
				<th>密码</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList }" var="user">
				<tr>
					<td>${user.id }</td>
					<td>${user.name }</td>
					<td>${user.pwd }</td>	
					<td><a href="${pageContext.request.contextPath }/User/findById?id=${user.id }">修改</a></td>
					<td><a href="${pageContext.request.contextPath }/User/delUser?id=${user.id }">删除</a></td>	
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>