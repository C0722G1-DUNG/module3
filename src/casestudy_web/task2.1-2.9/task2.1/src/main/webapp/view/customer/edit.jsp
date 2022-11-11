<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/9/2022
  Time: 8:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/customer">Quay lại trang list</a>
<form action="/customer?action=edit" method="post">
    <pre>ID:
    <input type="number" name="id" value="${customer.getId()}" readonly>
    </pre>


    <pre>customer_type_id:
<%--        <input type="number" name="customer_type_id" value="${customer.getCustomer_type_id()}" >--%>
        <select name="customer_type_id" >
            <c:forEach var="ct" items="${customerListType}">
                <option value="${ct.getIdCustomerType()}" ${ct.getIdCustomerType()==customer.getId()?"checked":""} >
                    ${ct.getNameCustomerType()}
<%--                    <c:if test="${ct.getIdCustomerType()==customer.getId()}">--%>
<%--                        --%>
<%--                    </c:if>--%>
                </option>
            </c:forEach>
        </select>

    </pre>


    <pre> name:<input type="text" name="name" value="${customer.getName()}" >
    </pre>
    <pre>date_of_birth:<input type="text" name="date_of_birth" value="${customer.getDate_of_birth()}" >
    </pre>

    <pre>gender:
        <input type="radio" name="gender" ${customer.isGender() ==true ?"checked":""}>
        <label >Nam</label>
        <input type="radio" name="gender" ${customer.isGender() ==false ?"checked":""}>
        <label >Nữ</label>

    </pre>
    <pre>id_card:<input type="text" name="id_card" value="${customer.getId_card()}" >
    </pre>
    <pre>phone_number:<input type="text" name="phone_number" value="${customer.getPhone_number()}" >
    </pre>
    </pre>
    <pre>email:<input type="text" name="email" value="${customer.getEmail()}" >
    </pre>
    </pre>
    <pre>address:<input type="text" name="address" value="${customer.getAddress()}" >
    </pre>
    <pre> cập nhật<input type="submit" name="submid" >
    </pre>
</form>

</body>
</html>
