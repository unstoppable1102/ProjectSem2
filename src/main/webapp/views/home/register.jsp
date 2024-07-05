<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22/05/2024
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from mironmahmud.com/greeny/assets/ltr/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 20 May 2024 07:10:27 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="template" content="greeny">
    <meta name="title" content="greeny - Ecommerce Food Store HTML Template">
    <meta name="keywords" content="organic, food, shop, ecommerce, store, html, bootstrap, template, agriculture, vegetables, products, farm, grocery, natural, online">
    <title>Greeny - Register</title>
    <link rel="icon" href="${contextPath}/resources/home/images/favicon.png">
    <link rel="stylesheet" href="${contextPath}/resources/home/fonts/flaticon/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/fonts/icofont/icofont.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/fonts/fontawesome/fontawesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/venobox/venobox.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/slickslider/slick.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/niceselect/nice-select.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/main.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/user-auth.css">
</head>

<body>
<section class="user-form-part">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-10 col-md-12 col-lg-12 col-xl-10">
                <div class="user-form-logo">
                    <a href="${contextPath}">
                        <img src="${contextPath}/resources/home/images/logo.png" alt="logo">
                    </a>
                </div>
                <div class="user-form-card">
                    <div class="user-form-title">
                        <h2>Join Now!</h2>
                        <p>Setup A New Account In A Minute</p>
                    </div>
                    <f:form modelAttribute="account" method="post" action="" class="user-form w-50 m-auto" >
                        <div class="form-group">
                            <f:input type="text" class="form-control" path="fullName" placeholder="Enter your fullName" />
                            <span style="color:red" class="mt-3"><f:errors cssClass="error" path="fullName" /></span>
                        </div>
                        <div class="form-group">
                            <f:input type="email" class="form-control" path="email" placeholder="Enter your email"/>
                            <span style="color:red" class="mt-3"><f:errors cssClass="error" path="email" /></span>
                        </div>
                        <div class="form-group">
                            <f:input type="text" class="form-control" path="username" placeholder="Enter your username"/>
                            <span style="color:red" class="mt-3"><f:errors cssClass="error" path="username" /></span>
                            <span style="color: red">${error}</span>
                        </div>
                        <div class="form-group">
                            <f:input type="password" class="form-control" path="password" placeholder="Enter password"/>
                            <span style="color:red" class="mt-3"><f:errors cssClass="error" path="password" /></span>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" value="" id="check">
                            <label class="form-check-label" for="check">Accept all the
                                <a href="#">Terms & Conditions</a>
                            </label>
                        </div>
                        <div class="form-button">
                            <button type="submit">register</button>
                        </div>
                    </f:form>
                </div>
                </div>
                <div class="user-form-remind">
                    <p>Already Have An Account?<a href="${contextPath}/login">login here</a></p>
                </div>
                <div class="user-form-footer">
                    <p>Greeny | &COPY; Copyright by <a href="#">Unstoppable</a></p>
                </div>
            </div>
    </div>
</section>
<script src="${contextPath}/resources/home/vendor/bootstrap/jquery-1.12.4.min.js"></script>
<script src="${contextPath}/resources/home/vendor/bootstrap/popper.min.js"></script>
<script src="${contextPath}/resources/home/vendor/bootstrap/bootstrap.min.js"></script>
<script src="${contextPath}/resources/home/vendor/countdown/countdown.min.js"></script>
<script src="${contextPath}/resources/home/vendor/niceselect/nice-select.min.js"></script>
<script src="${contextPath}/resources/home/vendor/slickslider/slick.min.js"></script>
<script src="${contextPath}/resources/home/vendor/venobox/venobox.min.js"></script>
<script src="${contextPath}/resources/home/js/nice-select.js"></script>
<script src="${contextPath}/resources/home/js/countdown.js"></script>
<script src="${contextPath}/resources/home/js/accordion.js"></script>
<script src="${contextPath}/resources/home/js/venobox.js"></script>
<script src="${contextPath}/resources/home/js/slick.js"></script>
<script src="${contextPath}/resources/home/js/main.js"></script>
</body>
</html>
