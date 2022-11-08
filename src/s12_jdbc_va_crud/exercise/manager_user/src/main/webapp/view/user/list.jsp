<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/7/2022
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<h1>Trang danh sách quản lý sản phẩm</h1>
<a href="/user?action=add">Thêm mới</a>
<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <form class="d-flex" action="/user">
            <input  class="form-control me-2"  name="search" type="search" placeholder="Search" aria-label="Search">
            <input type="submit">
        </form>
        <%--        onclick="searchByName(${product.getName()})"--%>
    </div>

</nav>
<table>
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="user" items="${userList}" varStatus="status">
        <tr>
            <td>${user.getId()}</td>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
            <td><a href="/user?action=edit&id=${user.getId()}">Edit</a></td>
            <td><a href="/user?action=delete&id=${user.getId()}">Delete</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
