<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/5/2022
  Time: 11:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>bạn có muốn xóa không</h1>
<a href="/product">Quay lại trang list</a>
<form action="/product?action=remove" method="post">
    <pre>ID:
    <input type="hidden" name="id" value="${product.getId()}">
    </pre>
    <pre>Name:
        <input type="text" name="name" value="${product.getName()}" readonly>
    </pre>
    <pre> cost:<input type="text" name="cost" value="${product.getCost()}" readonly>
    </pre>
    <pre>description:<input type="text" name="description" value="${product.getDescription()}" readonly>
    </pre>
    <pre>producer:<input type="text" name="producer" value="${product.getProducer()}" readonly>
    </pre>
    <pre> Xóa<input type="submit" name="submid" >
    </pre>
</form>
</body>
</html>
