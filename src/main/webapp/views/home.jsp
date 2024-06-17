<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/05/2024
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from mironmahmud.com/greeny/assets/ltr/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 20 May 2024 07:09:07 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="template" content="greeny">
    <meta name="title" content="greeny - Ecommerce Food Store HTML Template">
    <meta name="keywords"
          content="organic, food, shop, ecommerce, store, html, bootstrap, template, agriculture, vegetables, products, farm, grocery, natural, online">
    <title>Index Home - Greeny</title>
    <link rel="icon" href="${contextPath}/resources/home/images/favicon.png">
    <link rel="stylesheet" href="${contextPath}/resources/home/fonts/flaticon/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/fonts/icofont/icofont.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/fonts/fontawesome/fontawesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/venobox/venobox.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/slickslider/slick.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/niceselect/nice-select.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/main.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/index.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/contact.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/about.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/blog-grid.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/product-details.css">
    <link rel="stylesheet" href="${contextPath}/resources/home/css/checkout.css">
</head>

<body>
<div class="backdrop"></div><a class="backtop fas fa-arrow-up" href="#"></a>
<div class="header-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-5">
                <div class="header-top-welcome">
                    <p>Welcome to Ecomart in Your Dream Online Store!</p>
                </div>
            </div>
            <div class="col-md-5 col-lg-3">
                <div class="header-top-select">
                    <div class="header-select"><i class="icofont-world"></i>
                        <select class="select">
                            <option value="english" >english</option>
                            <option value="việt nam" selected>việt nam</option>
                            <option value="bồ đào nha">bồ đào nha</option>
                        </select>
                    </div>
                    <div class="header-select"><i class="icofont-money"></i>
                        <select class="select">
                            <option value="english" selected>doller</option>
                            <option value="bangali">pound</option>
                            <option value="arabic">taka</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-7 col-lg-4">
                <ul class="header-top-list">
                    <li><a href="${contextPath}/register">Register</a></li>
                    <c:choose>
                        <c:when test="${!empty sessionScope.userId}">
                            <li><a href="${contextPath}/logout">Logout</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="${contextPath}/login">Login</a></li>
                        </c:otherwise>
                    </c:choose>

                    <li><a href="${contextPath}/contact">contact us</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<header class="header-part">
    <div class="container">
        <div class="header-content">
            <div class="header-media-group">
                <button class="header-user">
                    <img src="${contextPath}/resources/home/images/user.png" alt="user">
                </button>
                <a href="${contextPath}">
                    <img src="${contextPath}/resources/home/images/logo.png" alt="logo">
                </a>
                <button class="header-src">
                    <i class="fas fa-search"></i>
                </button>
            </div>
            <a href="${contextPath}" class="header-logo"><img src="${contextPath}/resources/home/images/logo.png" alt="logo"></a>
            <c:choose>
                <c:when test="${!empty sessionScope.userId}">
                    <a href="${contextPath}/my-profile" class="header-widget" title="My Account">
                        <img src="${contextPath}/resources/images/${sessionScope.avatar}" alt="user">
                        <span>${sessionScope.fullName}</span>
                    </a>
                </c:when>
                <c:otherwise>

                </c:otherwise>
            </c:choose>

            <form id="searchForm"  class="header-form" action="${contextPath}/product/search">
                <input name="keyword" type="text" placeholder="Search anything...">
                <button type="submit" onclick="submitSearchForm()">
                    <i class="fas fa-search"></i>
                </button>
            </form>
            <div class="header-widget-group">
                <c:choose>
                    <c:when test="${!empty sessionScope.userId}">
                        <a href="${contextPath}/wishlist/${sessionScope.userId}" class="header-widget" title="Wishlist">
                            <i class="fas fa-heart"></i>
                        </a>
                        <a href="${contextPath}/cart/${sessionScope.userId}" class="header-widget header-cart" title="Cartlist">
                            <i class="fas fa-shopping-cart"></i>
                            <sup id="cartItemCount">${countCartItem}</sup>
                            <span>totalprice<small>$${totalPrice}</small></span>
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a href="${contextPath}/login" class="header-widget" title="Wishlist">
                            <i class="fas fa-heart"></i>
                        </a>
                        <a href="${contextPath}/login" class="header-widget header-cart" title="Cartlist">
                            <i class="fas fa-shopping-cart"></i>
                            <span>totalprice<small>$0.0</small></span>
                        </a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</header>
 <nav class="navbar-part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="navbar-content">
                    <ul class="navbar-list">
                        <li class="navbar-item"><a class="navbar-link" href="${contextPath}">home</a></li>
                        <li class="navbar-item dropdown">
                            <a class="navbar-link dropdown-arrow" >Category</a>
                                <ul class="dropdown-position-list">
                                    <c:forEach var="c" items="${categories}">
                                        <li><a href="${contextPath}/product/categories/${c.id}">${c.name}</a></li>
                                    </c:forEach>
                                </ul>
                        </li>
                        <li class="navbar-item dropdown">
                            <a class="navbar-link dropdown-arrow" href="#">brand</a>
                            <ul class="dropdown-position-list">
                                <c:forEach var="b" items="${brands}">
                                    <li><a href="${contextPath}/product/brands/${b.id}">${b.name}</a></li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="navbar-item"><a class="navbar-link" href="${contextPath}/product">Shop</a></li>
                        <li class="navbar-item dropdown"><a class="navbar-link dropdown-arrow" href="#">pages</a>
                            <ul class="dropdown-position-list">
                                <li><a href="faq.html">faqs</a></li>
                                <li><a href="offer.html">offers</a></li>
                                <li><a href="profile.html">my profile</a></li>
                                <li><a href="wallet.html">my wallet</a></li>
                                <li><a href="about.html">about us</a></li>
                                <li><a href="contact.html">contact us</a></li>
                                <li><a href="privacy.html">privacy policy</a></li>
                                <li><a href="coming-soon.html">coming soon</a></li>
                                <li><a href="blank-page.html">blank page</a></li>
                                <li><a href="error.html">404 Error</a></li>
                                <li><a href="email-template.html">email template</a></li>
                            </ul>
                        </li>

                        <li class="navbar-item dropdown"><a class="navbar-link" href="${contextPath}/blogs">blogs</a>

                        </li>
                        <li class="navbar-item dropdown"><a class="navbar-link" href="${contextPath}/about">about</a>

                        </li>
                    </ul>
                    <div class="navbar-info-group">
                        <div class="navbar-info"><i class="icofont-ui-touch-phone"></i>
                            <p><small>call us</small><span>(+84) 963203410</span></p>
                        </div>
                        <div class="navbar-info"><i class="icofont-ui-email"></i>
                            <p><small>email us</small><span>minhkhmtd@gmail.com</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<aside class="nav-sidebar">
    <div class="nav-header">
        <a href="#"><img src="${contextPath}/resources/home/images/logo.png" alt="logo"></a>
        <button class="nav-close">
            <i class="icofont-close"></i>
        </button>
    </div>
    <div class="nav-content">
        <div class="nav-btn">
            <a href="login.html" class="btn btn-inline">
            <i class="fa fa-unlock-alt"></i>
            <span>join here</span>
            </a>
        </div>
        <div class="nav-select-group">
            <div class="nav-select"><i class="icofont-world"></i><select class="select">
                <option value="english" selected>English</option>
                <option value="bangali">Bangali</option>
                <option value="arabic">Arabic</option>
            </select></div>
            <div class="nav-select"><i class="icofont-money"></i><select class="select">
                <option value="english" selected>Doller</option>
                <option value="bangali">Pound</option>
                <option value="arabic">Taka</option>
            </select></div>
        </div>
        <ul class="nav-list">
            <li><a class="nav-link" href="#">Home</a></li>
            <li><a class="nav-link dropdown-link" href="#">
                <i class="icofont-food-cart"></i>shop</a>
                <ul class="dropdown-list">
                    <li><a href="shop-5column.html">shop 5 column</a></li>
                    <li><a href="shop-4column.html">shop 4 column</a></li>
                    <li><a href="shop-3column.html">shop 3 column</a></li>
                    <li><a href="shop-2column.html">shop 2 column</a></li>
                    <li><a href="shop-1column.html">shop 1 column</a></li>
                </ul>
            </li>
            <li><a class="nav-link dropdown-link" href="#"><i class="icofont-page"></i>product</a>
                <ul class="dropdown-list">
                    <li><a href="product-tab.html">product tab</a></li>
                    <li><a href="product-grid.html">product grid</a></li>
                    <li><a href="product-video.html">product video</a></li>
                    <li><a href="product-simple.html">product simple</a></li>
                </ul>
            </li>
            <li>
                <a class="nav-link dropdown-link" href="${contextPath}/my-profile"><i class="icofont-bag-alt"></i>my profile</a>
                <ul class="dropdown-list">
                    <li><a href="profile.html">profile</a></li>
                    <li><a href="wallet.html">wallet</a></li>
                    <li><a href="wishlist.html">wishlist</a></li>
                    <li><a href="compare.html">compare</a></li>
                    <li><a href="checkout.html">checkout</a></li>
                    <li><a href="orderlist.html">order history</a></li>
                    <li><a href="invoice.html">order invoice</a></li>
                    <li><a href="email-template.html">email template</a></li>
                </ul>
            </li>
            <li><a class="nav-link dropdown-link" href="#"><i class="icofont-lock"></i>authentication</a>
                <ul class="dropdown-list">
                    <li><a href="login.html">login</a></li>
                    <li><a href="register.html">register</a></li>
                    <li><a href="reset-password.html">reset password</a></li>
                    <li><a href="change-password.html">change password</a></li>
                </ul>
            </li>
            <li><a class="nav-link dropdown-link" href="#"><i class="icofont-book-alt"></i>blogs</a>
                <ul class="dropdown-list">
                    <li><a href="blog-details.html">blog details</a></li>
                </ul>
            </li>
            <li><a class="nav-link" href="offer.html"><i class="icofont-sale-discount"></i>offers</a></li>
            <li><a class="nav-link" href="about.html"><i class="icofont-info-circle"></i>about us</a></li>
            <li><a class="nav-link" href="faq.html"><i class="icofont-support-faq"></i>need help</a></li>
            <li><a class="nav-link" href="contact.html"><i class="icofont-contacts"></i>contact us</a></li>
            <li><a class="nav-link" href="privacy.html"><i class="icofont-warning"></i>privacy policy</a></li>
            <li><a class="nav-link" href="coming-soon.html"><i class="icofont-options"></i>coming soon</a></li>
            <li><a class="nav-link" href="error.html"><i class="icofont-ui-block"></i>404 error</a></li>
            <li><a class="nav-link" href="login.html"><i class="icofont-logout"></i>logout</a></li>
        </ul>
        <div class="nav-info-group">
            <div class="nav-info"><i class="icofont-ui-touch-phone"></i>
                <p><small>call us</small><span>(+880) 183 8288 389</span></p>
            </div>
            <div class="nav-info"><i class="icofont-ui-email"></i>
                <p><small>email us</small><span>support@example.com</span></p>
            </div>
        </div>
        <div class="nav-footer">
            <p>All Rights Reserved by <a href="#">Mironcoder</a></p>
        </div>
    </div>
</aside>
<c:if test="${!empty page}">
    <jsp:include page="home/${page}.jsp"></jsp:include>
</c:if>
<section class="news-part" style="background: url(${contextPath}/resources/home/images/newsletter.jpg) no-repeat center;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-5 col-lg-6 col-xl-7">
                <div class="news-text">
                    <h2>Get 20% Discount for Subscriber</h2>
                    <p>Lorem ipsum dolor consectetur adipisicing accusantium</p>
                </div>
            </div>
            <div class="col-md-7 col-lg-6 col-xl-5">
                <form class="news-form"><input type="text" placeholder="Enter Your Email Address"><button><span><i
                        class="icofont-ui-email"></i>Subscribe</span></button></form>
            </div>
        </div>
    </div>
</section>
<section class="intro-part">
    <div class="container">
        <div class="row intro-content">
            <div class="col-sm-6 col-lg-3">
                <div class="intro-wrap">
                    <div class="intro-icon"><i class="fas fa-truck"></i></div>
                    <div class="intro-content">
                        <h5>free home delivery</h5>
                        <p>Lorem ipsum dolor sit amet adipisicing elit nobis.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="intro-wrap">
                    <div class="intro-icon"><i class="fas fa-sync-alt"></i></div>
                    <div class="intro-content">
                        <h5>instant return policy</h5>
                        <p>Lorem ipsum dolor sit amet adipisicing elit nobis.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="intro-wrap">
                    <div class="intro-icon"><i class="fas fa-headset"></i></div>
                    <div class="intro-content">
                        <h5>quick support system</h5>
                        <p>Lorem ipsum dolor sit amet adipisicing elit nobis.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="intro-wrap">
                    <div class="intro-icon"><i class="fas fa-lock"></i></div>
                    <div class="intro-content">
                        <h5>secure payment way</h5>
                        <p>Lorem ipsum dolor sit amet adipisicing elit nobis.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="footer-part">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="footer-widget"><a class="footer-logo" href="#">
                    <img src="${contextPath}/resources/home/images/logo.png" alt="logo"></a>
                    <p class="footer-desc">Adipisci asperiores ipsum ipsa repellat consequatur repudiandae quisquam
                        assumenda dolor perspiciatis sit ipsum dolor amet.</p>
                    <ul class="footer-social">
                        <li><a class="icofont-facebook" href="#"></a></li>
                        <li><a class="icofont-twitter" href="#"></a></li>
                        <li><a class="icofont-linkedin" href="#"></a></li>
                        <li><a class="icofont-instagram" href="#"></a></li>
                        <li><a class="icofont-pinterest" href="#"></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="footer-widget contact">
                    <h3 class="footer-title">contact us</h3>
                    <ul class="footer-contact">
                        <li><i class="icofont-ui-email"></i>
                            <p><span>minhkhmtd@gmail.com</span></p>
                        </li>
                        <li><i class="icofont-ui-touch-phone"></i>
                            <p><span>+84963203410</span></p>
                        </li>
                        <li><i class="icofont-location-pin"></i>
                            <p>238 Hoang Quoc Viet Street, Co Nhue, Bac Tu Liem, HN</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="footer-widget">
                    <h3 class="footer-title">quick Links</h3>
                    <div class="footer-links">
                        <ul>
                            <li><a href="${contextPath}/my-profile">My Account</a></li>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Order Tracking</a></li>
                            <li><a href="#">Best Seller</a></li>
                            <li><a href="#">New Arrivals</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Location</a></li>
                            <li><a href="#">Affiliates</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Carrer</a></li>
                            <li><a href="#">Faq</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="footer-widget">
                    <h3 class="footer-title">Download App</h3>
                    <p class="footer-desc">Lorem ipsum dolor sit amet tenetur dignissimos ipsum eligendi autem
                        obcaecati minus ducimus totam reprehenderit exercitationem!</p>
                    <div class="footer-app"><a href="#"><img src="${contextPath}/resources/home/images/google-store.png" alt="google"></a><a
                            href="#"><img src="${contextPath}/resources/home/images/app-store.png" alt="app"></a></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="footer-bottom">
                    <p class="footer-copytext">&copy; All Copyrights Reserved by <a href="#">Mironcoder</a></p>
                    <div class="footer-card"><a href="#"><img src="${contextPath}/resources/home/images/payment/jpg/01.jpg" alt="payment"></a><a
                            href="#"><img src="${contextPath}/resources/home/images/payment/jpg/02.jpg" alt="payment"></a><a href="#"><img
                            src="${contextPath}/resources/home/images/payment/jpg/03.jpg" alt="payment"></a><a href="#"><img
                            src="${contextPath}/resources/home/images/payment/jpg/04.jpg" alt="payment"></a></div>
                </div>
            </div>
        </div>
    </div>
</footer>
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
<!-- Mirrored from mironmahmud.com/greeny/assets/ltr/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 20 May 2024 07:09:41 GMT -->

</html>
