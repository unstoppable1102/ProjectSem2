<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="container mx-auto">
        <div class="card adaptable-card">
            <div class="card-body">
                <div class="lg:flex items-center justify-between mb-4">
                    <h3 class="mb-4 lg:mb-0">Products</h3>
                </div>
                <div class="flex-wrap inline-flex xl:flex items-center gap-2 mb-3">
                    <a class="btn btn-default btn-solid mr-2" href="${contextPath}/admin/product/add">
                        <span class="flex items-center justify-center gap-2">
                            <span class="text-lg">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" class="w-6 h-6">
                                    <path fill-rule="evenodd"
                                          d="M12 3.75a.75.75 0 01.75.75v6.75h6.75a.75.75 0 010 1.5h-6.75v6.75a.75.75 0 01-1.5 0v-6.75H4.5a.75.75 0 010-1.5h6.75V4.5a.75.75 0 01.75-.75z"
                                          clip-rule="evenodd">

                                    </path>
                                </svg>
						    </span>
                            <span>Add New Product</span>
					    </span>
                    </a>

                </div>
                <div class="overflow-x-auto">
                    <table   class="table-default table-hover data-table">
                        <thead>
                        <tr>
                            <th>STT</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Brand</th>
                            <th>Quantity</th>
                            <th>Status</th>
                            <th>Price</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="p" varStatus="loop" items="${products.content}" >
                            <tr>
                                <td>${loop.count}</td>
                                <td>
                                    <div class="flex items-center">
										<span class="avatar avatar-rounded avatar-md">
											<img class="avatar-img avatar-rounded" src="${contextPath}/resources/images/${p.image}" alt="">
										</span>
                                        <span class="ml-2 rtl:mr-2 font-semibold">${p.productName}</span>
                                    </div>
                                </td>
                                <td><span class="capitalize">${p.category.name}</span></td>
                                <td><span class="capitalize">${p.brand.name}</span></td>
                                <td>${p.quantity}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${p.status == true}">
                                            <div class="flex items-center gap-2">
                                                <span class="badge-dot bg-emerald-500"></span>
                                                <span class="capitalize font-semibold text-emerald-500">In Stock</span>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="flex items-center gap-2">
                                                <span class="badge-dot bg-red-500"></span>
                                                <span class="capitalize font-semibold text-red-500">Out Of Stock</span>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td><span>$<f:formatNumber value="${p.price}"/></span></td>
                                <td>
                                    <div class="flex justify-end text-lg">
                                        <a class="cursor-pointer p-2 hover:text-indigo-600" href="${contextPath}/admin/product/edit/${p.id}">
                                            <svg stroke="currentColor" fill="none" stroke-width="2"
                                                 viewBox="0 0 24 24" aria-hidden="true" height="1em"
                                                 width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                        stroke-linecap="round" stroke-linejoin="round"
                                                        d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                            </svg>
                                        </a>
                                        <a class="cursor-pointer p-2 hover:text-red-500" href="${contextPath}/admin/product/delete/${p.id}" > <svg
                                                stroke="currentColor" fill="none" stroke-width="2" onclick="return confirm('Bạn có muốn xóa không?')"
                                                viewBox="0 0 24 24" aria-hidden="true" height="1em"
                                                width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                        </svg>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <c:choose>
                            <c:when test="${not products.first}">
                                 <span class="pagination-pager pagination-pager-prev">
                                     <a href="?page=${products.number - 1}&size=${products.size}">
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
                        <c:forEach begin="0" end="${products.totalPages - 1}" step="1" varStatus="status">
                            <c:choose>
                                <c:when test="${status.index == products.number}">
                                    <li class="pagination-pager active">${status.index + 1}</li>
                                </c:when>
                                <c:otherwise>
                                    <li class="pagination-pager">
                                        <a href="?page=${status.index}&size=${products.size}">
                                                ${status.index + 1}
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>
                        <c:choose>
                            <c:when test="${not products.last}">
                                    <span class="pagination-pager pagination-pager-next">
                                        <a href="?page=${products.number + 1}&size=${products.size}">
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
    </div>
</div>
