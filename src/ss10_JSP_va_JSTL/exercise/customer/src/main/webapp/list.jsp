<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/3/2022
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<table class="table table-dark">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Ngày sinh</th>
        <th>Địa Chỉ</th>
        <th>ảnh</th>
    </tr>
    <c:forEach var="student" items="${studentList}" varStatus="statust">
        <tr>
            <td>${statust.count}</td>
            <td>${student.getName()}</td>
            <td>${student.getBirth_of_day()}</td>
            <td>${student.getAddress()}</td>
            <td><img src="${student.getImage()}" style="width: 100px;height: 100px" alt=""></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
