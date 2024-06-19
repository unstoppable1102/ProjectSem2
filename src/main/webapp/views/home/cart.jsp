<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/06/2024
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>cart</h2>
    </div>
</section>
<section class="inner-section checkout-part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="account-card">
                    <div class="account-title">
                        <h4>Your cart</h4>
                    </div>
                    <div class="account-content">
                        <div class="table-scroll">
                            <table class="table-list">
                                <thead>
                                <tr>
                                    <th scope="col">Serial</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">quantity</th>
                                    <th scope="col">sub total</th>
                                    <th scope="col">action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="c" items="${cartItem}" varStatus="loop">
                                        <tr>
                                            <td class="table-serial">
                                                <h6>${loop.count}</h6>
                                            </td>
                                            <td class="table-image">
                                                <img src="${contextPath}/resources/images/${c.product.image}" alt="product">
                                            </td>
                                            <td class="table-name">
                                                <h6>${c.product.productName}</h6>
                                            </td>
                                            <td class="table-price">
                                                <h6>$${c.product.price}</h6>
                                            </td>
                                            <td class="table-quantity ">
                                                <div class="cart-action-group ">
                                                    <div class="product-action m-auto">
                                                        <button class="action-minus decrease" title="Quantity Minus" >
                                                            <i class="icofont-minus"></i>
                                                        </button>
                                                        <input class="action-input quantity" title="Quantity Number" min="1"
                                                               type="text" name="quantity" value="${c.quantity}" readonly>
                                                        <input type="hidden" class="proId" value="${c.productId}">
                                                        <button class="action-plus increase" title="Quantity Plus">
                                                            <i class="icofont-plus "></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="table-brand">
                                                <h6>$${c.product.price * c.quantity} </h6>
                                            </td>
                                            <td class="table-action">
                                                <a class="trash" href="${contextPath}/cart/delete/${c.id}"
                                                   onclick="return confirm('Are you sure want to remove from cart?')">
                                                    <i class="icofont-trash"></i>
                                                </a>
                                            </td>
                                        </tr>

                                        <c:set var="total" value="${total+c.product.price*c.quantity}" />
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                       <c:choose>
                           <c:when test="${! empty cartItem}">
                               <div class="chekout-coupon"><button class="coupon-btn">Do you have a coupon code?</button>
                                   <form class="coupon-form">
                                       <input type="text" placeholder="Enter your coupon code">
                                       <button type="submit"><span>apply</span></button>
                                   </form>
                               </div>
                               <div class="checkout-charge">
                                   <ul>
                                       <li><span>Sub total</span><span>$${total}</span></li>
                                       <li><span>delivery fee</span><span>$00.00</span></li>
                                       <li><span>discount</span><span>$00.00</span></li>
                                       <li><span>Total<small>(Incl. VAT)</small></span><span>$${total}</span></li>
                                   </ul>
                               </div>
                           </c:when>
                       </c:choose>
                    </div>
                </div>
            </div>
            <c:choose>
                <c:when test="${! empty cartItem}">
                    <div class="col-lg-3 m-auto">
                        <div class="account-card mb-0">
                            <div class="checkout-proced">
                                <a href="" class="btn btn-inline">proceed to checkout</a>
                            </div>
                        </div>
                    </div>
                </c:when>
            </c:choose>
        </div>
    </div>
</section>
<script>
    function updateCart(id , quantity) {
        $.get("${contextPath}/cart/updateCart/" + id + "/" + quantity, function() {
            window.location.reload();
            // document.getElementById('submitForm').submit();
        });
    }

    document.addEventListener("DOMContentLoaded", function() {
        // Lấy tất cả các nút tăng và giảm số lượng sản phẩm
        const increaseButtons = document.querySelectorAll('.increase');
        const decreaseButtons = document.querySelectorAll('.decrease');

        // Thêm sự kiện click cho từng nút tăng
        increaseButtons.forEach(button => {
            button.addEventListener('click', function() {
                const product = button.parentElement;
                const quantityElement = product.querySelector('.quantity');
                const proId = product.querySelector('.proId').value;
                let currentQuantity = parseInt(quantityElement.value);
                quantityElement.value = currentQuantity ++;
                updateCart(proId,quantityElement.value);
            });
        });

        // Thêm sự kiện click cho từng nút giảm
        decreaseButtons.forEach(button => {
            button.addEventListener('click', function() {
                const product = button.parentElement;
                const quantityElement = product.querySelector('.quantity');
                let currentQuantity = parseInt(quantityElement.value);
                if (currentQuantity >= 1) {
                    quantityElement.value = currentQuantity --;
                    const proId = product.querySelector('.proId').value;
                    updateCart(proId,quantityElement.value);
                }
            });
        });
    });
</script>


