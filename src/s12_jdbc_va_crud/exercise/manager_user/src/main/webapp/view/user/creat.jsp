<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/7/2022
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang thêm mới</h1>
<a href="/user">Quay lại list</a>
<c:if test="${mess!=null}">
    <span style="color: red">${mess}</span>
</c:if>
<form action="/user?action=add" method="post">
    <pre>Name:
        <input type="text" name="name">
    </pre>
    <pre>email:
        <input type="text" name="email">
    </pre>
    <pre> cost:<input type="text" name="country">
    </pre>
    <pre> mời bạn lưu lựa chọn<input type="submit" name="submid">
    </pre>
</form>
</body>
</html>
