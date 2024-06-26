<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 14/06/2024
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>Order</h2>
    </div>
</section>
<section class="inner-section orderlist-part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="orderlist-filter">
                    <h5>total order <span>- (${counterOrder})</span></h5>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">

                <c:forEach var="o" varStatus="loop" items="${orders.content}" >


                <div class="orderlist">
                    <div class="orderlist-head">
                        <h5>order#${loop.count}</h5>
                        <h5>order recieved</h5>
                    </div>
                    <div class="orderlist-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="order-track">
                                    <ul class="order-track-list">
                                        <li class="order-track-item active"><i class="icofont-check"></i><span>order
                                                    recieved</span></li>
                                        <li class="order-track-item"><i class="icofont-close"></i><span>order
                                                    processed</span></li>
                                        <li class="order-track-item"><i class="icofont-close"></i><span>order
                                                    shipped</span></li>
                                        <li class="order-track-item"><i class="icofont-close"></i><span>order
                                                    delivered</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <ul class="orderlist-details">
                                    <li>
                                        <h6>order id</h6>
                                        <p>${o.id}</p>
                                    </li>
                                    <li>
                                        <h6>Total Item</h6>
                                        <p>6 Items</p>
                                    </li>
                                    <li>
                                        <h6>Order Time</h6>
                                        <p><fmt:formatDate value="${o.orderDate}" pattern="dd/MM/yyyy" /></p>
                                    </li>
                                    <li>
                                        <h6>Delivery Time</h6>
                                        <p>12th February 2025</p>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4">
                                <ul class="orderlist-details">
                                    <li>
                                        <h6>Sub Total</h6>
                                        <p><fmt:formatNumber value="${o.total}" type="currency" /></p>
                                    </li>
                                    <li>
                                        <h6>discount</h6>
                                        <p>$0</p>
                                    </li>
                                    <li>
                                        <h6>delivery fee</h6>
                                        <p>$0</p>
                                    </li>
                                    <li>
                                        <h6>Total<small>(Incl. VAT)</small></h6>
                                        <p><fmt:formatNumber value="${o.total}" type="currency" /></p>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-3">
                                <div class="orderlist-deliver">
                                    <h6>Delivery location</h6>
                                    <p>jalkuri, fatullah, narayanganj-1420. word no-09, road no-17/A</p>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="table-scroll">
                                    <table class="table-list">
                                        <thead>
                                        <tr>
                                            <th scope="col">Serial</th>
                                            <th scope="col">Product</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">brand</th>
                                            <th scope="col">quantity</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="or1" varStatus="loop" items="${o.orderItems}" >

                                        <tr>
                                            <td class="table-serial">
                                                <h6>${loop.count}</h6>
                                            </td>
                                            <td class="table-image"><img src="${contextPath}/resources/images/${or1.product.image}"
                                                                         alt="product"></td>
                                            <td class="table-name">
                                                <h6>${or1.product.productName}</h6>
                                            </td>
                                            <td class="table-price">
                                                <h6><fmt:formatNumber value="${or1.product.price}" type="currency" /></h6>
                                            </td>
                                            <td class="table-brand">
                                                <h6>Fresh Company</h6>
                                            </td>
                                            <td class="table-quantity">
                                                <h6>${or1.quantity}</h6>
                                            </td>
                                        </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                </c:forEach>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="bottom-paginate">
                    <p class="page-info">Show ${orders.content.size()} of ${orders.totalElements} results</p>
                    <ul class="pagination">
                        <c:choose>
                            <c:when test="${not orders.first}">
                                <li class="page-item">
                                    <a class="page-link" href="?page=${orders.number - 1}&size=${orders.size}&sort=${sort}">
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
                        <c:forEach begin="0" end="${orders.totalPages - 1}" step="1" varStatus="status">
                            <c:choose>
                                <c:when test="${status.index == orders.number}">
                                    <li class="page-item active">
                                        <span class="page-link">${status.index + 1}</span>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item">
                                        <a class="page-link" href="?page=${status.index}&size=${orders.size}&sort=${sort}">
                                                ${status.index + 1}
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <c:choose>
                            <c:when test="${not orders.last}">
                                <li class="page-item">
                                    <a class="page-link" href="?page=${orders.number + 1}&size=${orders.size}&sort=${sort}">
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
</section>