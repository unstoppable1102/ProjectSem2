<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 03/06/2024
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>wishlist</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item"><a href="shop-4column.html">shop grid</a></li>
            <li class="breadcrumb-item active" aria-current="page">wishlist</li>
        </ol>
    </div>
</section>
<section class="inner-section wishlist-part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-scroll">
                    <table class="table-list">
                        <thead>
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">Product</th>
                                <th scope="col">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">status</th>
                                <th scope="col">shopping</th>
                                <th scope="col">action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="w" items="${wishlists}" varStatus="loop">
                                <tr>
                                    <td class="table-serial">
                                        <h6>${loop.count}</h6>
                                    </td>
                                    <td class="table-image">
                                        <img src="${contextPath}/resources/images/${w.product.image}" alt="product">
                                    </td>
                                    <td class="table-name">
                                        <h6>${w.product.productName}</h6>
                                    </td>
                                    <td class="table-price">
                                        <h6>$${w.product.price}</h6>
                                    </td>
                                    <c:choose>
                                        <c:when test="${w.product.status}">
                                            <td class="table-status">
                                                <h6 class="stock-in">stock In</h6>
                                            </td>
                                        </c:when>
                                        <c:otherwise>
                                            <td class="table-status">
                                                <h6 class="stock-out">stock out</h6>
                                            </td>
                                        </c:otherwise>
                                    </c:choose>
                                    <td class="table-shop">
                                        <button class="product-add" title="Add to Cart">add to cart</button>
                                    </td>
                                    <td class="table-action">
                                        <a onclick="return confirm('Are you sure want to remove from wishlist?')" class="trash" href="${contextPath}/wishlist/delete/${w.id}" title="Remove Wishlist">
                                            <i class="icofont-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
