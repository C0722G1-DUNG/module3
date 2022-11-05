<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/5/2022
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>trang edit</h1>
<a href="/product">QUay lại trang list</a>
<c:if test="${mess!=null}">
    <span>${mess}</span>
</c:if>
<form action="/product?action=edit" method="post">
     <pre>ID:
    <input type="hidden" name="id" value="${product.getId()}">
    </pre>
    <pre>Name:
        <input type="text" name="name" value="${product.getName()}">
    </pre>
    <pre> cost:<input type="text" name="cost" value="${product.getCost()}">
    </pre>
    <pre>description:<input type="text" name="description" value="${product.getDescription()}">
    </pre>
    <pre>producer:<input type="text" name="producer" value="${product.getProducer()}">
    </pre>
    <pre> mời bạn lưu lựa chọn<input type="submit" name="submid" >
    </pre>
</form>
</body>
</html>
