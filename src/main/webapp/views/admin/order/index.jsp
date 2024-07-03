<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="h-full flex flex-auto flex-col justify-between">
    <!-- Content start -->
    <main class="h-full">
        <div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
            <div class="card adaptable-card">
                <h3 class="mb-4">Orders</h3>
                <div class="overflow-x-auto">
                    <table  class="table-default table-hover">
                        <thead>
                            <th>STT</th>
                            <th>Date</th>
                            <th>Customer</th>
                            <th>Status</th>
                            <th>Payment Method</th>
                            <th>Total</th>
                            <th></th>
                        </thead>
                        <tbody>
                            <c:forEach var="o" varStatus="loop" items="${orders.content}" >
                                <tr>
                                    <td>
                                        <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">${loop.count}</span>
                                    </td>
                                    <td>
                                        <span><f:formatDate value="${o.orderDate}" pattern="dd/MM/yyyy" /></span>
                                    </td>
                                    <td>
                                        ${o.account.username}
                                    </td>
                                    <td>
                                        <form id="updateStatusForm" action="${contextPath}/admin/order/updateOrderStatus/${o.id}" method="post">
                                            <div class="flex items-center">
                                                <label>
                                                    <select name="orderStatus" class="input form-select"
                                                            onchange="document.getElementById('updateStatusForm').submit()">
                                                        <option value="NEW" ${o.orderStatus == 'NEW' ? 'selected' : ''}>NEW</option>
                                                        <option value="PROCESSING" ${o.orderStatus == 'PROCESSING' ? 'selected' : ''}>PROCESSING</option>
                                                        <option value="SHIPPED" ${o.orderStatus == 'SHIPPED' ? 'selected' : ''}>SHIPPED</option>
                                                        <option value="DELIVERED" ${o.orderStatus == 'DELIVERED' ? 'selected' : ''}>DELIVERED</option>
                                                        <option value="COMPLETED" ${o.orderStatus == 'COMPLETED' ? 'selected' : ''}>COMPLETED</option>
                                                    </select>
                                                </label>
                                            </div>
                                        </form>
                                    </td>
                                    <td>Cash On Delivery</td>
                                    <td><span>$${o.total}</span></td>
                                    <td>
                                        <div class="flex justify-between text-lg">
                                            <a href="${contextPath}/admin/order/detail/${o.id}">
                                                <span class="cursor-pointer p-2 hover:text-indigo-600" data-bs-toggle="tooltip" data-bs-title="View">
                                                    <svg stroke="currentColor" fill="none"
                                                         stroke-width="2" viewBox="0 0 24 24"
                                                         aria-hidden="true" height="1em" width="1em"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path stroke-linecap="round"
                                                              stroke-linejoin="round"
                                                              d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                                        <path stroke-linecap="round"
                                                              stroke-linejoin="round"
                                                              d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z">
                                                        </path>
                                                    </svg>
                                                </span>
                                            </a>
                                            <a href="${contextPath}/admin/order/delete/${o.id}">
                                                <span class="cursor-pointer p-2 hover:text-red-500" data-bs-toggle="tooltip" data-bs-title="Delete">
                                                    <svg stroke="currentColor" fill="none"
                                                         stroke-width="2" viewBox="0 0 24 24"
                                                         aria-hidden="true" height="1em" width="1em"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path stroke-linecap="round"
                                                              stroke-linejoin="round"
                                                              d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16">
                                                        </path>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <c:choose>
                            <c:when test="${not orders.first}">
                                 <span class="pagination-pager pagination-pager-prev">
                                     <a href="?page=${orders.number - 1}&size=${orders.size}">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                        </svg>
                                     </a>
                                </span>
                            </c:when>
                            <c:otherwise>
                                <span class="pagination-pager pagination-pager-prev pagination-pager-disabled">
                                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                            </c:otherwise>
                        </c:choose>
                        <c:forEach begin="0" end="${orders.totalPages - 1}" step="1" varStatus="status">
                            <c:choose>
                                <c:when test="${status.index == orders.number}">
                                    <li class="pagination-pager active">${status.index + 1}</li>
                                </c:when>
                                <c:otherwise>
                                    <li class="pagination-pager">
                                        <a href="?page=${status.index}&size=${orders.size}">
                                                ${status.index + 1}
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>
                        <c:choose>
                            <c:when test="${not orders.last}">
                                    <span class="pagination-pager pagination-pager-next">
                                        <a href="?page=${orders.number + 1}&size=${orders.size}">
                                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path>
                                            </svg>
                                        </a>
                                    </span>
                            </c:when>
                            <c:otherwise>
                                <span class="pagination-pager pagination-pager-next pagination-pager-disabled">
                                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- Content end -->
</div>
<script>
    function submitForm() {
        document.getElementById("updateStatusForm").submit();
    }
</script>
