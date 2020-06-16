<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/personal_css/join.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/ficon.png">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
    <style>
      body{
        font-family: 'Poppins','Jeju Gothic', serif;
      }
    </style>
  </head>
  <body>
    
     <!----------------- START nav ----------------->  
 	<%@ include file="../header.jsp" %>
    <!-- END nav -->
  
  <div class="block-31" style="position: relative;">
    <div class="owl-carousel loop-block-31 ">
      <div class="block-30 block-30-sm item" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center">
              <h2 class="heading">Join_Org</h2>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>

  <div class="site-section">
    <div class="container" style="text-align: center;">
      <div class="row block-9">
        <div class="col-md-6 pr-md-5" style="margin: 0 auto;">
          <form action="login.html" method="POST">
            <div class="form-group joinbox">
              <input type="text" class="form-control px-3 py-3 join_input" placeholder="ID" style="width: 500px;" name="user_id" id="user_id">
            </div>
            <div class="form-group joinbox">
              <input type="password" class="form-control px-3 py-3 join_input" placeholder="Password" style="width: 500px;" name="user_pw" id="user_pw">
            </div>
            <div class="form-group joinbox">
              <input type="password" class="form-control px-3 py-3 join_input" placeholder="Password 확인" style="width: 500px;" name="user_pw_chk" id="user_pw_chk">
            </div>
            <div class="form-group joinbox">
              <input type="tel" class="form-control px-3 py-3 join_input" placeholder="Phone ('-'없이 번호만 입력해주세요)" style="width: 500px;" name="user_phone" id="user_phone">
            </div>
            <div class="form-group joinbox clearFix">
              <label style="float: left; line-height: 49px; padding-left: 10px;">환경단체를 검색해주세요</label>
              <input type="button" value="Search" class="btn py-3 px-5" style="width: 180px; float: right;" id="search_org">
            </div>
            <div class="form-group joinbox">
              <input type="text" class="form-control px-3 py-3 join_input" readonly placeholder="Name" style="width: 500px;" name="user_name" id="user_name">
            </div>
            <div class="form-group joinbox">
              <input type="text" class="form-control px-3 py-3 join_input" readonly placeholder="NickName" style="width: 500px;" name="user_nick" id="user_nick">
            </div>
            <div class="form-group joinbox">
              <input type="text" class="form-control px-3 py-3 join_input" readonly placeholder="Address" style="width: 500px;" name="user_addr" id="user_addr">
            </div>
            <div class="form-group joinbox">
              <input type="file" class="form-control px-3 py-3 join_input" style="width: 500px; border: none; padding-left: 0px !important;">
            </div>
            <div class="form-group">
              <input type="submit" value="Join" class="btn btn-success py-3 px-5 btn_success" style="width: 500px;">
            </div>
            <div class="form-group">
              <input type="button" value="취소" class="btn py-3 px-5 cancelbtn" style="width: 500px;" onclick="location.href='registForm.do'">
            </div>
          </form>
        
        </div>

      </div>
    </div>
  </div>

  
  
  <!-- START footer -->
 	<%@ include file="../footer.jsp" %>
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