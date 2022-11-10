<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/7/2022
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container-fluid vh-100">
    <div class="row " style="justify-content: space-evenly ;height:15%">
        <div style="height: 100%" class="col-sm-12 col-md-3  ">
            <img height="100%" src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" alt="">
        </div>
        <div style="height: 100%" class="card-group col-sm-12 col-md-3">

            <div style="height: 20%" class="row">
                <div class="col-sm-12 col-md-12">
                    <img style="height: 10%" src="https://www.vatc.org/wp-content/uploads/2018/07/TripAdvisor-logo.png"
                         alt="...">
                </div>
            </div>
            <div style="height: 20%" class="row">
                <div class="col-sm-12 col-md-12">
                    <a href="#">2,766 Review</a>
                </div>
            </div>

        </div>
        <div style="height: 100%" class="col-sm-12 col-md-3 d-flex"
             style=" border: 1px ;padding: 10px; width: 300px; height: 200px;text-align: justify; font-size: 100px">
            <img src="../../img/location_on_FILL0_wght400_GRAD0_opsz48.png" height="48" width="48"/>
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
    <!--phần navbar-->
    <nav style="height: 10%" class="navbar navbar-expand-lg navbar-light bg-success">
        <div class="container-fluid">
            <div class="collapse navbar-collapse justify-content-center " id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" href="#">Home</a>
                    <a class="nav-link active" href="#">Service</a>
                    <a class="nav-link active" href="#">Employ</a>
                    <a class="nav-link active" href="#">Customer</a>

                </div>
            </div>
            <form class="d-flex">
                <input name="searchByName" class="form-control me-2" type="search" placeholder="searchByName"
                       aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <!--phần add thông tin facility-->
    <div style="height: 10% ;text-align: center;color: #0d6056;width: 100%" class="row">
        <div class="col-sm-12 col-md-10 ">
            <h2>Customer</h2>
        </div>
        <div class="col-sm-12 col-md-2 ">

            <a href="/customer?action=add">Thêm mới Customer</a>
        </div>


    </div>
    <table class="table table-success table-striped" id="tableCustomer">
        <thead>
        <tr>
            <th>STT</th>
            <th>Customer_type_id</th>
            <th>Name</th>
            <th>Date_of_birth</th>
            <th>Gender</th>
            <th>Id-card</th>
            <th>Phone_number</th>
            <th>Email</th>
            <th>Address</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.getId()}</td>
                <c:forEach var="ct" items="${customerListType}">
                    <c:if test="${ct.idCustomerType==customer.getCustomer_type_id()}">
                        <td>${ct.nameCustomerType}</td>
                    </c:if>
                </c:forEach>
                <td>${customer.getName()}</td>
                <td>${customer.getDate_of_birth()}</td>
                <c:if test="${customer.isGender()}">
                    <td>Nam</td>
                </c:if>
                <c:if test="${!customer.isGender()}">
                    <td>Nữ</td>
                </c:if>

                <td>${customer.getId_card()}</td>
                <td>${customer.getPhone_number()}</td>
                <td>${customer.getEmail()}</td>
                <td>${customer.getAddress()}</td>
                <td><a href="/customer?action=edit&id=${customer.getId()}">Edit</a></td>
                <td>
<%--                    <a href="/customer?action=delete&id=${customer.getId()}">Delete</a>--%>
                    <button onclick="infoDelete('${customer.getId()}','${customer.getName()}')" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">


        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <span>Bạn có muốn xóa khách hàng :</span>
                <span style="color: red" id="deteteName"></span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <form action="/customer" method="get">
                    <input type="text" hidden name="action" value="delete">
                    <input type="text" hidden id="deleteId" name="deleteId">
                    <button type="submit" class="btn btn-primary">Delete</button>
                </form>

            </div>
        </div>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
<script>
    function infoDelete(id, name) {
        debugger
        document.getElementById("deleteId").value = id;
        document.getElementById("deteteName").innerText=name;
    }
</script>
</html>
