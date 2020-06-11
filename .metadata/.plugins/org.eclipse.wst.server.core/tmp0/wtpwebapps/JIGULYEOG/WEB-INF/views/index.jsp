<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>지구력</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500|Gaegu:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/personal_css/main.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/ficon.png">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
    <style>
      body{
        font-family: 'Poppins','Jeju Gothic', serif;
      }
    </style>
    
  </head>
  <body>
    
  <!-- START nav -->
 <%@ include file="./header.jsp" %>
  <!-- END nav -->
  
  <div class="block-31" style="position: relative;">
    <div class="owl-carousel loop-block-31 ">
      <div class="block-30 item" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_.png');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-12" style="text-align: center;">
              <h3 class="heading">
                SAVE THE PLANT<br>SAVE THE EARTH<br>SAVE THE WORLD<br>
              </h3>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  

  <div class="site-section">
    <div class="container">
      <div class="row searchbox">
        <p>지금 지구력에는 <br> 20개의 환경단체와 함께하고 있습니다.</p>
        <button>환경단체 검색</button>
      </div>
    </div>
  </div> <!-- 환경단체 검색 -->



  <div class="featured-donate overlay-color" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
    <div class="container">
      <h2 class="main_title">인기 프로젝트</h2>
      <div class="row">
        <div class="col-lg-8 order-lg-2 mb-3 mb-lg-0">
          <img src="${pageContext.request.contextPath}/resources/images/bg_2.jpg" alt="Image placeholder" class="img-fluid">
        </div>
        <div class="col-lg-4 pr-lg-5">
          <span class="featured-text mb-3 d-block">Featured</span>
          <h2 class="project_title">프로젝트 이름이 들어가는 곳</h2>
          <p class="mb-3">프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다.프로젝트 내용이 들어가는 곳입니다.</p>
          <span class="donation-time mb-3">2020.03.17 ~ 2020.06.15까지</span>
          <div class="progress custom-progress">
            <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
          <span class="fund-raised d-block mb-5">1,562,400원 / 9,900,000원</span>
          <p><a href="#" class="btn btn-primary btn-hover-white py-3 px-5">기 부 하 기</a></p>
        </div>
        
      </div>
    </div>

  </div> <!-- 인기 프로젝트 -->

  <div class="site-section fund-raisers">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <h2>진행중인 프로젝트</h2>
        </div>
      </div>

      <div class="row">
        
        <div class="col-md-12 block-11">
          <div class="nonloop-block-11 owl-carousel">

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_1.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">프로젝트 이름</a></h3>
                <p class="card-text">프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">1,562,400원 / 9,900,000원</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_1.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">프로젝트 이름</a></h3>
                <p class="card-text">프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">1,562,400원 / 9,900,000원</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_1.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">프로젝트 이름</a></h3>
                <p class="card-text">프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">1,562,400원 / 9,900,000원</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_1.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">프로젝트 이름</a></h3>
                <p class="card-text">프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">1,562,400원 / 9,900,000원</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_1.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">프로젝트 이름</a></h3>
                <p class="card-text">프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다. 프로젝트 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">1,562,400원 / 9,900,000원</span>
              </div>
            </div>
           
          </div>
        </div>
      </div>
    </div>
  </div> <!-- 진행중인 프로젝트 -->

  <div class="site-section fund-raisers" style="background: #fafafa;">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <h2>진행중인 청원</h2>
        </div>
      </div>

      <div class="row">
        
        <div class="col-md-12 block-11">
          <div class="nonloop-block-11 owl-carousel">

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_2.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">청원 이름</a></h3>
                <p class="card-text">청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">354명</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_2.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">청원 이름</a></h3>
                <p class="card-text">청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">354명</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_2.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">청원 이름</a></h3>
                <p class="card-text">청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">354명</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_2.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">청원 이름</a></h3>
                <p class="card-text">청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">354명</span>
              </div>
            </div>

            <div class="card fundraise-item">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/img_2.jpg" alt="Image placeholder"></a>
              <div class="card-body">
                <h3 class="card-title"><a href="#">청원 이름</a></h3>
                <p class="card-text">청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다. 청원 내용이 들어가는 곳입니다.</p>
                <span class="donation-time mb-3 d-block">2020.03.17 ~ 2020.06.15까지</span>
                <div class="progress custom-progress-success">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="fund-raised d-block">354명</span>
              </div>
            </div>
           
          </div>
        </div>
      </div>
    </div>
  </div> <!-- 진행중인 청원 -->


  <div class="site-section fund-raisers">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12 text-center" style="text-align: left !important;">
          <h2>최대 후원자</h2>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6 col-lg-3 mb-5">
          <div class="person-donate text-center bg-light pt-4">
            <img src="${pageContext.request.contextPath}/resources/images/person_1.jpg" alt="Image placeholder" class="img-fluid">
            <div class="donate-info">
              <h2>홍길동</h2>
              <span class="time d-block mb-3">2시간 전 기부</span>

              <div class="donate-amount d-flex">
                <div class="label">기부금</div>
                <div class="amount">30,000원</div>
              </div>
            </div>
          </div>    
        </div>

        <div class="col-md-6 col-lg-3 mb-5">
          <div class="person-donate text-center bg-light pt-4">
            <img src="${pageContext.request.contextPath}/resources/images/person_1.jpg" alt="Image placeholder" class="img-fluid">
            <div class="donate-info">
              <h2>홍길동</h2>
              <span class="time d-block mb-3">2시간 전 기부</span>

              <div class="donate-amount d-flex">
                <div class="label">기부금</div>
                <div class="amount">30,000원</div>
              </div>
            </div>
          </div>    
        </div>

        <div class="col-md-6 col-lg-3 mb-5">
          <div class="person-donate text-center bg-light pt-4">
            <img src="${pageContext.request.contextPath}/resources/images/person_1.jpg" alt="Image placeholder" class="img-fluid">
            <div class="donate-info">
              <h2>홍길동</h2>
              <span class="time d-block mb-3">2시간 전 기부</span>

              <div class="donate-amount d-flex">
                <div class="label">기부금</div>
                <div class="amount">30,000원</div>
              </div>
            </div>
          </div>    
        </div>

        <div class="col-md-6 col-lg-3 mb-5">
          <div class="person-donate text-center bg-light pt-4">
            <img src="${pageContext.request.contextPath}/resources/images/person_1.jpg" alt="Image placeholder" class="img-fluid">
            <div class="donate-info">
              <h2>홍길동</h2>
              <span class="time d-block mb-3">2시간 전 기부</span>

              <div class="donate-amount d-flex">
                <div class="label">기부금</div>
                <div class="amount">30,000원</div>
              </div>
            </div>
          </div>    
        </div>
        
      </div>
    </div>
  </div> <!-- 최대 후원자 -->

  <div class="site-section bg-light">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <h2>함께해요</h2>
        </div>
      </div>

      <div class="row">
        <div class="col-12 col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0">
          <div class="post-entry">
            <a href="#" class="mb-3 img-wrap">
              <img src="${pageContext.request.contextPath}/resources/images/img_4.jpg" alt="Image placeholder" class="img-fluid">
              <span class="date">2020. 06. 15</span>
            </a>
            <h3><a href="#">봉사활동 이름</a></h3>
            <p>봉사활동 내용이 들어가는 곳입니다. 봉사활동 내용이 들어가는 곳입니다. 봉사활동 내용이 들어가는 곳입니다.</p>
            <p><a href="#">자세히 보기</a></p>
          </div>
        </div>
        
        <div class="col-12 col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0">
          <div class="post-entry">
            <a href="#" class="mb-3 img-wrap">
              <img src="${pageContext.request.contextPath}/resources/images/img_4.jpg" alt="Image placeholder" class="img-fluid">
              <span class="date">2020. 06. 15</span>
            </a>
            <h3><a href="#">봉사활동 이름</a></h3>
            <p>봉사활동 내용이 들어가는 곳입니다. 봉사활동 내용이 들어가는 곳입니다. 봉사활동 내용이 들어가는 곳입니다.</p>
            <p><a href="#">자세히 보기</a></p>
          </div>
        </div>

        <div class="col-12 col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0">
          <div class="post-entry">
            <a href="#" class="mb-3 img-wrap">
              <img src="${pageContext.request.contextPath}/resources/images/img_4.jpg" alt="Image placeholder" class="img-fluid">
              <span class="date">2020. 06. 15</span>
            </a>
            <h3><a href="#">봉사활동 이름</a></h3>
            <p>봉사활동 내용이 들어가는 곳입니다. 봉사활동 내용이 들어가는 곳입니다. 봉사활동 내용이 들어가는 곳입니다.</p>
            <p><a href="#">자세히 보기</a></p>
          </div>
        </div>
        
      </div>
    </div>
  </div> <!-- 함께해요 -->

  
  <!-- START footer -->
 <%@ include file="./footer.jsp" %>
  <!-- END footer -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
  
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
  </body>
</html>