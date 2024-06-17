<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/05/2024
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="mobile-menu">
    <a href="${contextPath}" title="Home Page">
        <i class="fas fa-home"></i><span>Home</span>
    </a>
    <button class="cate-btn" title="Category List">
        <i class="fas fa-list"></i>
        <span>category</span>
    </button>
    <button class="cart-btn" title="Cartlist">
        <i class="fas fa-shopping-cart"></i>
        <span>cartlist</span><sup>9+</sup>
    </button>
    <a href="wishlist.html" title="Wishlist">
        <i class="fas fa-heart"></i>
        <span>wishlist</span><sup>0</sup>
    </a>
</div>
<div class="modal fade" id="product-view">
    <div class="modal-dialog">
        <div class="modal-content"><button class="modal-close icofont-close" data-bs-dismiss="modal"></button>
            <div class="product-view">
                <div class="row">
                    <div class="col-md-6 col-lg-6">
                        <div class="view-gallery">
                            <div class="view-label-group"><label class="view-label new">new</label><label
                                    class="view-label off">-10%</label></div>
                            <ul class="preview-slider slider-arrow">
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                            </ul>
                            <ul class="thumb-slider">
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                                <li><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="view-details">
                            <h3 class="view-name"><a href="product-video.html">existing product name</a></h3>
                            <div class="view-meta">
                                <p>SKU:<span>1234567</span></p>
                                <p>BRAND:<a href="#">radhuni</a></p>
                            </div>
                            <div class="view-rating"><i class="active icofont-star"></i><i
                                    class="active icofont-star"></i><i class="active icofont-star"></i><i
                                    class="active icofont-star"></i><i class="icofont-star"></i><a
                                    href="product-video.html">(3 reviews)</a></div>
                            <h3 class="view-price"><del>$38.00</del><span>$24.00<small>/per kilo</small></span></h3>
                            <p class="view-desc">Lorem ipsum dolor sit amet consectetur adipisicing elit non tempora
                                magni repudiandae sint suscipit tempore quis maxime explicabo veniam eos
                                reprehenderit fuga</p>
                            <div class="view-list-group"><label class="view-list-title">tags:</label>
                                <ul class="view-tag-list">
                                    <li><a href="#">organic</a></li>
                                    <li><a href="#">vegetable</a></li>
                                    <li><a href="#">chilis</a></li>
                                </ul>
                            </div>
                            <div class="view-list-group"><label class="view-list-title">Share:</label>
                                <ul class="view-share-list">
                                    <li><a href="#" class="icofont-facebook" title="Facebook"></a></li>
                                    <li><a href="#" class="icofont-twitter" title="Twitter"></a></li>
                                    <li><a href="#" class="icofont-linkedin" title="Linkedin"></a></li>
                                    <li><a href="#" class="icofont-instagram" title="Instagram"></a></li>
                                </ul>
                            </div>
                            <div class="view-add-group"><button class="product-add" title="Add to Cart"><i
                                    class="fas fa-shopping-cart"></i><span>add to cart</span></button>
                                <div class="product-action"><button class="action-minus" title="Quantity Minus"><i
                                        class="icofont-minus"></i></button><input class="action-input"
                                                                                  title="Quantity Number" type="text" name="quantity" value="1"><button
                                        class="action-plus" title="Quantity Plus"><i
                                        class="icofont-plus"></i></button></div>
                            </div>
                            <div class="view-action-group"><a class="view-wish wish" href="#"
                                                              title="Add Your Wishlist"><i class="icofont-heart"></i><span>add to
                                            wish</span></a><a class="view-compare" href="compare.html"
                                                              title="Compare This Item"><i class="fas fa-random"></i><span>Compare
                                            This</span></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="home-index-slider slider-arrow slider-dots">
    <div class="banner-part banner-1">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-6">
                    <div class="banner-content">
                        <h1>free home delivery within 24 hours now.</h1>
                        <p>Lorem ipsum dolor consectetur adipisicing elit modi consequatur eaque expedita porro
                            necessitatibus eveniet voluptatum quis pariatur Laboriosam molestiae architecto
                            excepturi</p>
                        <div class="banner-btn">
                            <a class="btn btn-inline" href="${contextPath}/product">
                                <i class="fas fa-shopping-cart"></i><span>shop now</span>
                            </a>
                            <a class="btn btn-outline" href="offer.html">
                                <i class="icofont-sale-discount"></i><span>get offer</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="banner-img">
                        <img src="${contextPath}/resources/home/images/home/index/01.png" alt="index">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="banner-part banner-2">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-6">
                    <div class="banner-img">
                        <img src="${contextPath}/resources/home/images/home/index/02.png" alt="index">
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="banner-content">
                        <h1>free home delivery within 24 hours now.</h1>
                        <p>Lorem ipsum dolor consectetur adipisicing elit modi consequatur eaque expedita porro
                            necessitatibus eveniet voluptatum quis pariatur Laboriosam molestiae architecto
                            excepturi</p>
                        <div class="banner-btn"><a class="btn btn-inline" href="${contextPath}/product"><i
                                class="fas fa-shopping-cart"></i><span>shop now</span></a><a
                                class="btn btn-outline" href="offer.html"><i
                                class="icofont-sale-discount"></i><span>get offer</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section suggest-part">
    <div class="container">
        <ul class="suggest-slider slider-arrow">
            <c:forEach var="c" items="${categories}">
                <li width="240px" height="122px">
                    <a class="suggest-card" href="${contextPath}/product/categories/${c.id}" width="100%">
                    <img src="${contextPath}/resources/images/${c.image}" alt="suggest" >
                    <h5>${c.name} <span>${c.productCount} items</span></h5>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>
</section>
<section class="section recent-part">
    <div class="container">
        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
            <c:forEach var="t10p" items="${top10Products}">
                <div class="col">
                    <div class="product-card">
                        <div class="product-media">
                            <div class="product-label">
                                <label class="label-text sale">sale</label>
                            </div>
                            <f:form method="post" action="${contextPath}/wishlist/add" modelAttribute="wishlist">
                                <f:hidden path="productId" value="${t10p.id}" />
                                <f:hidden path="accountId" value="${sessionScope.userId}" />
                                <button class="product-wish wish ${wishlistProductIds.contains(t10p.id) ? 'active' : ''} ">
                                    <i class="fas fa-heart"></i>
                                </button>
                            </f:form>
                            <a class="product-image" href="${contextPath}/product/detail/${t10p.id}">
                                <img src="${contextPath}/resources/images/${t10p.image}" alt="product">
                            </a>
                            <div class="product-widget">
                               <a title="Product View" href="#" class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#product-view"></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="product-rating">
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="icofont-star"></i>
                                <a href="product-video.html">(3)</a></div>
                            <h6 class="product-name"><a href="${contextPath}/product/detail/${t10p.id}">${t10p.productName}</a></h6>
                            <h6 class="product-price">
                                <del>$${t10p.priceOld}</del>
                                <span>$${t10p.price}<small>/piece</small></span>
                            </h6>
                            <f:form method="get" action="${contextPath}/cart/add/${t10p.id}/${sessionScope.userId}" modelAttribute="cartItem">
                                <f:hidden path="quantity" value="1" />
                                <button class="product-add">
                                    <i class="fas fa-shopping-cart"></i>
                                    <span>add</span>
                                </button>
                            </f:form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="section-btn-25">
                    <a href="${contextPath}/product" class="btn btn-outline">
                        <i class="fas fa-eye"></i>
                        <span>show more</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="section promo-part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="promo-img">
                    <a href="#">
                        <img src="${contextPath}/resources/home/images/promo/home/03.jpg" alt="promo">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="section feature-part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                    <h2>our featured items</h2>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-md-1 row-cols-lg-2 row-cols-xl-2">
            <c:forEach var="fp" items="${features}">
                <div class="col">
                    <div class="feature-card">
                        <div class="feature-media">
                            <div class="feature-label">
                                <label class="label-text feat">feature</label>
                            </div>
                            <f:form method="post" action="${contextPath}/wishlist/add" modelAttribute="wishlist">
                                <f:hidden path="productId" value="${fp.id}" />
                                <f:hidden path="accountId" value="${sessionScope.userId}" />
                                <button class="product-wish wish ${wishlistProductIds.contains(fp.id) ? 'active' : ''} ">
                                    <i class="fas fa-heart"></i>
                                </button>
                            </f:form>
                            <a class="feature-image" href="${contextPath}/product/detail/${fp.id}">
                                <img src="${contextPath}/resources/images/${fp.image}" alt="product">
                            </a>
                            <div class="feature-widget">
                                <a title="Product View" href="${contextPath}/product/detail/${fp.id}" class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#product-view"></a>
                            </div>
                        </div>
                        <div class="feature-content">
                            <h6 class="feature-name">
                                <a href="product-video.html">${fp.productName}</a>
                            </h6>
                            <div class="feature-rating">
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="icofont-star"></i>
                                <a href="${contextPath}/product/detail/${fp.id}">(3 Reviews)</a>
                            </div>
                            <h6 class="feature-price">
                                <del>$${fp.priceOld}</del>
                                <span>$${fp.price}</span>
                            </h6>
                            <p class="feature-desc">${fp.description}...</p>
                            <f:form method="get" action="${contextPath}/cart/add/${fp.id}/${sessionScope.userId}" modelAttribute="cartItem">
                                <f:hidden path="quantity" value="1" />
                                <button class="product-add">
                                    <i class="fas fa-shopping-cart"></i>
                                    <span>add</span>
                                </button>
                            </f:form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<section class="section countdown-part">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 mx-auto">
                <div class="countdown-content">
                    <h3>special discount offer for vegetable items</h3>
                    <p>Reprehenderit sed quod autem molestiae aut modi minus veritatis iste dolorum suscipit quis
                        voluptatum fugiat mollitia quia minima</p>
                    <div class="countdown countdown-clock" data-countdown="2022/12/22"><span
                            class="countdown-time"><span>00</span><small>days</small></span><span
                            class="countdown-time"><span>00</span><small>hours</small></span><span
                            class="countdown-time"><span>00</span><small>minutes</small></span><span
                            class="countdown-time"><span>00</span><small>seconds</small></span></div>
                        <a href="${contextPath}/product" class="btn btn-inline">
                            <i class="fas fa-shopping-cart"></i><span>shop now</span>
                        </a>
                </div>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-5">
                <div class="countdown-img"><img src="${contextPath}/resources/home/images/countdown.png" alt="countdown">
                    <div class="countdown-off"><span>20%</span><span>off</span></div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section newitem-part">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="section-heading">
                    <h2>collected new items</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <ul class="new-slider slider-arrow">
                    <c:forEach var="na" items="${newArrivals}">
                        <li>
                            <div class="product-card">
                                <div class="product-media">
                                    <div class="product-label">
                                        <label class="label-text new">new</label>
                                    </div>
                                    <f:form method="post" action="${contextPath}/wishlist/add" modelAttribute="wishlist">
                                        <f:hidden path="productId" value="${na.id}" />
                                        <f:hidden path="accountId" value="${sessionScope.userId}" />
                                        <button class="product-wish wish ${wishlistProductIds.contains(na.id) ? 'active' : ''} ">
                                            <i class="fas fa-heart"></i>
                                        </button>
                                    </f:form>
                                    <a class="product-image" href="${contextPath}/product/detail/${na.id}">
                                        <img src="${contextPath}/resources/images/${na.image}" alt="product">
                                    </a>
                                    <div class="product-widget">
                                       <a title="Product View" href="#" class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#product-view"></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-rating">
                                        <i class="active icofont-star"></i>
                                        <i class="active icofont-star"></i>
                                        <i class="active icofont-star"></i>
                                        <i class="active icofont-star"></i>
                                        <i class="icofont-star"></i>
                                        <a href="${contextPath}/product/detail/${na.id}">(3)</a>
                                    </div>
                                    <h6 class="product-name">
                                        <a href="${contextPath}/product/detail/${na.id}">${na.productName}</a>
                                    </h6>
                                    <h6 class="product-price">
                                        <del>$${na.priceOld}</del>
                                        <span>$${na.price}</span>
                                    </h6>
                                    <f:form method="get" action="${contextPath}/cart/add/${na.id}/${sessionScope.userId}" modelAttribute="cartItem">
                                        <f:hidden path="quantity" value="1" />
                                        <button class="product-add">
                                            <i class="fas fa-shopping-cart"></i>
                                            <span>add</span>
                                        </button>
                                    </f:form>
                                    <div class="product-action">
                                        <button class="action-minus" title="Quantity Minus">
                                            <i class="icofont-minus"></i>
                                        </button>
                                        <input class="action-input" title="Quantity Number" type="text" name="quantity" value="1">
                                        <button class="action-plus" title="Quantity Plus">
                                            <i class="icofont-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</section>
<div class="section promo-part">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 px-xl-3">
                <div class="promo-img"><a href="#"><img src="${contextPath}/resources/home/images/promo/home/01.jpg" alt="promo"></a></div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 px-xl-3">
                <div class="promo-img"><a href="#"><img src="${contextPath}/resources/home/images/promo/home/02.jpg" alt="promo"></a></div>
            </div>
        </div>
    </div>
</div>
<section class="section brand-part">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-heading">
                    <h2>shop by brands</h2>
                </div>
            </div>
        </div>
        <div class="brand-slider slider-arrow">
            <c:forEach var="b" items="${brands}">
                <div class="brand-wrap">
                    <div class="brand-media"><img src="${contextPath}/resources/images/${b.image}" alt="brand">
                        <div class="brand-overlay"><a href="${contextPath}/product/brands/${b.id}"><i class="fas fa-link"></i></a></div>
                    </div>
                    <div class="brand-meta">
                        <h4>${b.name}</h4>
                        <p>(${b.productCount} items)</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<section class="section blog-part">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-heading">
                    <h2>Read our blogs</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="blog-slider slider-arrow">
                    <div class="blog-card">
                        <div class="blog-media">
                            <a class="blog-img" href="#">
                                <img src="${contextPath}/resources/home/images/blog/01.jpg" alt="blog">
                            </a>
                        </div>
                        <div class="blog-content">
                            <ul class="blog-meta">

                                <li><i class="fas fa-calendar-alt"></i><span>february 02, 2021</span></li>
                            </ul>
                            <h4 class="blog-title"><a href="blog-details.html">Voluptate blanditiis provident Lorem
                                ipsum dolor sit amet</a></h4>
                            <p class="blog-desc">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Alias
                                autem recusandae deleniti nam dignissimos sequi ... </p><a class="blog-btn"
                                                                                           href="#"><span>read more</span><i class="icofont-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-card">
                        <div class="blog-media"><a class="blog-img" href="#"><img src="${contextPath}/resources/home/images/blog/02.jpg"
                                                                                  alt="blog"></a></div>
                        <div class="blog-content">
                            <ul class="blog-meta">
                                <li><i class="fas fa-user"></i><span>admin</span></li>
                                <li><i class="fas fa-calendar-alt"></i><span>february 02, 2021</span></li>
                            </ul>
                            <h4 class="blog-title"><a href="blog-details.html">Voluptate blanditiis provident Lorem
                                ipsum dolor sit amet</a></h4>
                            <p class="blog-desc">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Alias
                                autem recusandae deleniti nam dignissimos sequi ... </p><a class="blog-btn"
                                                                                           href="#"><span>read more</span><i class="icofont-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-card">
                        <div class="blog-media"><a class="blog-img" href="#"><img src="${contextPath}/resources/home/images/blog/03.jpg"
                                                                                  alt="blog"></a></div>
                        <div class="blog-content">
                            <ul class="blog-meta">
                                <li><i class="fas fa-user"></i><span>admin</span></li>
                                <li><i class="fas fa-calendar-alt"></i><span>february 02, 2021</span></li>
                            </ul>
                            <h4 class="blog-title"><a href="blog-details.html">Voluptate blanditiis provident Lorem
                                ipsum dolor sit amet</a></h4>
                            <p class="blog-desc">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Alias
                                autem recusandae deleniti nam dignissimos sequi ... </p><a class="blog-btn"
                                                                                           href="#"><span>read more</span><i class="icofont-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-card">
                        <div class="blog-media"><a class="blog-img" href="#"><img src="${contextPath}/resources/home/images/blog/04.jpg"
                                                                                  alt="blog"></a></div>
                        <div class="blog-content">
                            <ul class="blog-meta">
                                <li><i class="fas fa-user"></i><span>admin</span></li>
                                <li><i class="fas fa-calendar-alt"></i><span>february 02, 2021</span></li>
                            </ul>
                            <h4 class="blog-title"><a href="blog-details.html">Voluptate blanditiis provident Lorem
                                ipsum dolor sit amet</a></h4>
                            <p class="blog-desc">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Alias
                                autem recusandae deleniti nam dignissimos sequi ... </p><a class="blog-btn"
                                                                                           href="#"><span>read more</span><i class="icofont-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="section-btn-25"><a href="${contextPath}/blogs" class="btn btn-outline"><i
                        class="fas fa-eye"></i><span>view all blog</span></a></div>
            </div>
        </div>
    </div>
</section>
