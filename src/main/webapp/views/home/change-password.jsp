<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/07/2024
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from mironmahmud.com/greeny/assets/ltr/change-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 20 May 2024 07:10:27 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="template" content="greeny">
    <meta name="title" content="greeny - Ecommerce Food Store HTML Template">
    <meta name="keywords"
          content="organic, food, shop, ecommerce, store, html, bootstrap, template, agriculture, vegetables, products, farm, grocery, natural, online">
    <title>Greeny - Change Password</title>
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
            <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5">
                <div class="user-form-logo"><a href="${contextPath}/"><img src="${contextPath}/resources/home/images/logo.png" alt="logo"></a></div>
                <div class="user-form-card">
                    <div class="user-form-title">
                        <h2>any issue?</h2>
                        <p>Make sure your current password is strong</p>
                    </div>
                    <span style="color: green">${msg}</span>
                    <f:form class="user-form" action="change-password" modelAttribute="changePasswordForm">
                        <div class="form-group">
                            <f:input path="currentPassword" type="password" class="form-control" placeholder="Current password"/>
                        </div>
                        <div class="form-group">
                            <f:input path="newPassword" type="password" class="form-control" placeholder="New password" />
                        </div>
                        <div class="form-group">
                            <f:input path="confirmPassword" type="password" class="form-control" placeholder="Confirm password"/>
                        </div>
                        <div class="form-button">
                            <button type="submit">change password</button></div>
                    </f:form>
                </div>
                <div class="user-form-remind">
                    <p>Go Back To<a href="${contextPath}/login">login here</a></p>
                </div>
                <div class="user-form-footer">
                    <p>Greeny | &COPY; Copyright by <a href="#">Unstoppable</a></p>
                </div>
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
<!-- Mirrored from mironmahmud.com/greeny/assets/ltr/change-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 20 May 2024 07:10:27 GMT -->

</html>
