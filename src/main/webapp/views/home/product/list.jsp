<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/05/2024
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<div class="modal fade" id="product-view">
    <div class="modal-dialog">
        <div class="modal-content">
            <button class="modal-close icofont-close"  onclick="closeModel()" id="productModal" data-bs-dismiss="modal"></button>
            <div class="product-view">
                <div class="row">
                    <div class="col-md-6 col-lg-6">
                        <div class="view-gallery">
                            <div class="view-label-group"><label class="view-label new">new</label><label
                                    class="view-label off">-10%</label></div>
                            <ul class="preview-slider slider-arrow">
                                <li><img id="productImage" src="${contextPath}/resources/home/images/product/01.jpg" alt="product"></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="view-details">
                            <h3 class="view-name" id="productName"></h3>
                            <div class="view-meta">
                                <p>SKU:<span>1234567</span></p>
                                <p>BRAND:<a href="#" id="productBrand">radhuni</a></p>
                            </div>
                            <div class="view-rating">
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="active icofont-star"></i>
                                <i class="icofont-star">

                                </i>(3 reviews)</div>
                            <h3 class="view-price"><del id="productPrice">$38.00</del><span id="productSalePrice">$24.00</span></h3>
                            <p class="view-desc" id="productDescription">Lorem ipsum dolor sit amet consectetur adipisicing elit non tempora
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
        <h2>Shop</h2>
    </div>
</section>
<section class="inner-section shop-part">
    <div class="container">
        <div class="row content-reverse">
            <div class="col-lg-3">
                <div class="shop-widget">
                    <h6 class="shop-widget-title">Filter by Price</h6>
                    <form action="${contextPath}/product/searchPrice">
                        <div class="shop-widget-group">
                            <label>
                                <input type="text" placeholder="Min - 00" name="min">
                            </label>
                            <label>
                                <input type="text" placeholder="Max - 5k" name="max">
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
                        <ul class="shop-widget-list">
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
                        <ul class="shop-widget-list" >
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
                <div class="row mb-5">
                    <div class="col-lg-12">
                        <div class="">
                            <form id="submitForm" method="get" action="${contextPath}/product" class="d-flex justify-content-between">
                                <div class="filter-show">
                                    <label class="filter-label">Show :</label>
                                    <select id="pageSizeSelect" name="size" class="form-select filter-select" onchange="submitPageSize()">
                                        <option value="8" <c:if test="${size == 8}">selected</c:if>>8</option>
                                        <option value="12" <c:if test="${size == 12}">selected</c:if>>12</option>
                                        <option value="16" <c:if test="${size == 16}">selected</c:if>>16</option>
                                    </select>
                                </div>
                                <div class="filter-short">
                                    <label class="filter-label">Sort by :</label>
                                    <label for="sortSelect"></label><select id="sortSelect" name="sort" class="form-select filter-select" onchange="submitSortForm()">
                                        <option value="default" <c:if test="${sort == 'default'}">selected</c:if>>Default</option>
                                        <option value="name_asc" <c:if test="${sort == 'name_asc'}">selected</c:if>>Name A-Z</option>
                                        <option value="name_desc" <c:if test="${sort == 'name_desc'}">selected</c:if>>Name Z-A</option>
                                        <option value="price_asc" <c:if test="${sort == 'price_asc'}">selected</c:if>>Price ASC</option>
                                        <option value="price_desc" <c:if test="${sort == 'price_desc'}">selected</c:if>>Price DESC</option>
                                    </select>
                                </div>
                                <input type="hidden" name="page" value="${currentPage}" />
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-3 row-cols-xl-4">
                    <c:forEach var="p" items="${products.content}">
                        <div class="col">
                            <div class="product-card">
                                <div class="product-media">
                                    <div class="product-label"><label class="label-text sale">sale</label></div>
                                    <f:form method="post" action="${contextPath}/wishlist/add" modelAttribute="wishlist">
                                        <f:hidden path="productId" value="${p.id}" />
                                        <f:hidden path="accountId" value="${sessionScope.userId}" />
                                        <button class="product-wish wish ${wishlistProductIds.contains(product.id) ? 'active' : ''} ">
                                            <i class="fas fa-heart"></i>
                                        </button>
                                    </f:form>
                                    <a class="product-image" href="${contextPath}/product/detail/${p.id}">
                                        <img src="${contextPath}/resources/images/${p.image}" alt="product">
                                    </a>
                                    <div class="product-widget">
                                        <a title="Product View" href="#" onclick="handleDetail(${p.id})" class="fas fa-eye"  data-bs-toggle="modal" data-bs-target="#product-view"></a>
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
                                    <h6 class="product-name"><a href="${contextPath}/product/detail/${p.id}">${p.productName}</a></h6>
                                    <h6 class="product-price">
                                        <del>$${p.priceOld}</del>
                                        <span>$${p.price}<small>/piece</small></span>
                                    </h6>
                                    <f:form method="get" action="${contextPath}/cart/add/${p.id}" modelAttribute="cartItem">
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
                        <div class="bottom-paginate">
                            <p class="page-info">Show ${products.content.size()} of ${products.totalElements} results</p>
                            <ul class="pagination">
                                <c:choose>
                                    <c:when test="${not products.first}">
                                        <li class="page-item">
                                            <a class="page-link" href="?page=${products.number - 1}&size=${products.size}&sort=${sort}">
                                                <i class="fas fa-long-arrow-alt-left"></i>
                                            </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item disabled">
                                        <span class="page-link">
                                            <i class="fas fa-long-arrow-alt-left"></i>
                                        </span>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                                <c:forEach begin="0" end="${products.totalPages - 1}" step="1" varStatus="status">
                                    <c:choose>
                                        <c:when test="${status.index == products.number}">
                                            <li class="page-item active">
                                                <span class="page-link">${status.index + 1}</span>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="page-item">
                                                <a class="page-link" href="?page=${status.index}&size=${products.size}&sort=${sort}">
                                                    ${status.index + 1}
                                                </a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>

                                <c:choose>
                                    <c:when test="${not products.last}">
                                        <li class="page-item">
                                            <a class="page-link" href="?page=${products.number + 1}&size=${products.size}&sort=${sort}">
                                                <i class="fas fa-long-arrow-alt-right"></i>
                                            </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item disabled">
                                            <span class="page-link">
                                                <i class="fas fa-long-arrow-alt-right"></i>
                                            </span>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                    </div>
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
            var url = 'product/brands/' + brandIds.join(',');
            window.location.href = url;
        } else {
            alert("Please select at least one brand.");
        }

        return false; // Prevent form submission
    }
    function  handleDetail(id){
        var contextPath = '<%= request.getContextPath() %>';
        $.ajax({
            url: contextPath+ '/product/' + id,
            type: 'GET',
            success: function(product) {
                $('#productBrand').text(product.brand.name);
                $('#productName').text(product.productName);
                var tempElement = $("<div>").html(product.description);
                var plainText = tempElement.text();
                console.log(plainText);  // Output: abc
                $('#productDescription').text(plainText);
                $('#productPrice').text("$" + product.priceOld);
                $('#productSalePrice').text("$" +product.price);
                $('#productImage').attr('src', contextPath + '/resources/images/' + product.image);


            },
            error: function() {
              console.log("Hello")
            }
        });
    }

    function closeModel() {
        // Clear the modal content
        $('#productName').text('');
        $('#productDescription').text('');
        $('#productPrice').text('');
        $('#productSalePrice').text('');
        $('#productImage').attr('src', '');
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
            var url = 'product/categories/' + categoryIds.join(',');
            window.location.href = url;
        } else {
            alert("Please select at least one category.");
        }

        return false; // Prevent form submission
    }

</script>
<script type="text/javascript">
    function submitPageSize() {
        document.getElementById('submitForm').submit();
    }

    function submitSortForm() {
        document.getElementById('submitForm').submit();
    }

    function submitSearchForm() {
        document.getElementById('searchForm').submit();
    }

</script>

