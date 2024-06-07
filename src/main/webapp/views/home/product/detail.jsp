<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/05/2024
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="single-banner inner-section" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>product detail</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item"><a href="shop-4column.html">shop</a></li>
            <li class="breadcrumb-item active" aria-current="page">product detail</li>
        </ol>
    </div>
</section>
<section class="inner-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="details-gallery">
                    <div class="details-label-group"><label class="details-label new">new</label><label
                            class="details-label off">-10%</label></div>
                    <ul class="details-preview">
                        <li><img src="${contextPath}/resources/images/${product.image}" alt="product" width="300px"></li>

                    </ul>

                </div>
            </div>
            <div class="col-lg-6">

                <div class="details-content">
                    <h3 class="details-name"><a href="#">${product.productName}</a></h3>
                    <div class="details-meta">
                        <p>SKU:<span>1234567</span></p>
                        <p>BRAND:<a href="${contextPath}/product/brands/${product.brandId}">${product.brand.name}</a></p>
                    </div>
                    <div class="details-rating">
                        <i class="active icofont-star"></i>
                        <i class="active icofont-star"></i>
                        <i class="active icofont-star"></i>
                        <i class="active icofont-star"></i>
                        <i class="icofont-star"></i><a href="#">(3 reviews)</a>
                    </div>
                    <h3 class="details-price"><del>$${product.priceOld}</del><span>$${product.price}<small>/per kilo</small></span></h3>
                    <p class="details-desc">${product.description}</p>
                    <div class="details-list-group"><label class="details-list-title">tags:</label>
                        <ul class="details-tag-list">
                            <li><a href="#">organic</a></li>
                            <li><a href="#">fruits</a></li>
                            <li><a href="#">chilis</a></li>
                        </ul>
                    </div>
                    <div class="details-list-group"><label class="details-list-title">Share:</label>
                        <ul class="details-share-list">
                            <li><a href="#" class="icofont-facebook" title="Facebook"></a></li>
                            <li><a href="#" class="icofont-twitter" title="Twitter"></a></li>
                            <li><a href="#" class="icofont-linkedin" title="Linkedin"></a></li>
                            <li><a href="#" class="icofont-instagram" title="Instagram"></a></li>
                        </ul>
                    </div>
                    <div class="details-add-group"><button class="product-add" title="Add to Cart"><i
                            class="fas fa-shopping-cart"></i><span>add to cart</span></button>
                        <div class="product-action"><button class="action-minus" title="Quantity Minus"><i
                                class="icofont-minus"></i></button><input class="action-input"
                                                                          title="Quantity Number" type="text" name="quantity" value="1"><button
                                class="action-plus" title="Quantity Plus"><i class="icofont-plus"></i></button>
                        </div>
                    </div>
                    <f:form action="${contextPath}/wishlist/add" method="post"  modelAttribute="wishlist">
                        <div class="details-action-group">
                            <f:hidden path="productId" value="${product.id}" />
                            <f:hidden path="accountId" value="${sessionScope.userId}" />
                            <button type="submit" class="details-wish wish product-add" title="Add Your Wishlist">
                                <i class="icofont-heart"></i>
                                <span>add to wish</span>
                            </button>
                        </div>
                    </f:form>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="inner-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="nav nav-tabs">
                    <li><a href="#tab-desc" class="tab-link active" data-bs-toggle="tab">descriptions</a></li>
                    <li><a href="#tab-spec" class="tab-link" data-bs-toggle="tab">Specifications</a></li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade show active" id="tab-desc">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-details-frame">
                        <div class="tab-descrip">
                            <p>${product.description}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="tab-spec">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-details-frame">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <th scope="row">Product code</th>
                                <td>SKU: ${product.id}</td>
                            </tr>
                            <tr>
                                <th scope="row">Quantity</th>
                                <td>${product.quantity}</td>
                            </tr>
                            <tr>
                                <th scope="row">Styles</th>
                                <td>@Girly</td>
                            </tr>
                            <tr>
                                <th scope="row">Properties</th>
                                <td>Short Dress</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="inner-section">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="section-heading">
                    <h2>related this items</h2>
                </div>
            </div>
        </div>
        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
            <div class="col">
                <div class="product-card">
                    <div class="product-media">
                        <div class="product-label"><label class="label-text sale">sale</label></div><button
                            class="product-wish wish"><i class="fas fa-heart"></i></button><a class="product-image"
                                                                                              href="product-video.html"><img src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></a>
                        <div class="product-widget"><a title="Product Compare" href="compare.html"
                                                       class="fas fa-random"></a><a title="Product Video"
                                                                                    href="https://youtu.be/9xzcVxSBbG8" class="venobox fas fa-play" data-autoplay="true"
                                                                                    data-vbtype="video"></a><a title="Product View" href="#" class="fas fa-eye"
                                                                                                               data-bs-toggle="modal" data-bs-target="#product-view"></a></div>
                    </div>
                    <div class="product-content">
                        <div class="product-rating"><i class="active icofont-star"></i><i
                                class="active icofont-star"></i><i class="active icofont-star"></i><i
                                class="active icofont-star"></i><i class="icofont-star"></i><a
                                href="product-video.html">(3)</a></div>
                        <h6 class="product-name"><a href="product-video.html">fresh green chilis</a></h6>
                        <h6 class="product-price"><del>$34</del><span>$28<small>/piece</small></span></h6><button
                            class="product-add" title="Add to Cart"><i
                            class="fas fa-shopping-cart"></i><span>add</span></button>
                        <div class="product-action"><button class="action-minus" title="Quantity Minus"><i
                                class="icofont-minus"></i></button><input class="action-input"
                                                                          title="Quantity Number" type="text" name="quantity" value="1"><button
                                class="action-plus" title="Quantity Plus"><i class="icofont-plus"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>