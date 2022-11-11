<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/10/2022
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>đây là trang list Facility</h1>
<table>
    <tr>
        <th>STT</th>
        <th>Tên dịch vụ</th>
        <th>Diện tích</th>
        <th>Gía</th>
        <th>Số người</th>
        <th>Kiểu thuê</th>
        <th>Loại dịch vụ</th>
        <th>Tiêu chuẩn phòng</th>
        <th>Mô tả</th>
        <th>Diện tích hồ bơi</th>
        <th>Số tầng</th>
        <th>Dịch vụ đi kèm</th>
    </tr>
    <c:forEach var="facility" items="${facilityList}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${facility.getNameFacility()}</td>
            <td>${facility.getAreaFacility()}</td>
            <td>${facility.getCost()}</td>
            <td>${facility.getMaxPeople()}</td>
            <td>${facility.getRentTypeId().getNameRentType()}</td>
            <td>${facility.getFacilityTypeId().getNameFacilityType()}</td>
            <td>${facility.getStandardRoom()}</td>
            <td>${facility.getDescriptionOtherConvenience()}</td>
            <td>${facility.getPollArea()}</td>
            <td>${facility.getNumberOfFloors()}</td>
            <td>${facility.getFacilityFree()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
