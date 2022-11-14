<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/7/2022
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
  <!--        phần thông tin logo furama-->
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
            <a class="nav-link active" href="/">Home</a>
            <a class="nav-link active"  href="/facility">Service</a>
            <a class="nav-link active" href="#">Employ</a>
            <a class="nav-link active" href="/customer">Customer</a>

          </div>
        </div>
        <form class="d-flex">
          <input name="searchByName" class="form-control me-2" type="search" placeholder="searchByName"
                 aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </nav>
    <!--Phần kết thúc navbar-->
    <!--Hình ảnh di chuyển-->
    <div style="height: 70%" id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
      <div style="height: 100%" class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="3000">
          <img src="https://danangfantasticity.com/wp-content/uploads/2018/08/trien-lam-anh-nghe-thuat-tung-canh-mung-le-2-9-tai-furama-resort-da-nang-02.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="3000">
          <img src="https://bazantravel.com/cdn/medias/uploads/53/53114-furama-resort-da-nang-11.jpg" class="d-block w-100" alt="...">
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
    <!--end hình ảnh-->
    <!--navbar dưới -->
    <nav class="navbar navbar-expand-lg navbar-light bg-success" style="height: 10%">
      <div class="container-fluid ">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0  ">
            <li  class="nav-item">
              <a class="nav-link active" href="#">
                <div class="card" style="width: 18rem">
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item">1/11/2022</li>
                  </ul>
                </div>
              </a>
            </li>
            <li  class="nav-item">
              <a class="nav-link active" href="#">
                <div class="card" style="width: 18rem">
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item">1/11/2022</li>
                  </ul>
                </div>
              </a>
            </li>


          </ul>
        </div>
      </div>
    </nav>
    <!--end navbar-->
  </div>
  <!--        phần kết thúc logo-->
  <!--phần kết thúc chiều cao chung-->
  </body>
</html>
