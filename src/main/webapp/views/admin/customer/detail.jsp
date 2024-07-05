<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <h3 class="mb-4">Customer Details</h3>
    <div class="container mx-auto">
        <div class="flex flex-col xl:flex-row gap-4">
            <div class="card card-layout-frame">
                <div class="card-body">
                    <div class="flex flex-col xl:justify-between h-full 2xl:min-w-[360px] mx-auto">
                        <div class="flex xl:flex-col items-center gap-4">
                            <span class="avatar avatar-circle avatar-lg" data-avatar-size="90">
                                <img class="avatar-img avatar-circle" src="${contextPath}/resources/images/${account.avatar}" loading="lazy" alt="">
                            </span>
                            <h4 class="font-bold">${account.fullName}</h4>
                        </div>
                        <div class="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-1 gap-y-7 gap-x-4 mt-8">
                            <div>
                                <span>Email</span>
                                <c:choose>
                                    <c:when test="${account.email != null}">
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">${account.email}</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">N/A</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div>
                                <span>Phone</span>
                                <c:choose>
                                    <c:when test="${account.phone != null}">
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">${account.phone}</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">N/A</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div>
                                <span>Address</span>
                                <c:choose>
                                    <c:when test="${account.address != null}">
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">${account.address}</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">N/A</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div>
                                <span>Date of birth</span>
                                <c:choose>
                                    <c:when test="${account.birthday != null}">
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">
                                            <f:formatDate value="${account.birthday}" pattern="dd/MM/yyyy" />
                                        </p>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="text-gray-700 dark:text-gray-200 font-semibold">N/A</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div>
                                <span>Title</span>
                                <p class="text-gray-700 dark:text-gray-200 font-semibold">Compliance Manager</p>
                            </div>
                            <div class="mb-7">
                                <span>Social</span>
                                <div class="flex mt-4 gap-2">
                                    <button class="btn btn-default btn-icon btn-sm rounded-full">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 320 512" class="text-[#1773ea]" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path>
                                        </svg>
                                    </button>
                                    <button class="btn btn-default btn-icon btn-sm rounded-full">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" class="text-[#1da1f3]" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path>
                                        </svg>
                                    </button>
                                    <button class="btn btn-default btn-icon btn-sm rounded-full">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 448 512" class="text-[#0077b5]" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"></path>
                                        </svg>
                                    </button>
                                    <button class="btn btn-default btn-icon btn-sm rounded-full">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 384 512" class="text-[#df0018]" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M204 6.5C101.4 6.5 0 74.9 0 185.6 0 256 39.6 296 63.6 296c9.9 0 15.6-27.6 15.6-35.4 0-9.3-23.7-29.1-23.7-67.8 0-80.4 61.2-137.4 140.4-137.4 68.1 0 118.5 38.7 118.5 109.8 0 53.1-21.3 152.7-90.3 152.7-24.9 0-46.2-18-46.2-43.8 0-37.8 26.4-74.4 26.4-113.4 0-66.2-93.9-54.2-93.9 25.8 0 16.8 2.1 35.4 9.6 50.7-13.8 59.4-42 147.9-42 209.1 0 18.9 2.7 37.5 4.5 56.4 3.4 3.8 1.7 3.4 6.9 1.5 50.4-69 48.6-82.5 71.4-172.8 12.3 23.4 44.1 36 69.3 36 106.2 0 153.9-103.5 153.9-196.8C384 71.3 298.2 6.5 204 6.5z"></path>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="mt-4 flex flex-col xl:flex-row gap-2">
                            <button class="btn btn-default w-full">
                                <span class="flex items-center justify-center">
                                    <span class="text-lg">
                                        <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                        </svg>
                                    </span>
                                    <span class="ltr:ml-1 rtl:mr-1">Delete</span>
                                </span>
                            </button>
                            <button class="btn btn-solid w-full">
                                <span class="flex items-center justify-center">
                                    <span class="text-lg">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z"></path>
                                            <path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" clip-rule="evenodd"></path>
                                        </svg>
                                    </span>
                                    <span class="ltr:ml-1 rtl:mr-1">Edit</span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w-full">
                <div class="card adaptable-card">
                    <div class="card-body">
                        <div class="mb-8">
                            <h6 class="mb-4">Subscription</h6>
                            <div class="card mb-4 card-border">
                                <div class="card-body">
                                    <div class="flex flex-col lg:flex-row lg:items-center justify-between gap-4">
                                        <div class="flex items-center gap-3">
                                            <div>
                                                <span class="avatar avatar-circle avatar-md bg-emerald-500">
                                                    <span class="avatar-icon avatar-icon-md">
                                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em"xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd" d="M12.395 2.553a1 1 0 00-1.45-.385c-.345.23-.614.558-.822.88-.214.33-.403.713-.57 1.116-.334.804-.614 1.768-.84 2.734a31.365 31.365 0 00-.613 3.58 2.64 2.64 0 01-.945-1.067c-.328-.68-.398-1.534-.398-2.654A1 1 0 005.05 6.05 6.981 6.981 0 003 11a7 7 0 1011.95-4.95c-.592-.591-.98-.985-1.348-1.467-.363-.476-.724-1.063-1.207-2.03zM12.12 15.12A3 3 0 017 13s.879.5 2.5.5c0-1 .5-4 1.25-4.5.5 1 .786 1.293 1.371 1.879A2.99 2.99 0 0113 13a2.99 2.99 0 01-.879 2.121z" clip-rule="evenodd"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </div>
                                            <div>
                                                <div class="flex items-center">
                                                    <h6>Business board pro</h6>
                                                    <div class="tag bg-emerald-100 text-emerald-600 dark:bg-emerald-500/20 dark:text-emerald-100 rounded-md border-0 mx-2">
                                                        <span class="capitalize">active</span>
                                                    </div>
                                                </div>
                                                <div>
                                                    <span>Billing monthly</span>
                                                    <span> | </span>
                                                    <span>Next payment on 12/10/2021</span>
                                                    <span>
                                                    <span class="mx-1">for</span>
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">$59.90</span>
                                                </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flex gap-2">
                                            <button class="btn btn-plain btn-sm">Cancel plan</button>
                                            <button class="btn btn-default btn-sm">Update Plan</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb-8">
                    <h6 class="mb-4">Order History</h6>
                    <div class="overflow-x-auto">
                        <table class="table-default table-hover">
                            <thead>
                                <th>Id</th>
                                <th>Status</th>
                                <th>Date</th>
                                <th>Total</th>
                            </thead>
                            <tbody>
                                <c:forEach var="o" items="${orders}">
                                    <tr>
                                        <td>
                                            <div>
                                                <span class="cursor-pointer">#${o.id}</span>
                                            </div>
                                        </td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${o.orderStatus == 'NEW'}">
                                                    <div class="flex items-center">
                                                        <span class="badge-dot bg-emerald-500"></span>
                                                        <span class="ml-2 rtl:mr-2 capitalize">New</span>
                                                    </div>
                                                </c:when>
                                                <c:when test="${o.orderStatus == 'PROCESSING'}">
                                                    <div class="flex items-center">
                                                        <span class="badge-dot bg-emerald-500"></span>
                                                        <span class="ml-2 rtl:mr-2 capitalize">Processing</span>
                                                    </div>
                                                </c:when>
                                                <c:when test="${o.orderStatus == 'SHIPPED'}">
                                                    <div class="flex items-center">
                                                        <span class="badge-dot bg-emerald-500"></span>
                                                        <span class="ml-2 rtl:mr-2 capitalize">Shipped</span>
                                                    </div>
                                                </c:when>
                                                <c:when test="${o.orderStatus == 'DELIVERED'}">
                                                    <div class="flex items-center">
                                                        <span class="badge-dot bg-emerald-500"></span>
                                                        <span class="ml-2 rtl:mr-2 capitalize">Delivered</span>
                                                    </div>
                                                </c:when>
                                                <c:when test="${o.orderStatus == 'COMPLETED'}">
                                                    <div class="flex items-center">
                                                        <span class="badge-dot bg-emerald-500"></span>
                                                        <span class="ml-2 rtl:mr-2 capitalize">Completed</span>
                                                    </div>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <div class="flex items-center"><f:formatDate value="${o.orderDate}" pattern="dd/MM/yyyy" /></div>
                                        </td>
                                        <td>
                                            <div class="flex items-center"><span>$${o.total}</span>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div>
                    <h6 class="mb-4">Payment Methods</h6>
                    <div class="rounded-lg border border-gray-200 dark:border-gray-600">
                        <div class="flex flex-col lg:flex-row lg:items-center justify-between gap-3 p-4 border-b border-gray-200 dark:border-gray-600">
                            <div class="flex items-center gap-3"><img src="${contextPath}/resources/admin/img/others/img-8.png" alt="visa">
                                <div>
                                    <div class="flex items-center">
                                        <div class="text-gray-900 dark:text-gray-100 font-semibold">Frederick Adams •••• 0392</div>
                                        <div class="tag bg-sky-100 text-sky-600 dark:bg-sky-500/20 dark:text-sky-100 rounded-md border-0 mx-2">
                                            <span class="capitalize"> Primary </span>
                                        </div>
                                    </div>
                                    <span>Expired Dec 2025</span>
                                </div>
                            </div>
                            <div class="flex">
                                <button class="btn btn-plain btn-sm">Delete</button>
                                <button class="btn btn-default btn-sm">
                                                                    <span class="flex items-center justify-center">
                                                                        <span class="text-lg">
                                                                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                                <path d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z"></path>
                                                                                <path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" clip-rule="evenodd"></path>
                                                                            </svg>
                                                                        </span>
                                                                        <span class="ltr:ml-1 rtl:mr-1">Edit</span>
                                                                    </span>
                                </button>
                            </div>
                        </div>
                        <div class="flex flex-col lg:flex-row lg:items-center justify-between gap-3 p-4">
                            <div class="flex items-center gap-3"><img src="${contextPath}/resources/admin/img/others/img-9.png" alt="master">
                                <div>
                                    <div class="flex items-center">
                                        <div class="text-gray-900 dark:text-gray-100 font-semibold">Frederick Adams •••• 8461</div>
                                    </div><span>Expired Jun 2025</span>
                                </div>
                            </div>
                            <div class="flex">
                                <button class="btn btn-plain btn-sm">Delete</button>
                                <button class="btn btn-default btn-sm">
                                                                    <span class="flex items-center justify-center">
                                                                        <span class="text-lg">
                                                                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                                <path d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z"></path>
                                                                                <path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" clip-rule="evenodd"></path>
                                                                            </svg>
                                                                        </span>
                                                                        <span class="ltr:ml-1 rtl:mr-1">Edit</span>
                                                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
