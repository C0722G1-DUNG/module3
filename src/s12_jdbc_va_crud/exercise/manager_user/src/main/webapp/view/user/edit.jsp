<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/7/2022
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/user">Quay lại trang list</a>
<form action="/user?action=edit" method="post">
    <pre>ID:
    <input type="hidden" name="id" value="${user.getId()}">
    </pre>
    <pre>Name:
        <input type="text" name="name" value="${user.getName()}" >
    </pre>
    <pre> cost:<input type="text" name="email" value="${user.getEmail()}" >
    </pre>
    <pre>description:<input type="text" name="country" value="${user.getCountry()}" >
    </pre>
    <pre> cập nhật<input type="submit" name="submid" >
    </pre>
</form>
</body>
</html>
