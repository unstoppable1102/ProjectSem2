<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/06/2024
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>checkout</h2>
    </div>
</section>
<section class="inner-section invoice-part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-scroll">
                    <table class="table-list">
                        <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">quantity</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="c" items="${cartItem}" varStatus="loop">
                            <tr>
                                <td class="table-serial">
                                    <h6>${loop.count}</h6>
                                </td>
                                <td class="table-name">
                                    <h6>${c.product.productName}</h6>
                                </td>
                                <td class="table-price">
                                    <h6>$${c.product.price}</h6>
                                </td>
                                <td class="table-quantity">
                                    <h6>${c.quantity}</h6>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <form class="col-lg-12" action="${contextPath}/orders" method="post" modelAttribute="order">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="account-card">
                            <div class="account-title">
                                <h4>Order Details</h4>
                            </div>
                            <div class="account-content">
                                <ul class="invoice-details">
                                    <li>
                                        <h6>FullName: </h6>
                                        <p>${sessionScope.fullName}</p>
                                    </li>
                                    <li>
                                        <h6>Order Time</h6>
                                        <p>${order.orderDate}</p>
                                    </li>
                                    <li>
                                        <h6>Email: </h6>
                                        <p>${sessionScope.email}</p>
                                    </li>
                                    <li>
                                        <h6>Phone: </h6>
                                        <p>${sessionScope.phone}</p>
                                    </li>
                                    <li>
                                        <h6>Delivery Location</h6>
                                        <p>${sessionScope.address}</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="account-card">
                            <div class="account-title">
                                <h4>Billing Details</h4>
                            </div>
                            <div class="account-content">
                                <ul class="invoice-details">
                                    <li>
                                        <h6>Total Item</h6>
                                        <p>${countCartItem} Items</p>
                                    </li>
                                    <li>
                                        <h6>Sub Total</h6>
                                        <p>$${totalPrice}</p>
                                    </li>
                                    <li>
                                        <h6>Discount</h6>
                                        <p>$0.00</p>
                                    </li>
                                    <li>
                                        <h6>Payment Method</h6>
                                        <p>Cash On Delivery</p>
                                    </li>
                                    <li>
                                        <h6>Total<small>(Incl. VAT)</small></h6>
                                        <p>$${totalPrice}</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center mt-5">
                        <button class="btn btn-inline" href="#">
                            <i class="icofont-download"></i>
                            <span>Order</span>
                        </button>
                    </div>
                </div>
            </form>

    </div>
</section>