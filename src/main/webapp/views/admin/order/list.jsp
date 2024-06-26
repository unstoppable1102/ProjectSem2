<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 26/06/2024
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="card adaptable-card">
        <h3 class="mb-4">Orders</h3>
        <div class="overflow-x-auto">
            <table id="order-list-table" class="table-default table-hover">
                <thead>
                <th>
                    <label class="checkbox-label mb-0">
                        <input id="indeterminate-checkbox" class="checkbox" type="checkbox" value="">
                    </label>
                </th>
                <th>Order</th>
                <th>Date</th>
                <th>Customer</th>
                <th>Status</th>
                <th>Payment Method</th>
                <th>Total</th>
                <th></th>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <label class="checkbox-label mb-0">
                            <input class="checkbox order-checkbox" type="checkbox" value="">
                        </label>
                    </td>
                    <td>
                        <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#95954</span>
                    </td>
                    <td>
                        <span>10/08/2022</span>
                    </td>
                    <td>
                        Ron Vargas
                    </td>
                    <td>
                        <div class="flex items-center">
                            <span class="badge-dot bg-emerald-500"></span>
                            <span class="ml-2 rtl:mr-2 capitalize font-semibold text-emerald-500">Paid</span>
                        </div>
                    </td>
                    <td>
                        <span class="flex items-center">
                            <img class="max-h-[20px]" src="${contextPath}/resources/admin/img/others/img-8.png" alt="visa">
                            <span class="ltr:ml-2 rtl:mr-2">•••• 6165</span>
                        </span>
                    </td>
                    <td>
                        <span>$168.00</span>
                    </td>
                    <td>
                        <div class="flex justify-end text-lg">
                            <span class="cursor-pointer p-2 hover:text-indigo-600" data-bs-toggle="tooltip" data-bs-title="View">
                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                          d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z">
                                    </path>
                                </svg>
                            </span>
                            <span class="cursor-pointer p-2 hover:text-red-500" data-bs-toggle="tooltip" data-bs-title="Delete">
                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="checkbox-label mb-0">
                            <input class="checkbox order-checkbox" type="checkbox" value="">
                        </label>
                    </td>
                    <td>
                        <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#92509</span>
                    </td>
                    <td>
                        <span>26/06/2022</span>
                    </td>
                    <td>Joyce Freeman</td>
                    <td>
                        <div class="flex items-center">
                            <span class="badge-dot bg-amber-500"></span>
                            <span class="ml-2 rtl:mr-2 capitalize font-semibold text-amber-500">Pending</span>
                        </div>
                    </td>
                    <td>
                        <span class="flex items-center">
                            <img class="max-h-[20px]" src="${contextPath}/resources/admin/img/others/img-8.png" alt="visa">
                            <span class="ltr:ml-2 rtl:mr-2">•••• 1232</span>
                        </span>
                    </td>
                    <td>
                        <span>$831.00</span>
                    </td>
                    <td>
                        <div class="flex justify-end text-lg">
                            <span class="cursor-pointer p-2 hover:text-indigo-600" data-bs-toggle="tooltip" data-bs-title="View">
                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                          d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z">
                                    </path>
                                </svg>
                            </span>
                            <span class="cursor-pointer p-2 hover:text-red-500" data-bs-toggle="tooltip" data-bs-title="Delete">
                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="checkbox-label mb-0">
                            <input class="checkbox order-checkbox" type="checkbox" value="">
                        </label>
                    </td>
                    <td>
                        <span class="cursor-pointer select-none font-semibold hover:text-indigo-600">#89107</span>
                    </td>
                    <td>
                        <span>17/04/2022</span>
                    </td>
                    <td>
                        Frederick Adams
                    </td>
                    <td>
                        <div class="flex items-center">
                            <span class="badge-dot bg-red-500"></span>
                            <span class="ml-2 rtl:mr-2 capitalize font-semibold text-red-500">Failed</span>
                        </div>
                    </td>
                    <td>
                        <span class="flex items-center">
                            <img class="max-h-[20px]" src="${contextPath}/resources/admin/img/others/img-8.png" alt="visa">

                        </span>
                    </td>
                    <td>
                        <span>$72.00</span>
                    </td>
                    <td>
                        <div class="flex justify-end text-lg">
                            <span class="cursor-pointer p-2 hover:text-indigo-600" data-bs-toggle="tooltip" data-bs-title="View">
                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                          d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z">
                                    </path>
                                </svg>
                            </span>
                            <span class="cursor-pointer p-2 hover:text-red-500" data-bs-toggle="tooltip" data-bs-title="Delete">
                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </span>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
