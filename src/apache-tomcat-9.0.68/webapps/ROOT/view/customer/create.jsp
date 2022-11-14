<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/9/2022
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<a href="/customer">Quay lại list</a>
<c:if test="${mess!=null}">
    <span   style="color: red">${mess}</span>
</c:if>
<div  class="container-fluid vh-100">
    <div class="row " style="justify-content: space-evenly ;height:15%">
        <div style="height: 100%"  class="col-sm-12 col-md-3  ">
            <img height="100%" src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" alt="">
        </div>
        <div style="height: 100%" class="card-group col-sm-12 col-md-3">

            <div style="height: 20%"class="row">
                <div class="col-sm-12 col-md-12">
                    <img style="height: 10%" src="https://www.vatc.org/wp-content/uploads/2018/07/TripAdvisor-logo.png" alt="...">
                </div>
            </div>
            <div style="height: 20%"class="row">
                <div class="col-sm-12 col-md-12">
                    <a href="#">2,766 Review</a>
                </div>
            </div>

        </div>
        <div style="height: 100%" class="col-sm-12 col-md-3 d-flex" style=" border: 1px ;padding: 10px; width: 300px; height: 200px;text-align: justify; font-size: 100px">
            <img src="../../icon/location_on_FILL0_wght400_GRAD0_opsz48.png" height="48" width="48"/>
            <p>
                103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam

                <a href=""> 7.0 km</a> từ Sân bay Quốc tế Đà Nẵng</p>
        </div>
        <div style="height: 100%" class="col-sm-12 col-md-3 ">
            <i style="float: left" class="fa fa-facebook-official" aria-hidden="true"><a href="#">
                duydungne.furamaresorthcom</a></i>
            <i class="fa fa-phone" aria-hidden="true">
                84-236-3847 333/888</i>

        </div>
    </div>


    <div style="height: 100%" class="row">
        <div style="height: 100%" class="col-sm-12 col-md-6 ">
           <form action="/customer?action=add" method="post">
               <div class="mb-3">
    <pre>customer_type_id:
<%--        <input type="text" name="customer_type_id">--%>
        <select name="customer_type_id" >
            <c:forEach var="ct" items="${customerListType}">
                <option value="${ct.getIdCustomerType()}">
                        ${ct.getNameCustomerType()}
                </option>
            </c:forEach>
        </select>
    </pre>

               </div>
               <div class="mb-3">
    <pre>name:
        <input type="text" name="name" value="${name}" placeholder="nhập tên của bạn vào"><br>
        <c:if test="${!errorMap.isEmpty()}">
            <p style="color:red;">${errorMap.get("name")}</p><br>
        </c:if>
    </pre>
               </div>
               <div class="mb-3">
    <pre> date_of_birth:
        <input type="date" name="date_of_birth">
    </pre>
               </div>
                   <div class="mb-3">
    <pre> gender:
        <input type="radio" name="gender" value="true">Nam
        <input type="radio" name="gender" value="false">Nữ
    </pre>
                   </div>
               <div class="mb-3">
    <pre> id_card:
        <input type="text" name="id_card" required pattern="\d{5}" title="Id card chưa đúng định dạng vui lòng nhập đủ 5 số" ><br>
    </pre>
               </div>
               <div class="mb-3">
    <pre> phone_number:
        <input type="text" name="phone_number" required pattern="\d{10}" title="vui lòng nhập đúng định dạng sdt (10 số)"><br>
    </pre>
               </div>
               <div class="mb-3">
    <pre> email:
        <input type="text" name="email">
    </pre>
               </div>
               <div class="mb-3">
    <pre> address:
        <input type="text" name="address">
    </pre>
               </div>
    <pre> mời bạn lưu lựa chọn<input type="submit" name="submid">
    </pre>
           </form>
    </div>

            <div style="height: 100%" class="col-sm-12 col-md-6">
               <div  id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                   <div style="height: 100%" class="carousel-inner">
                       <div class="carousel-item active" data-bs-interval="3000">
                           <img  src="https://danangfantasticity.com/wp-content/uploads/2018/08/trien-lam-anh-nghe-thuat-tung-canh-mung-le-2-9-tai-furama-resort-da-nang-02.jpg" class="d-block w-100" alt="...">
                       </div>
                       <div class="carousel-item" data-bs-interval="3000">
                           <img  src="https://bazantravel.com/cdn/medias/uploads/53/53114-furama-resort-da-nang-11.jpg" class="d-block w-100" alt="...">
                       </div>
                       <div class="carousel-item" data-bs-interval="3000">
                           <img src="https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2020/06/Review-Furama-Resort-Da-Nang-3.jpg" class="d-block w-100" alt="...">
                       </div>
                   </div>
                   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                       <span class="visually-hidden">Previous</span>
                   </button>
                   <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                       <span class="carousel-control-next-icon" aria-hidden="true"></span>
                       <span class="visually-hidden">Next</span>
                   </button>
               </div>
           </div>
           </div>

    </div>
</body>
</html>
