<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/4/2022
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang danh sách quản lý sản phẩm</h1>
<a href="/product?action=add">Thêm mới</a>
<table>
<tr>
    <th>STT</th>
    <th>ID</th>
    <th>Name</th>
    <th>Cost</th>
    <th>description</th>
    <th>producer</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>
 <c:forEach var="product" items="${productList}" varStatus="status">
<tr>
    <td>${status.count}</td>
    <td>${product.getId()}</td>
    <td>${product.getName()}</td>
    <td>${product.getCost()}</td>
    <td>${product.getDescription()}</td>
    <td>${product.getProducer()}</td>
    <td><a href="/product?action=edit&id=${product.getId()}">Edit</a></td>
    <td><a href="/product?action=remove&id=${product.getId()}">Delete</a></td>

</tr>
 </c:forEach>
</table>
</body>
</html>
