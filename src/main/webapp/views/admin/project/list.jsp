<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="container mx-auto">
        <div class="lg:flex items-center justify-between mb-4">
            <h3 class="mb-4 lg:mb-0">Project List</h3>
            <div class="flex flex-col md:flex-row md:items-center gap-1">
                                                <span class="input-wrapper">
                                                    <div class="input-suffix-start">
                                                        <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-lg" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                                                        </svg>
                                                    </div>
                                                    <input class="input pl-8 input-sm" type="text" placeholder="Search">
                                                </span>
                <button class="btn btn-plain btn-sm btn-icon" data-bs-toggle="tooltip" data-bs-title="List View">
                    <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 10h16M4 14h16M4 18h16"></path>
                    </svg>
                </button>
                <button class="btn btn-plain btn-sm btn-icon" data-bs-toggle="tooltip" data-bs-title="Sort Z-A">
                    <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M3 4h13M3 8h9m-9 4h9m5-4v12m0 0l-4-4m4 4l4-4"></path>
                    </svg>
                </button>
                <button class="btn btn-two-tune btn-sm">
                                                    <span class="flex items-center justify-center gap-2">
                                                        <span class="text-lg">
                                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                            </svg>
                                                        </span>
                                                        <span>New Project</span>
                                                    </span>
                </button>
            </div>
        </div>
        <div class="mt-6 h-full flex flex-col">
            <div class="grid md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
                <div class="card card card-layout-frame">
                    <div class="card-body h-full">
                        <div class="flex flex-col justify-between h-full">
                            <div class="flex justify-between">
                                <a href="#">
                                    <h6>AIA Bill App</h6>
                                </a>
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
                            <p class="mt-4">
                                We are not shipping your machine!
                            </p>
                            <div class="mt-3">
                                <div class="progress line">
                                    <div class="progress-wrapper">
                                        <div class="progress-inner">
                                            <div class="progress-bg h-1.5 bg-indigo-600" style="width: 45%;"></div>
                                        </div>
                                    </div>
                                    <span class="progress-info line">45%</span>
                                </div>
                                <div class="flex items-center justify-between mt-2">
                                    <div class="avatar-group avatar-group-chained">
                                                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Carolyn Perkins">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm bg-amber-500" data-bs-toggle="tooltip" data-bs-title="Gabriel Frazier">
                                                                            <span class="avatar-string avatar-circle">LC</span>
                                                                        </span>
                                    </div>
                                    <div class="flex items-center rounded-full font-semibold text-xs">
                                        <div class="flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                      d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4">
                                                </path>
                                            </svg>
                                            <span class="ml-1 rtl:mr-1 whitespace-nowrap">15 / 36</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card card-layout-frame">
                    <div class="card-body h-full">
                        <div class="flex flex-col justify-between h-full">
                            <div class="flex justify-between">
                                <a href="#">
                                    <h6>EVO SaaS</h6>
                                </a>
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
                            <p class="mt-4">
                                Most of you are familiar with the virtues of a programmer
                            </p>
                            <div class="mt-3">
                                <div class="progress line">
                                    <div class="progress-wrapper">
                                        <div class="progress-inner">
                                            <div class="progress-bg h-1.5 bg-green-500" style="width: 80%;"></div>
                                        </div>
                                    </div>
                                    <span class="progress-info line">80%</span>
                                </div>
                                <div class="flex items-center justify-between mt-2">
                                    <div class="avatar-group avatar-group-chained">
                                                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Frederick Adams">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Joyce Freeman">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-5.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm bg-amber-500" data-bs-toggle="tooltip" data-bs-title="Clayton Bates">
                                                                            <span class="avatar-string avatar-circle">CB</span>
                                                                        </span>
                                    </div>
                                    <div class="flex items-center rounded-full font-semibold text-xs">
                                        <div class="flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                      d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4">
                                                </path>
                                            </svg>
                                            <span class="ml-1 rtl:mr-1 whitespace-nowrap">27 / 32</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card card-layout-frame">
                    <div class="card-body h-full">
                        <div class="flex flex-col justify-between h-full">
                            <div class="flex justify-between">
                                <a href="#">
                                    <h6>Evo SaaS API</h6>
                                </a>
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
                            <p class="mt-4">
                                Debugging is twice as hard as writing the code in the first place.
                            </p>
                            <div class="mt-3">
                                <div class="progress line">
                                    <div class="progress-wrapper">
                                        <div class="progress-inner">
                                            <div class="progress-bg h-1.5 bg-green-500" style="width: 87%;"></div>
                                        </div>
                                    </div>
                                    <span class="progress-info line">87%</span>
                                </div>
                                <div class="flex items-center justify-between mt-2">
                                    <div class="avatar-group avatar-group-chained">
                                                                        <span class="avatar avatar-circle cursor-pointer avatar-sm bg-violet-500" data-bs-toggle="tooltip" data-bs-title="Troy Alexander">
                                                                            <span class="avatar-string avatar-circle">TA</span>
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Lloyd Obrien">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-11.jpg" loading="lazy">
                                                                        </span>
                                    </div>
                                    <div class="flex items-center rounded-full font-semibold text-xs">
                                        <div class="flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                      d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4">
                                                </path>
                                            </svg>
                                            <span class="ml-1 rtl:mr-1 whitespace-nowrap">13 / 15</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card card-layout-frame">
                    <div class="card-body h-full">
                        <div class="flex flex-col justify-between h-full">
                            <div class="flex justify-between">
                                <a href="#">
                                    <h6>FoksMart APP</h6>
                                </a>
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
                            <p class="mt-4">
                                It is not about bits, bytes and protocols, but profits, losses and margins.
                            </p>
                            <div class="mt-3">
                                <div class="progress line">
                                    <div class="progress-wrapper">
                                        <div class="progress-inner">
                                            <div class="progress-bg h-1.5 bg-indigo-600" style="width: 67%;"></div>
                                        </div>
                                    </div>
                                    <span class="progress-info line">67%</span>
                                </div>
                                <div class="flex items-center justify-between mt-2">
                                    <div class="avatar-group avatar-group-chained">
                                                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Lee Wheeler">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-13.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Ella Robinson">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-15.jpg" loading="lazy">
                                                                        </span>
                                    </div>
                                    <div class="flex items-center rounded-full font-semibold text-xs">
                                        <div class="flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                      d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4">
                                                </path>
                                            </svg>
                                            <span class="ml-1 rtl:mr-1 whitespace-nowrap">19 / 26</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card card-layout-frame">
                    <div class="card-body h-full">
                        <div class="flex flex-col justify-between h-full">
                            <div class="flex justify-between">
                                <a href="#">
                                    <h6>IOP Web</h6>
                                </a>
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
                            <p class="mt-4">
                                There are two ways to write error-free programs; only the third one works.
                            </p>
                            <div class="mt-3">
                                <div class="progress line">
                                    <div class="progress-wrapper">
                                        <div class="progress-inner">
                                            <div class="progress-bg h-1.5 bg-green-500" style="width: 73%;"></div>
                                        </div>
                                    </div>
                                    <span class="progress-info line">73%</span>
                                </div>
                                <div class="flex items-center justify-between mt-2">
                                    <div class="avatar-group avatar-group-chained">
                                                                        <span class="avatar avatar-circle cursor-pointer avatar-sm bg-pink-500" data-bs-toggle="tooltip" data-bs-title="Debra Hamilton">
                                                                            <span class="avatar-string avatar-circle">LC</span>
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm bg-blue-600" data-bs-toggle="tooltip" data-bs-title="Stacey Ward">
                                                                            <span class="avatar-string avatar-circle">PC</span>
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Ron Vargas">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm " data-bs-toggle="tooltip" data-bs-title="2 Moere">
                                                                            <span class="avatar-string avatar-circle">+2</span>
                                                                        </span>
                                    </div>
                                    <div class="flex items-center rounded-full font-semibold text-xs">
                                        <div class="flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                      d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4">
                                                </path>
                                            </svg>
                                            <span class="ml-1 rtl:mr-1 whitespace-nowrap">19 / 27</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card card-layout-frame">
                    <div class="card-body h-full">
                        <div class="flex flex-col justify-between h-full">
                            <div class="flex justify-between">
                                <a href="#">
                                    <h6>Octonine POS</h6>
                                </a>
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
                            <p class="mt-4">
                                Everything that can be invented has been invented.
                            </p>
                            <div class="mt-3">
                                <div class="progress line">
                                    <div class="progress-wrapper">
                                        <div class="progress-inner">
                                            <div class="progress-bg h-1.5 bg-red-500" style="width: 21%;"></div>
                                        </div>
                                    </div>
                                    <span class="progress-info line">21%</span>
                                </div>
                                <div class="flex items-center justify-between mt-2">
                                    <div class="avatar-group avatar-group-chained">
                                                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Brittany Hale">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-10.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Frederick Adams">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Samantha Phillips">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-6.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm " data-bs-toggle="tooltip" data-bs-title="1 Moere">
                                                                            <span class="avatar-string avatar-circle">+1</span>
                                                                        </span>
                                    </div>
                                    <div class="flex items-center rounded-full font-semibold text-xs">
                                        <div class="flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                      d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4">
                                                </path>
                                            </svg>
                                            <span class="ml-1 rtl:mr-1 whitespace-nowrap">23 / 78</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card card-layout-frame">
                    <div class="card-body h-full">
                        <div class="flex flex-col justify-between h-full">
                            <div class="flex justify-between">
                                <a href="#">
                                    <h6>Posiflex Web</h6>
                                </a>
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
                            <p class="mt-4">
                                The function of good software is to make the complex appear to be simple.
                            </p>
                            <div class="mt-3">
                                <div class="progress line">
                                    <div class="progress-wrapper">
                                        <div class="progress-inner">
                                            <div class="progress-bg h-1.5 bg-indigo-600" style="width: 50%;"></div>
                                        </div>
                                    </div>
                                    <span class="progress-info line">50%</span>
                                </div>
                                <div class="flex items-center justify-between mt-2">
                                    <div class="avatar-group avatar-group-chained">
                                                                        <span class="avatar avatar-circle cursor-pointer avatar-sm" data-bs-toggle="tooltip" data-bs-title="Gabriella May">
                                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-12.jpg" loading="lazy">
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm bg-violet-500" data-bs-toggle="tooltip" data-bs-title="Larry Campbell">
                                                                            <span class="avatar-string avatar-circle">LC</span>
                                                                        </span>
                                        <span class="avatar avatar-circle cursor-pointer avatar-sm bg-fuchsia-500" data-bs-toggle="tooltip" data-bs-title="Phyllis Chapman">
                                                                            <span class="avatar-string avatar-circle">PC</span>
                                                                        </span>
                                    </div>
                                    <div class="flex items-center rounded-full font-semibold text-xs">
                                        <div class="flex items-center px-2 py-1 border border-gray-300 rounded-full">
                                            <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" class="text-base" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                      d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4">
                                                </path>
                                            </svg>
                                            <span class="ml-1 rtl:mr-1 whitespace-nowrap">9 / 18</span>
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
</div>
