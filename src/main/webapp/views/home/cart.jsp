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
                        <h4>Your order</h4>
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
                                                        <button class="action-minus" title="Quantity Minus">
                                                            <i class="icofont-minus"></i>
                                                        </button>
                                                        <input class="action-input" title="Quantity Number" type="text" name="quantity" value="${c.quantity}">
                                                        <button class="action-plus" title="Quantity Plus"><i class="icofont-plus"></i></button>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="table-brand">
                                                <h6>$${c.product.price * c.quantity} </h6>
                                            </td>
                                            <td class="table-action">
                                                <a class="view" href="#" title="Quick View" data-bs-toggle="modal" data-bs-target="#product-view">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                                <a class="trash" href="${contextPath}/cart/delete/${c.id}" onclick="return confirm('Are you sure want to remove from cart?')">
                                                    <i class="icofont-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <c:set var="total" value="${total+c.product.price*c.quantity}" />
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="chekout-coupon"><button class="coupon-btn">Do you have a coupon code?</button>
                            <form class="coupon-form"><input type="text"
                                                             placeholder="Enter your coupon code"><button
                                    type="submit"><span>apply</span></button></form>
                        </div>
                        <div class="checkout-charge">
                            <ul>
                                <li><span>Sub total</span><span>$${total}</span></li>
                                <li><span>delivery fee</span><span>$00.00</span></li>
                                <li><span>discount</span><span>$00.00</span></li>
                                <li><span>Total<small>(Incl. VAT)</small></span><span>$${total}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 m-auto">
                <div class="account-card mb-0">
                    <div class="checkout-proced">
                        <a href="invoice.html" class="btn btn-inline">proced to checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="contact-add">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i
                class="icofont-close"></i></button>
            <form class="modal-form">
                <div class="form-title">
                    <h3>add new contact</h3>
                </div>
                <div class="form-group"><label class="form-label">title</label><select class="form-select">
                    <option selected>choose title</option>
                    <option value="primary">primary</option>
                    <option value="secondary">secondary</option>
                </select></div>
                <div class="form-group"><label class="form-label">number</label><input class="form-control"
                                                                                       type="text" placeholder="Enter your number"></div><button class="form-btn"
                                                                                                                                                 type="submit">save contact info</button>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="address-add">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i
                class="icofont-close"></i></button>
            <form class="modal-form">
                <div class="form-title">
                    <h3>add new address</h3>
                </div>
                <div class="form-group"><label class="form-label">title</label><select class="form-select">
                    <option selected>choose title</option>
                    <option value="home">home</option>
                    <option value="office">office</option>
                    <option value="Bussiness">Bussiness</option>
                    <option value="academy">academy</option>
                    <option value="others">others</option>
                </select></div>
                <div class="form-group"><label class="form-label">address</label><textarea class="form-control"
                                                                                           placeholder="Enter your address"></textarea></div><button class="form-btn"
                                                                                                                                                     type="submit">save address info</button>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="payment-add">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i
                class="icofont-close"></i></button>
            <form class="modal-form">
                <div class="form-title">
                    <h3>add new payment</h3>
                </div>
                <div class="form-group"><label class="form-label">card number</label><input class="form-control"
                                                                                            type="text" placeholder="Enter your card number"></div><button class="form-btn"
                                                                                                                                                           type="submit">save card info</button>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="contact-edit">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i
                class="icofont-close"></i></button>
            <form class="modal-form">
                <div class="form-title">
                    <h3>edit contact info</h3>
                </div>
                <div class="form-group"><label class="form-label">title</label><select class="form-select">
                    <option value="primary" selected>primary</option>
                    <option value="secondary">secondary</option>
                </select></div>
                <div class="form-group"><label class="form-label">number</label><input class="form-control"
                                                                                       type="text" value="+8801838288389"></div><button class="form-btn" type="submit">save contact
                info</button>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="address-edit">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i
                class="icofont-close"></i></button>
            <form class="modal-form">
                <div class="form-title">
                    <h3>edit address info</h3>
                </div>
                <div class="form-group"><label class="form-label">title</label><select class="form-select">
                    <option value="home" selected>home</option>
                    <option value="office">office</option>
                    <option value="Bussiness">Bussiness</option>
                    <option value="academy">academy</option>
                    <option value="others">others</option>
                </select></div>
                <div class="form-group"><label class="form-label">address</label><textarea class="form-control"
                                                                                           placeholder="jalkuri, fatullah, narayanganj-1420. word no-09, road no-17/A"></textarea>
                </div><button class="form-btn" type="submit">save address info</button>
            </form>
        </div>
    </div>
</div>
<script>
    function showAddCart(productId, quantity) {
        $.ajax({
            url: "${pageContext.servletContext.contextPath}/cart/add",
            type: "POST",
            data: {
                productId: productId,
                quantity: quantity
            },
            success: function(countCartItem) {
                $("#cartItemCount").text(countCartItem);
            },
            error: function() {
                alert("Error adding to cart");
            }
        });
    }
</script>