<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22/05/2024
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from mironmahmud.com/greeny/assets/ltr/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 20 May 2024 07:09:57 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="template" content="greeny">
    <meta name="title" content="greeny - Ecommerce Food Store HTML Template">
    <meta name="keywords"
          content="organic, food, shop, ecommerce, store, html, bootstrap, template, agriculture, vegetables, products, farm, grocery, natural, online">
    <title>Greeny - Login</title>
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
                        <h2>welcome!</h2>
                        <p>Use your credentials to access</p>
                    </div>
                    <form class="user-form w-50 m-auto" method="post" action="">
                        <span style="color:red;" class="mb-5">${error}</span>
                        <div class="form-group">
                            <input name="username" class="form-control" placeholder="Enter your username">
                        </div>
                        <div class="form-group">
                            <input name="password" type="password" class="form-control" placeholder="Enter your password">
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" name="remember" id="check">
                            <label class="form-check-label" for="check">Remember Me</label>
                        </div>
                        <div class="form-button"><button type="submit">login</button>
                            <p>Forgot your password?<a href="reset-password.html">reset here</a></p>
                        </div>
                    </form>
                    </div>
                </div>
                <div class="user-form-remind">
                    <p>Don't have any account?<a href="${contextPath}/register">register here</a></p>
                </div>
                <div class="user-form-footer">
                    <p>Greeny | &COPY; Copyright by <a href="https://www.facebook.com/unstoppable1102">Unstoppable</a></p>
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
<!-- Mirrored from mironmahmud.com/greeny/assets/ltr/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 20 May 2024 07:09:58 GMT -->

</html>
