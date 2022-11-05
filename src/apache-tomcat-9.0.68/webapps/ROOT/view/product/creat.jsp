<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/4/2022
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang thêm mới</h1>
<a href="/product">Quay lại list</a>
<c:if test="${mess!=null}">
    <span style="color: red">${mess}</span>
</c:if>
<form action="/product?action=add" method="post">
    <pre>ID:
    <input type="text" name="id">
    </pre>
    <pre>Name:
        <input type="text" name="name">
    </pre>
    <pre> cost:<input type="text" name="cost">
    </pre>
    <pre>description:<input type="text" name="description">
    </pre>
    <pre>producer:<input type="text" name="producer">
    </pre>
    <pre> mời bạn lưu lựa chọn<input type="submit" name="submid">
    </pre>
</form>
</body>
</html>
