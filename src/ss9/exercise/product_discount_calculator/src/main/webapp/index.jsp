<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/2/2022
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style type="text/css">
      .login {
        height:220px; width:230px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
      }
      .login input {
        padding:5px; margin:5px
      }
    </style>
  </head>
  <body>
  <form method="post" action="/shopping">
    <div class="login">
      <lable>Mô tả của sản phẩm:</lable>
    <input type="text" name="product_description" placeholder="Product Description"><br>
      <lable>Giá niêm yết của sản phẩm</lable>
    <input type="number" name="list_price" placeholder="List Price"><br>
      <lable>Tỷ lệ chiết khấu (phần trăm)</lable>
      <input type="number" name="discount_percent" placeholder="Discount Percent"><br>
    <input type="submit" value="Calculate Discount" >
    </div>
  </form>
  </body>
</html>
