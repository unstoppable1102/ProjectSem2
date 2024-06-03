<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="flex flex-col gap-4">
        <div>
            <h4 class="mb-1">Hello, Carolyn Perkins!</h4>
            <p>You have 5 tasks on hand.</p>
        </div>
        <div class="flex flex-col xl:flex-row gap-4">
            <div class="flex flex-col gap-4 flex-auto">
                <div class="card card-layout-frame">
                    <div class="card-body">
                        <div class="flex sm:flex-row flex-col md:items-center justify-between mb-6 gap-4">
                            <h4>Task Overview</h4>
                            <div class="segment segment-sm">
                                <button class="segment-item">Monthly</button>
                                <button class="segment-item segment-item-active">Weekly</button>
                                <button class="segment-item">Daily</button>
                            </div>
                        </div>
                        <div class="flex items-center justify-between mb-4">
                            <div>
                                <div class="flex gap-2">
                                    <div>
                                        <h5 class="font-bold">213</h5>
                                        <p>Total Tasks</p>
                                    </div>
                                </div>
                            </div>
                            <div class="flex gap-x-6">
                                <div class="flex gap-2">
                                    <span class="badge-dot bg-indigo-600 mt-2.5"></span>
                                    <div>
                                        <h5 class="font-bold">126</h5>
                                        <p>On Going</p>
                                    </div>
                                </div>
                                <div class="flex gap-2">
                                    <span class="badge-dot bg-emerald-500 mt-2.5"></span>
                                    <div>
                                        <h5 class="font-bold">87</h5>
                                        <p>Finished</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div id="task-overview-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="card card-layout-frame">
                    <div class="card-body">
                        <div class="flex items-center justify-between mb-6">
                            <h4>My Tasks</h4>
                            <button class="btn btn-default btn-sm">View all</button>
                        </div>
                        <div class="overflow-x-auto">
                            <table class="table-default table-hover">
                                <thead>
                                <tr>
                                    <th colspan="1">Task ID</th>
                                    <th colspan="1">Subject</th>
                                    <th colspan="1">Priority</th>
                                    <th colspan="1">Assignees</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <a class="hover:underline font-semibold" href="#">KCM-1393</a>
                                    </td>
                                    <td>Design sign up flow</td>
                                    <td>
                                        <div class="tag text-red-600 bg-red-100 dark:text-red-100 dark:bg-red-500/20 rounded border-0">
                                            High
                                        </div>
                                    </td>
                                    <td>
                                        <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Carolyn Perkins">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                            <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Terrance Moreno">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-2.jpg" loading="lazy">
                                                                                </span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a class="hover:underline font-semibold" href="#">KCM-2039</a></td>
                                    <td>Update contact page</td>
                                    <td>
                                        <div class="tag text-amber-600 bg-amber-100 dark:text-amber-100 dark:bg-amber-500/20 rounded border-0">
                                            Medium
                                        </div>
                                    </td>
                                    <td>
                                        <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Carolyn Perkins">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a class="hover:underline font-semibold" href="#">KCM-2155</a></td>
                                    <td>Document features 2.0</td>
                                    <td>
                                        <div class="tag text-amber-600 bg-amber-100 dark:text-amber-100 dark:bg-amber-500/20 rounded border-0">
                                            Medium
                                        </div>
                                    </td>
                                    <td>
                                        <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Carolyn Perkins">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                            <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Terrance Moreno">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-2.jpg" loading="lazy">
                                                                                </span>
                                            <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Ron Vargas">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg" loading="lazy">
                                                                                </span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a class="hover:underline font-semibold" href="#">KCM-2270</a></td>
                                    <td>Fix typo in home page</td>
                                    <td>
                                        <div class="tag bg-blue-100 text-blue-600 dark:bg-blue-500/20 dark:text-blue-100 rounded border-0">
                                            Low</div>
                                    </td>
                                    <td>
                                        <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Carolyn Perkins">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                            <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Joyce Freeman">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-2.jpg" loading="lazy">
                                                                                </span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a class="hover:underline font-semibold" href="#">KCM-1957</a></td>
                                    <td>Fix broken API</td>
                                    <td>
                                        <div class="tag text-red-600 bg-red-100 dark:text-red-100 dark:bg-red-500/20 rounded border-0">
                                            High
                                        </div>
                                    </td>
                                    <td>
                                        <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Carolyn Perkins">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="card card-layout-frame">
                    <div class="card-body">
                        <div class="flex items-center justify-between mb-6">
                            <h4>Projects</h4>
                            <button class="btn btn-default btn-sm">View all</button>
                        </div>
                        <div class="mb-4">
                            <div class="card card-border">
                                <div class="card-body">
                                    <div class="grid gap-x-4 grid-cols-12">
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="flex flex-col">
                                                <h6 class="font-bold">
                                                    <a href="#">EVO SaaS</a>
                                                </h6>
                                                <span>Web Application</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-2 lg:col-span-2 md:flex md:items-center md:justify-end">
                                            <div class="inline-flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4"></path>
                                                </svg>
                                                <span class="ml-1 rtl:mr-1 whitespace-nowrap">27 / 32</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-2 lg:col-span-3 md:flex md:items-center">
                                            <div class="progress line">
                                                <div class="progress-wrapper">
                                                    <div class="progress-inner">
                                                        <div class="progress-bg h-1.5 bg-green-500" style="width: 80%;"></div>
                                                    </div>
                                                </div>
                                                <span class="progress-info line">80%</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle cursor-pointer avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Frederick Adams">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg" loading="lazy">
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Joyce Freeman">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-5.jpg" loading="lazy">
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm bg-amber-500" data-bs-toggle="tooltip" data-bs-title="Clayton Bates">
                                                                                    <span class="avatar-string avatar-circle">CB</span>
                                                                                </span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-1 flex md:items-center justify-end">
                                            <div class="dropdown">
                                                <div class="dropdown-toggle">
                                                    <button class="btn btn-icon btn-xs btn-plain rounded-full">
                                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                    d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z">
                                                            </path>
                                                        </svg>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="card card-border">
                                <div class="card-body">
                                    <div class="grid gap-x-4 grid-cols-12">
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="flex flex-col">
                                                <h6 class="font-bold">
                                                    <a href="#">AIA Bill App</a>
                                                </h6>
                                                <span>Mobile Application</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-2 lg:col-span-2 md:flex md:items-center md:justify-end">
                                            <div class="inline-flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4"></path>
                                                </svg>
                                                <span class="ml-1 rtl:mr-1 whitespace-nowrap">15 / 36</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-2 lg:col-span-3 md:flex md:items-center">
                                            <div class="progress line">
                                                <div class="progress-wrapper">
                                                    <div class="progress-inner">
                                                        <div class="progress-bg h-1.5 bg-primary-600" style="width: 45%;"></div>
                                                    </div>
                                                </div>
                                                <span class="progress-info line">45%</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle cursor-pointer avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Carolyn Perkins">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm bg-amber-500" data-bs-toggle="tooltip" data-bs-title="Gabriel Frazier">
                                                                                    <span class="avatar-string avatar-circle">LC</span>
                                                                                </span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-1 flex md:items-center justify-end">
                                            <div class="dropdown">
                                                <div class="dropdown-toggle">
                                                    <button class="btn btn-icon btn-xs btn-plain rounded-full">
                                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                    d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z">
                                                            </path>
                                                        </svg>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="card card-border">
                                <div class="card-body">
                                    <div class="grid gap-x-4 grid-cols-12">
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="flex flex-col">
                                                <h6 class="font-bold">
                                                    <a href="#">IOP Web</a>
                                                </h6>
                                                <span>Web Backend Application</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-2 lg:col-span-2 md:flex md:items-center md:justify-end">
                                            <div class="inline-flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4"></path>
                                                </svg>
                                                <span class="ml-1 rtl:mr-1 whitespace-nowrap">19 / 27</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-2 lg:col-span-3 md:flex md:items-center">
                                            <div class="progress line">
                                                <div class="progress-wrapper">
                                                    <div class="progress-inner">
                                                        <div class="progress-bg h-1.5 bg-green-500" style="width: 73%;"></div>
                                                    </div>
                                                </div>
                                                <span class="progress-info line">73%</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle cursor-pointer avatar-sm bg-pink-500" data-bs-toggle="tooltip" data-bs-title="Debra Hamilton">
                                                                                    <span class="avatar-string avatar-circle">LC</span>
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm bg-blue-600" data-bs-toggle="tooltip" data-bs-title="Stacey Ward">
                                                                                    <span class="avatar-string avatar-circle">PC</span>
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Ron Vargas">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg" loading="lazy">
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm " data-bs-toggle="tooltip" data-bs-title="2 Moere">
                                                                                    <span class="avatar-string avatar-circle">+2</span>
                                                                                </span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-1 flex md:items-center justify-end">
                                            <div class="dropdown">
                                                <div class="dropdown-toggle">
                                                    <button class="btn btn-icon btn-xs btn-plain rounded-full">
                                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                    d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z">
                                                            </path>
                                                        </svg>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="card card-border">
                                <div class="card-body">
                                    <div class="grid gap-x-4 grid-cols-12">
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="flex flex-col">
                                                <h6 class="font-bold">
                                                    <a href="#">Octonine POS</a>
                                                </h6>
                                                <span>Backend Application</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-2 md:col-span-2 lg:col-span-2 md:flex md:items-center md:justify-end">
                                            <div class="inline-flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                                <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4"></path>
                                                </svg>
                                                <span class="ml-1 rtl:mr-1 whitespace-nowrap">23 / 78</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-2 lg:col-span-3 md:flex md:items-center">
                                            <div class="progress line">
                                                <div class="progress-wrapper">
                                                    <div class="progress-inner">
                                                        <div class="progress-bg h-1.5 bg-red-500" style="width: 21%;"></div>
                                                    </div>
                                                </div>
                                                <span class="progress-info line">21%</span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 md:col-span-3 lg:col-span-3 md:flex md:items-center">
                                            <div class="avatar-group avatar-group-chained">
                                                                                <span class="avatar avatar-circle cursor-pointer avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Brittany Hale">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-10.jpg" loading="lazy">
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Frederick Adams">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg" loading="lazy">
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm" data-avatar-size="30" data-bs-toggle="tooltip" data-bs-title="Samantha Phillips">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-6.jpg" loading="lazy">
                                                                                </span>
                                                <span class="avatar avatar-circle cursor-pointer avatar-sm " data-bs-toggle="tooltip" data-bs-title="1 Moere">
                                                                                    <span class="avatar-string avatar-circle">+1</span>
                                                                                </span>
                                            </div>
                                        </div>
                                        <div class="my-1 sm:my-0 col-span-12 sm:col-span-1 flex md:items-center justify-end">
                                            <div class="dropdown">
                                                <div class="dropdown-toggle">
                                                    <button class="btn btn-icon btn-xs btn-plain rounded-full">
                                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                    d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z">
                                                            </path>
                                                        </svg>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex flex-col gap-4">
                <div class="xl:w-[380px]">
                    <div class="card card-layout-frame mb-4">
                        <div class="card-body">
                            <div class="project-calendar" inline-datepicker data-date=""></div>
                            <hr class="my-6">
                            <h5 class="mb-4">Schedule</h5>
                            <div class="flex items-center justify-between rounded-md mb-2 p-2 hover:bg-gray-50 dark:hover:bg-gray-600/40 cursor-pointer user-select">
                                <div class="flex items-center gap-3">
                                    <div class="rounded-lg h-10 w-10 text-lg flex items-center justify-center text-indigo-600 bg-indigo-100 dark:text-indigo-100 dark:bg-indigo-500/20">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M2 6a2 2 0 012-2h6a2 2 0 012 2v8a2 2 0 01-2 2H4a2 2 0 01-2-2V6zM14.553 7.106A1 1 0 0014 8v4a1 1 0 00.553.894l2 1A1 1 0 0018 13V7a1 1 0 00-1.447-.894l-2 1z"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <h6 class="text-sm font-bold">Sprint Planning</h6>
                                        <p>via Zoom</p>
                                    </div>
                                </div>
                                <span>10:00am</span>
                            </div>
                            <div class="flex items-center justify-between rounded-md mb-2 p-2 hover:bg-gray-50 dark:hover:bg-gray-600/40 cursor-pointer user-select">
                                <div class="flex items-center gap-3">
                                    <div class="rounded-lg h-10 w-10 text-lg flex items-center justify-center text-indigo-600 bg-indigo-100 dark:text-indigo-100 dark:bg-indigo-500/20">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M2 6a2 2 0 012-2h6a2 2 0 012 2v8a2 2 0 01-2 2H4a2 2 0 01-2-2V6zM14.553 7.106A1 1 0 0014 8v4a1 1 0 00.553.894l2 1A1 1 0 0018 13V7a1 1 0 00-1.447-.894l-2 1z"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <h6 class="text-sm font-bold">Design discussion</h6>
                                        <p>via Microsoft Teams</p>
                                    </div>
                                </div>
                                <span>1:00pm</span>
                            </div>
                            <div class="flex items-center justify-between rounded-md mb-2 p-2 hover:bg-gray-50 dark:hover:bg-gray-600/40 cursor-pointer user-select">
                                <div class="flex items-center gap-3">
                                    <div class="rounded-lg h-10 w-10 text-lg flex items-center justify-center bg-emerald-100 text-emerald-600 dark:bg-emerald-500/20 dark:text-emerald-100">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z" clip-rule="evenodd"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <h6 class="text-sm font-bold">Create daily report</h6>
                                        <p>Daily task</p>
                                    </div>
                                </div>
                                <span>3:00pm</span>
                            </div>
                            <div class="flex items-center justify-between rounded-md mb-2 p-2 hover:bg-gray-50 dark:hover:bg-gray-600/40 cursor-pointer user-select">
                                <div class="flex items-center gap-3">
                                    <div class="rounded-lg h-10 w-10 text-lg flex items-center justify-center text-amber-600 bg-amber-100 dark:text-amber-100 dark:bg-amber-500/20">
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true"
                                             height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M2 5a2 2 0 012-2h7a2 2 0 012 2v4a2 2 0 01-2 2H9l-3 3v-3H4a2 2 0 01-2-2V5z"></path>
                                            <path d="M15 7v2a4 4 0 01-4 4H9.828l-1.766 1.767c.28.149.599.233.938.233h2l3 3v-3h2a2 2 0 002-2V9a2 2 0 00-2-2h-1z"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <h6 class="text-sm font-bold">MySql online workshop</h6>
                                        <p>Online workshop</p>
                                    </div>
                                </div>
                                <span>4:00pm</span>
                            </div>
                        </div>
                    </div>
                    <div class="card card-layout-frame">
                        <div class="card-body">
                            <div class="flex items-center justify-between mb-6">
                                <h4>My Tasks</h4>
                                <button class="btn btn-default btn-sm">View all</button>
                            </div>
                            <div class="mt-6">
                                <ul class="timeline">
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                                                    <span class="avatar avatar-circle avatar-sm bg-teal-500 dark:bg-teal-500" data-avatar-size="30">
                                                                                        <span class="avatar-string">CP</span></span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="flex flex-col gap-y-0.5">
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">Carolyn Perkins</span>
                                                    <span class="text-xs">11:20 PM</span>
                                                </div>
                                                <div class="mt-4">
                                                    <span class="mx-1">has change </span>
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">PD-979</span>
                                                    <span class="mx-1"> status to </span>
                                                    <span class="badge-dot bg-emerald-500"></span>
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100 ml-1 rtl:mr-1">Completed</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                                                    <span class="avatar avatar-circle avatar-sm" data-avatar-size="30">
                                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg" loading="lazy">
                                                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="flex flex-col gap-y-0.5">
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">Ron Vargas</span>
                                                    <span class="text-xs">10:53 PM</span>
                                                </div>
                                                <div class="mt-4">
                                                    <span class="mx-1">comment on your</span>
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">Post</span>
                                                </div>
                                                <div class="card mt-4 card-border" role="presentation">
                                                    <div class="card-body">
                                                        Fine, Java MIGHT be a good example of what a programming language should
                                                        be like. But Java applications are good examples of what applications SHOULDN'T be like.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                                                    <span class="avatar avatar-circle avatar-sm text-gray-700 bg-gray-200 dark:text-gray-100 text-lg" data-avatar-size="30">
                                                                                        <span class="avatar-icon avatar-icon-30">
                                                                                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                                                <path fill-rule="evenodd" d="M17.707 9.293a1 1 0 010 1.414l-7 7a1 1 0 01-1.414 0l-7-7A.997.997 0 012 10V5a3 3 0 013-3h5c.256 0 .512.098.707.293l7 7zM5 6a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                                                                            </svg>
                                                                                        </span>
                                                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="flex flex-col gap-y-0.5">
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">Joyce Freeman</span>
                                                    <span class="text-xs">09:40 PM</span>
                                                </div>
                                                <div class="mt-4">
                                                    <span class="mx-1">added tags </span>
                                                    <div class="tag mx-1">
                                                        <span class="tag-affix tag-prefix bg-rose-500"></span>
                                                        Live Issue
                                                    </div>
                                                    <div class="tag mx-1">
                                                        <span class="tag-affix tag-prefix bg-blue-500"></span>
                                                        Backend
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item timeline-item-last">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                                                    <span class="avatar avatar-circle avatar-sm text-gray-700 bg-gray-200 dark:text-gray-100 text-lg" data-avatar-size="30">
                                                                                        <span class="avatar-icon avatar-icon-30">
                                                                                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                                                <path fill-rule="evenodd" d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z" clip-rule="evenodd"></path>
                                                                                            </svg>
                                                                                        </span>
                                                                                    </span>
                                                </div>
                                            </div>
                                            <div class="timeline-item-content timeline-item-content-last">
                                                <div class="flex flex-col gap-y-0.5">
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">Luke Cook</span>
                                                    <span class="text-xs">08:18 PM</span>
                                                </div>
                                                <div class="mt-4">
                                                    <span class="mx-1">added</span>
                                                    <span class="font-semibold text-gray-900 dark:text-gray-100">document.csv</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>