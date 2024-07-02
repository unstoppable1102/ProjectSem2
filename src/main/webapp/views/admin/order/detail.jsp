<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="h-full flex flex-auto flex-col justify-between">
    <!-- Content start -->
    <main class="h-full">
        <div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
            <div class="container mx-auto">
                <div class="mb-6">
                    <div class="flex items-center mb-2">
                        <h3>
                            <span>Order</span>
                            <span class="ltr:ml-2 rtl:mr-2">#${order.id}</span>
                        </h3>
                        <div class="tag border-0 rounded-md ltr:ml-2 rtl:mr-2 bg-emerald-100 text-emerald-600 dark:bg-emerald-500/20 dark:text-emerald-100">
                            Paid
                        </div>
                        <div class="tag border-0 rounded-md ltr:ml-2 rtl:mr-2 bg-cyan-100 text-cyan-600 dark:bg-cyan-500/20 dark:text-cyan-100">
                            Fulfilled
                        </div>
                    </div>
                    <span class="flex items-center">
                        <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24"
                             aria-hidden="true" class="text-lg" height="1em" width="1em"
                             xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                  d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z">
                            </path>
                        </svg>
                        <span class="ltr:ml-1 rtl:mr-1">
                             <f:formatDate value="${order.orderDate}" pattern="EEE dd-MMM-yyyy, hh:mm a" />
                            </span>
                    </span>
                </div>
                <div class="xl:flex gap-4">
                    <div class="w-full">
                        <div class="card adaptable-card">
                            <div class="card-body">
                                <div class="overflow-x-auto">
                                    <table class="table-default table-hover">
                                        <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="od" varStatus="loop" items="${order.orderItems}" >
                                        <tr>
                                            <td>
                                                <div class="flex">
                                                    <span class="avatar avatar-rounded avatar-lg" data-avatar-size="90">
                                                        <img class="avatar-img avatar-rounded"
                                                             src="${contextPath}/resources/images/${od.product.image}"
                                                             loading="lazy">
                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2 " style="display: flex;align-items: center">
                                                        <h6 class="mb-2">${od.product.productName}</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <span>$${od.product.price}</span>
                                            </td>
                                            <td>${od.quantity}</td>
                                            <td>
                                                <span>$${od.price}</span>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="xl:grid grid-cols-2 gap-4">
                            <div class="card-layout-frame">
                                <div class="card-body">
                                    <h5 class="mb-4">Payment Summary</h5>
                                    <ul>
                                        <li class="flex items-center justify-between mb-3">
                                            <span>Subtotal</span>
                                            <span class="font-semibold">
                                                <span>$${order.total}</span>
                                            </span>
                                        </li>
                                        <li class="flex items-center justify-between mb-3">
                                            <span>Delivery fee</span>
                                            <span class="font-semibold">
                                                <span>$0</span>
                                            </span>
                                        </li>
                                        <li class="flex items-center justify-between mb-3">
                                            <span>Tax(0%)</span>
                                            <span class="font-semibold">
                                                <span>$0</span>
                                            </span>
                                        </li>
                                        <hr class="mb-3">
                                        <li class="flex items-center justify-between">
                                            <span>Total</span>
                                            <span class="font-semibold">
                                                <span>$${order.total}</span>
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="xl:max-w-[360px] w-full">
                        <div class="card card-layout-frame" role="presentation">
                            <div class="card-body">
                                <h5 class="mb-4">Customer</h5>
                                <a class="group flex items-center justify-between" href="#">
                                    <div class="flex items-center">
															<span class="avatar avatar-circle avatar-md">
																<img class="avatar-img avatar-circle"
                                                                     src="${contextPath}/resources/images/${order.account.avatar}" loading="lazy">
															</span>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <div
                                                    class="font-semibold group-hover:text-gray-900 group-hover:dark:text-gray-100">
                                                ${order.account.username}
                                            </div>
                                            <span>
																	<span class="font-semibold">11 </span>
																	previous orders
																</span>
                                        </div>
                                    </div>
                                    <svg stroke="currentColor" fill="currentColor" stroke-width="0"
                                         viewBox="0 0 20 20" aria-hidden="true"
                                         class="text-xl hidden group-hover:block" height="1em"
                                         width="1em" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M11 3a1 1 0 100 2h2.586l-6.293 6.293a1 1 0 101.414 1.414L15 6.414V9a1 1 0 102 0V4a1 1 0 00-1-1h-5z">
                                        </path>
                                        <path
                                                d="M5 5a2 2 0 00-2 2v8a2 2 0 002 2h8a2 2 0 002-2v-3a1 1 0 10-2 0v3H5V7h3a1 1 0 000-2H5z">
                                        </path>
                                    </svg>
                                </a>
                                <hr class="my-5">
                                <span class="flex items-center gap-2 mb-4">
														<svg stroke="currentColor" fill="currentColor" stroke-width="0"
                                                             viewBox="0 0 20 20" aria-hidden="true"
                                                             class="text-xl opacity-70" height="1em" width="1em"
                                                             xmlns="http://www.w3.org/2000/svg">
															<path
                                                                    d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z">
															</path>
															<path
                                                                    d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z">
															</path>
														</svg>
														<span class="font-semibold">${order.account.email}</span>
													</span>
                                <span class="flex items-center gap-2">
														<svg stroke="currentColor" fill="currentColor" stroke-width="0"
                                                             viewBox="0 0 20 20" aria-hidden="true"
                                                             class="text-xl opacity-70" height="1em" width="1em"
                                                             xmlns="http://www.w3.org/2000/svg">
															<path
                                                                    d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z">
															</path>
														</svg>
														<span class="font-semibold">${order.account.phone}</span>
													</span>
                                <hr class="my-5">

                                <h6 class="mb-4">Billing address</h6>
                                <address class="not-italic">
                                    <div class="mb-1">${order.account.address}</div>

                                </address>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

</div>