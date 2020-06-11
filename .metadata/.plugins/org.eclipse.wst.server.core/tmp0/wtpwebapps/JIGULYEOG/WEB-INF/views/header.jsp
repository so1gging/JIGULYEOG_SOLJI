<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>지구력</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  </head>
  <body>
  <c:if test="${!empty user }">
  	<c:set value="${user }" var="user"></c:set>
  </c:if>

    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.do"><img src="${pageContext.request.contextPath}/resources/images/back_logo.png" alt="logo"class="headerclogo"  width="45px" height="45px"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="" class="nav-link">환경단체</a></li>
          <li class="nav-item"><a href="projectlist.do" class="nav-link">프로젝트</a></li>
          <li class="nav-item"><a href="" class="nav-link">청원</a></li>
          <li class="nav-item"><a href="" class="nav-link">함께해요</a></li>
          <c:if test="${empty user }">
          	<li class="nav-item"><a href="login.do" class="nav-link">로그인</a></li>
          </c:if>         
          <c:if test="${!empty user }">
          	<li class="nav-item"><a href="#" class="nav-link">마이페이지</a></li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
  <!-- END nav -->

  </body>
</html>