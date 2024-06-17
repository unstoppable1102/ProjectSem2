<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/05/2024
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="product-view">
    <div class="modal-dialog">
        <div class="modal-content">
            <button class="modal-close icofont-close" data-bs-dismiss="modal"></button>
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
                            <h3 class="view-name">existing product name</h3>
                            <div class="view-meta">
                                <p>SKU:<span>1234567</span></p>
                                <p>BRAND:<a href="#">radhuni</a></p>
                            </div>
                            <div class="view-rating">
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="icofont-star">

                                </i>(3 reviews)</div>
                            <h3 class="view-price"><del>$38.00</del><span>$24.00<small>/per kilo</small></span></h3>
                            <p class="view-desc">Lorem ipsum dolor sit amet consectetur adipisicing elit non tempora
                                magni repudiandae sint suscipit tempore quis maxime explicabo veniam eos
                                reprehenderit fuga</p>
                            <div class="view-list-group"><label class="view-list-title">Share:</label>
                                <ul class="view-share-list">
                                    <li><a href="#" class="icofont-facebook" title="Facebook"></a></li>
                                    <li><a href="#" class="icofont-twitter" title="Twitter"></a></li>
                                    <li><a href="#" class="icofont-linkedin" title="Linkedin"></a></li>
                                    <li><a href="#" class="icofont-instagram" title="Instagram"></a></li>
                                </ul>
                            </div>
                            <div class="view-add-group">
                                <button class="product-add" title="Add to Cart">
                                    <i class="fas fa-shopping-cart"></i>
                                    <span>add to cart</span>
                                </button>
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
                            <div class="view-action-group">
                                <a class="view-wish wish" href="#" title="Add Your Wishlist">
                                    <i class="icofont-heart"></i>
                                    <span>add to wish</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>Shop by Category</h2>
    </div>
</section>
<section class="inner-section shop-part">
    <div class="container">
        <div class="row content-reverse">
            <div class="col-lg-3">
                <div class="shop-widget">
                    <h6 class="shop-widget-title">Filter by Price</h6>
                    <form>
                        <div class="shop-widget-group">
                            <label>
                                <input type="text" placeholder="Min - 00">
                            </label>
                            <label>
                                <input type="text" placeholder="Max - 5k">
                            </label>
                        </div>
                        <button class="shop-widget-btn">
                            <i class="fas fa-search"></i>
                            <span>search</span>
                        </button>
                    </form>
                </div>
                <div class="shop-widget">
                    <h6 class="shop-widget-title">Filter by Brand</h6>
                    <form id="filterFormBrand" onsubmit="return filterBrands()">
                        <ul class="shop-widget-list shop-widget-scroll">
                            <c:forEach var="b" items="${brands}">
                                <c:choose>
                                    <c:when test="${b.id == brandid}">
                                        <li>
                                            <div class="shop-widget-content">
                                                <input type="checkbox" id="brand${b.id}" checked value="${b.id}">
                                                <label for="brand${b.id}">${b.name}</label>
                                            </div>
                                            <span class="shop-widget-number">(${b.productCount})</span>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <div class="shop-widget-content">
                                                <input type="checkbox" id="brand${b.id}" value="${b.id}">
                                                <label for="brand${b.id}">${b.name}</label>
                                            </div>
                                            <span class="shop-widget-number">(${b.productCount})</span>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </ul>
                        <button class="shop-widget-btn" type="submit">
                            <span>filter</span>
                        </button>
                    </form>
                </div>
                <div class="shop-widget">
                    <h6 class="shop-widget-title">Filter by Category</h6>
                    <form id="filterFormCategory" onsubmit="return filterCategories()">
                        <ul class="shop-widget-list shop-widget-scroll" >
                            <c:forEach var="c" items="${categories}">
                                <c:choose>
                                    <c:when test="${c.id == cateid}">
                                        <li>
                                            <div class="shop-widget-content">
                                                <input type="checkbox" id="cate${c.id}" checked value="${c.id}">
                                                <label for="cate${c.id}">${c.name}</label>
                                            </div>
                                            <span class="shop-widget-number">(${c.productCount})</span>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <div class="shop-widget-content">
                                                <input type="checkbox" id="cate${c.id}" value="${c.id}">
                                                <label for="cate${c.id}">${c.name}</label>
                                            </div>
                                            <span class="shop-widget-number">(${c.productCount})</span>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                            </c:forEach>
                        </ul>
                        <button class="shop-widget-btn" type="submit">
                            <span>filter</span>
                        </button>
                    </form>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="top-filter">
                            <div class="filter-show"><label class="filter-label">Show :</label>
                                <select class="form-select filter-select">
                                <option value="1">8</option>
                                <option value="2">12</option>
                                <option value="3">16</option>
                            </select></div>
                            <div class="filter-short"><label class="filter-label">Sort by :</label>
                                <label>
                                    <select class="form-select filter-select">
                                        <option selected>default</option>
                                        <option value="3">trending</option>
                                        <option value="1">featured</option>
                                        <option value="2">recommend</option>
                                    </select>
                                </label>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-3 row-cols-xl-4">
                    <c:forEach var="pc" items="${proCategory}">
                        <div class="col">
                            <div class="product-card">
                                <div class="product-media">
                                    <div class="product-label"><label class="label-text sale">sale</label></div>
                                    <button class="product-wish wish">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                    <a class="product-image" href="#">
                                        <img src="${contextPath}/resources/images/${pc.image}" alt="product">
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
                                        <a href="#">(3)</a></div>
                                    <h6 class="product-name"><a href="${contextPath}/product/detail/${pc.id}">${pc.productName}</a></h6>
                                    <h6 class="product-price">
                                        <del>$${pc.priceOld}</del>
                                        <span>$${pc.price}<small>/piece</small></span>
                                    </h6>
                                    <button class="product-add" title="Add to Cart">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span>add</span>
                                    </button>
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
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function filterBrands() {
        var form = document.getElementById('filterFormBrand');
        var checkboxes = form.querySelectorAll('input[type="checkbox"]:checked');
        var brandIds = [];

        checkboxes.forEach(function(checkbox) {
            brandIds.push(checkbox.value);
        });

        if (brandIds.length > 0) {
            var baseUrl = window.location.origin + '/ptm/';
            var url = baseUrl + 'product/brands/' + brandIds.join(',');
            window.location.href = url;
        } else {
            alert("Please select at least one brand.");
        }

        return false; // Prevent form submission
    }
</script>
<script>
    function filterCategories() {
        var form = document.getElementById('filterFormCategory');
        var checkboxes = form.querySelectorAll('input[type="checkbox"]:checked');
        var categoryIds = [];

        checkboxes.forEach(function(checkbox) {
            categoryIds.push(checkbox.value);
        });

        if (categoryIds.length > 0) {
            var url = categoryIds.join(',');
            window.location.href = url;
        } else {
            alert("Please select at least one category.");
        }

        return false; // Prevent form submission
    }
</script>

