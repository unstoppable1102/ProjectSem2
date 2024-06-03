<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="flex flex-col gap-4 h-full">
        <div class="lg:flex items-center justify-between mb-4 gap-3">
            <div class="mb-4 lg:mb-0">
                <h3>Sales Overview</h3>
                <p>View your current sales &amp; summary</p>
            </div>
            <div class="flex flex-col lg:flex-row lg:items-center gap-3">
                                                <span class="input-wrapper">
                                                    <input id="date-query-input" datepicker datepicker-orientation="bottom right" class="input input-sm pr-8" placeholder="Pick a date">
                                                    <div class="input-suffix-end">
                                                        <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-lg" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                                                        </svg>
                                                    </div>
                                                </span>
                <button class="btn btn-sm btn-default">
                                                    <span class="flex items-center justify-center">
                                                        <span class="text-lg">
                                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M3 4a1 1 0 011-1h16a1 1 0 011 1v2.586a1 1 0 01-.293.707l-6.414 6.414a1 1 0 00-.293.707V17l-4 4v-6.586a1 1 0 00-.293-.707L3.293 7.293A1 1 0 013 6.586V4z"></path>
                                                            </svg>
                                                        </span>
                                                        <span class="ltr:ml-1 rtl:mr-1">Filter</span>
                                                    </span>
                </button>
            </div>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
            <div class="card card-layout-frame">
                <div class="card-body">
                    <h6 class="font-semibold mb-4 text-sm">Revenue</h6>
                    <div class="flex justify-between items-center">
                        <div>
                            <h3 class="font-bold">
                                <span>$21,827.13</span>
                            </h3>
                            <p>vs. 3 months prior to <span class="font-semibold">20 Jan</span></p>
                        </div>
                        <div class="tag gap-1 font-bold border-0 text-emerald-600 dark:text-emerald-400 bg-emerald-100 dark:bg-emerald-500/20 dark:text-emerald-100">
                                                            <span>
                                                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                    <path fill-rule="evenodd" d="M3.293 9.707a1 1 0 010-1.414l6-6a1 1 0 011.414 0l6 6a1 1 0 01-1.414 1.414L11 5.414V17a1 1 0 11-2 0V5.414L4.707 9.707a1 1 0 01-1.414 0z" clip-rule="evenodd"></path>
                                                                </svg>
                                                            </span>
                            <span>11.4%</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card card-layout-frame">
                <div class="card-body">
                    <h6 class="font-semibold mb-4 text-sm">Orders</h6>
                    <div class="flex justify-between items-center">
                        <div>
                            <h3 class="font-bold">
                                <span>1,758</span>
                            </h3>
                            <p>vs. 3 months prior to <span class="font-semibold">20 Jan</span></p>
                        </div>
                        <div class="tag gap-1 font-bold border-0 text-red-600 dark:text-red-500 bg-red-100 dark:bg-red-500/20 dark:text-red-100">
                                                            <span>
                                                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                    <path fill-rule="evenodd" d="M16.707 10.293a1 1 0 010 1.414l-6 6a1 1 0 01-1.414 0l-6-6a1 1 0 111.414-1.414L9 14.586V3a1 1 0 012 0v11.586l4.293-4.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                                                </svg>
                                                            </span>
                            <span>-3.2%</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card card-layout-frame">
                <div class="card-body">
                    <h6 class="font-semibold mb-4 text-sm">Purchases</h6>
                    <div class="flex justify-between items-center">
                        <div>
                            <h3 class="font-bold">
                                <span>$7,249.31</span>
                            </h3>
                            <p>vs. 3 months prior to <span class="font-semibold">20 Jan</span></p>
                        </div>
                        <div class="tag gap-1 font-bold border-0 text-emerald-600 dark:text-emerald-400 bg-emerald-100 dark:bg-emerald-500/20 dark:text-emerald-100">
                                                            <span>
                                                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                    <path fill-rule="evenodd" d="M3.293 9.707a1 1 0 010-1.414l6-6a1 1 0 011.414 0l6 6a1 1 0 01-1.414 1.414L11 5.414V17a1 1 0 11-2 0V5.414L4.707 9.707a1 1 0 01-1.414 0z" clip-rule="evenodd"></path>
                                                                </svg>
                                                            </span>
                            <span>5.7%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
            <div class="card card-layout-frame col-span-2">
                <div class="card-body">
                    <div class="flex items-center justify-between">
                        <h4>Sales Report</h4>
                        <button class="btn btn-sm btn-default">Export Report</button>
                    </div>
                    <div id="sales-report-chart"></div>
                </div>
            </div>
            <div class="card card-layout-frame">
                <div class="card-body">
                    <h4>Categories</h4>
                    <div class="mt-6">
                        <div id="categories-chart"></div>
                    </div>
                    <div class="mt-6 grid grid-cols-2 gap-4 max-w-[180px] mx-auto">
                        <div class="flex items-center gap-1">
                            <span class="badge-dot" style="background-color: rgb(79, 70, 229);"></span>
                            <span class="font-semibold">Devices</span>
                        </div>
                        <div class="flex items-center gap-1">
                            <span class="badge-dot" style="background-color: rgb(59, 130, 246);"></span>
                            <span class="font-semibold">Watches</span>
                        </div>
                        <div class="flex items-center gap-1">
                            <span class="badge-dot" style="background-color: rgb(16, 185, 129);"></span>
                            <span class="font-semibold">Bags</span>
                        </div>
                        <div class="flex items-center gap-1">
                            <span class="badge-dot" style="background-color: rgb(245, 158, 11);"></span>
                            <span class="font-semibold">Shoes</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
            <div class="card card-layout-frame col-span-2">
                <div class="card-body">
                    <div class="flex items-center justify-between mb-6">
                        <h4>Latest Orders</h4>
                        <button class="btn btn-sm btn-default">View Orders</button>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="table-default table-hover">
                            <thead>
                            <tr>
                                <th>Order</th>
                                <th>Status</th>
                                <th>Date</th>
                                <th>Customer</th>
                                <th>Profile Progress</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#95954</span>
                                </td>
                                <td>
                                    <div class="flex items-center">
                                        <span class="badge-dot bg-emerald-500"></span>
                                        <span class="ml-2 rtl:mr-2 capitalize font-semibold text-emerald-500">Paid</span>
                                    </div>
                                </td>
                                <td>
                                    <span>10/08/2022</span>
                                </td>
                                <td>Ron Vargas</td>
                                <td>
                                                                        <span>$168.00</span
                                                                        ></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#95423</span>
                                </td>
                                <td>
                                    <div class="flex items-center">
                                        <span class="badge-dot bg-emerald-500"></span>
                                        <span class="ml-2 rtl:mr-2 capitalize font-semibold text-emerald-500">Paid</span>
                                    </div>
                                </td>
                                <td>
                                    <span>30/07/2022</span>
                                </td>
                                <td>Carolyn Hanso</td>
                                <td>
                                    <span>$523.00</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#92903</span>
                                </td>
                                <td>
                                    <div class="flex items-center">
                                        <span class="badge-dot bg-amber-500"></span>
                                        <span class="ml-2 rtl:mr-2 capitalize font-semibold text-amber-500">Pending</span>
                                    </div>
                                </td>
                                <td>
                                    <span>18/07/2022</span>
                                </td>
                                <td>Gabriella May</td>
                                <td>
                                    <span>$81.00</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#92627</span>
                                </td>
                                <td>
                                    <div class="flex items-center">
                                        <span class="badge-dot bg-red-500"></span>
                                        <span class="ml-2 rtl:mr-2 capitalize font-semibold text-red-500">Failed</span>
                                    </div>
                                </td>
                                <td>
                                    <span>09/07/2022</span>
                                </td>
                                <td>Tara Fletcher</td>
                                <td>
                                    <span>$279.00</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#89332</span>
                                </td>
                                <td>
                                    <div class="flex items-center">
                                        <span class="badge-dot bg-emerald-500"></span>
                                        <span class="ml-2 rtl:mr-2 capitalize font-semibold text-emerald-500">Paid</span>
                                    </div>
                                </td>
                                <td>
                                    <span>02/06/2022</span>
                                </td>
                                <td>Eileen Horton</td>
                                <td>
                                    <span>$597.00</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#86497</span>
                                </td>
                                <td>
                                    <div class="flex items-center">
                                        <span class="badge-dot bg-red-500"></span>
                                        <span class="ml-2 rtl:mr-2 capitalize font-semibold text-red-500">Failed</span>
                                    </div>
                                </td>
                                <td>
                                    <span>19/03/2022</span>
                                </td>
                                <td>Lloyd Obrien</td>
                                <td>
                                    <span>$189.00</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#86212</span>
                                </td>
                                <td>
                                    <div class="flex items-center">
                                        <span class="badge-dot bg-emerald-500"></span>
                                        <span class="ml-2 rtl:mr-2 capitalize font-semibold text-emerald-500">Paid</span>
                                    </div>
                                </td>
                                <td>
                                    <span>09/03/2022</span>
                                </td>
                                <td>Tara Fletcher</td>
                                <td>
                                    <span>$672.00</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="card card-layout-frame">
                <div class="card-body">
                    <div class="flex items-center justify-between mb-4">
                        <h4>Top Selling</h4>
                        <button class="btn btn-sm btn-default">View Products</button>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="table-default table-hover">
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Sold</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="flex items-center gap-2">
                                                                            <span class="avatar avatar-rounded avatar-md">
                                                                                <img
                                                                                        class="avatar-img avatar-rounded"
                                                                                        src="${contextPath}/resources/admin/img/products/product-1.jpg"
                                                                                        loading="lazy"
                                                                                />
                                                                            </span>
                                        <span class="font-semibold"
                                        >Luminaire Giotto Headphones</span
                                        >
                                    </div>
                                </td>
                                <td>252</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="flex items-center gap-2">
                                                                            <span class="avatar avatar-rounded avatar-md">
                                                                                <img
                                                                                        class="avatar-img avatar-rounded"
                                                                                        src="${contextPath}/resources/admin/img/products/product-3.jpg"
                                                                                        loading="lazy"
                                                                                />
                                                                            </span>
                                        <span class="font-semibold">Black Sneaker</span>
                                    </div>
                                </td>
                                <td>186</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="flex items-center gap-2">
                                                                            <span class="avatar avatar-rounded avatar-md">
                                                                                <img
                                                                                        class="avatar-img avatar-rounded"
                                                                                        src="${contextPath}/resources/admin/img/products/product-4.jpg"
                                                                                        loading="lazy"
                                                                                />
                                                                            </span>
                                        <span class="font-semibold">Gray Hoodies</span>
                                    </div>
                                </td>
                                <td>166</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="flex items-center gap-2">
                                                                            <span class="avatar avatar-rounded avatar-md">
                                                                                <img
                                                                                        class="avatar-img avatar-rounded"
                                                                                        src="${contextPath}/resources/admin/img/products/product-5.jpg"
                                                                                        loading="lazy"
                                                                                />
                                                                            </span>
                                        <span class="font-semibold">Blue Backpack</span>
                                    </div>
                                </td>
                                <td>93</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="flex items-center gap-2">
                                                                            <span class="avatar avatar-rounded avatar-md">
                                                                                <img
                                                                                        class="avatar-img avatar-rounded"
                                                                                        src="${contextPath}/resources/admin/img/products/product-7.jpg"
                                                                                        loading="lazy"
                                                                                />
                                                                            </span>
                                        <span class="font-semibold">Strip Analog Watch</span>
                                    </div>
                                </td>
                                <td>81</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
