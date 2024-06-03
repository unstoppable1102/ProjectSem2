<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col">
    <div class="card adaptable-card h-full overflow-hidden">
        <div class="card-body p-0 h-full absolute inset-0 flex min-w-0 overflow-hidden">
            <div id="mail-nav" class="hidden xl:flex w-[280px] absolute top-0 bottom-0 ease-in-out duration-300 bg-white dark:bg-gray-800 ltr:border-r rtl:border-l border-gray-200 dark:border-gray-600 z-10 ltr:left-0 rtl:right-0 mail-nav-scroll">
                <div class="flex flex-col justify-between h-full">
                    <div>
                        <div class="my-8 mx-6">
                            <h3>Mailbox</h3>
                        </div>
                        <nav class="menu menu-transparent mx-2 mb-10">
                            <div class="menu-item mb-2 h-[40px] bg-gray-100 dark:bg-gray-700">
                                                                <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                    <svg
                                                                            stroke="currentColor"
                                                                            fill="none"
                                                                            stroke-width="2"
                                                                            viewBox="0 0 24 24"
                                                                            aria-hidden="true"
                                                                            height="1em"
                                                                            width="1em"
                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                    >
                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4"></path>
                                                                    </svg>
                                                                </span>
                                <span>Inbox</span>
                            </div>
                            <div class="menu-item mb-2 h-[40px]">
                                                                <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                    <svg
                                                                            stroke="currentColor"
                                                                            fill="none"
                                                                            stroke-width="2"
                                                                            viewBox="0 0 24 24"
                                                                            aria-hidden="true"
                                                                            height="1em"
                                                                            width="1em"
                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                    >
                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"></path>
                                                                    </svg>
                                                                </span>
                                <span>Sent Item</span>
                            </div>
                            <div class="menu-item mb-2 h-[40px]">
                                                                <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                    <svg
                                                                            stroke="currentColor"
                                                                            fill="none"
                                                                            stroke-width="2"
                                                                            viewBox="0 0 24 24"
                                                                            aria-hidden="true"
                                                                            height="1em"
                                                                            width="1em"
                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                    >
                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                                                    </svg>
                                                                </span>
                                <span>Draft</span>
                            </div>
                            <div class="menu-item mb-2 h-[40px]">
                                                                <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                    <svg
                                                                            stroke="currentColor"
                                                                            fill="none"
                                                                            stroke-width="2"
                                                                            viewBox="0 0 24 24"
                                                                            aria-hidden="true"
                                                                            height="1em"
                                                                            width="1em"
                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                    >
                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z"></path>
                                                                    </svg>
                                                                </span>
                                <span>Starred</span>
                            </div>
                            <div class="menu-item mb-2 h-[40px]">
                                                                <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                    <svg
                                                                            stroke="currentColor"
                                                                            fill="none"
                                                                            stroke-width="2"
                                                                            viewBox="0 0 24 24"
                                                                            aria-hidden="true"
                                                                            height="1em"
                                                                            width="1em"
                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                    >
                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                                                    </svg>
                                                                </span>
                                <span>Deleted</span>
                            </div>
                        </nav>
                        <nav class="menu menu-transparent mx-2 mb-6">
                            <div class="menu-group">
                                <div class="menu-title menu-title-transparent" id="entity-header-232-inKGB6nFWr">Labels</div>
                                <ul>
                                    <div class="menu-item mb-2 h-[40px] ">
                                        <span class="badge-dot bg-blue-500 ltr:mr-2 rtl:ml-2"></span>
                                        <span>Work</span>
                                    </div>
                                    <div class="menu-item mb-2 h-[40px] ">
                                        <span class="badge-dot bg-indigo-500 ltr:mr-2 rtl:ml-2"></span>
                                        <span>Private</span>
                                    </div>
                                    <div class="menu-item mb-2 h-[40px] ">
                                        <span class="badge-dot bg-red-500 ltr:mr-2 rtl:ml-2"></span>
                                        <span>Important</span>
                                    </div>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="mx-4 mb-4">
                        <button class="btn btn-solid w-full">
                                                            <span class="flex items-center justify-center">
                                                                <span class="text-lg">
                                                                    <svg
                                                                            stroke="currentColor"
                                                                            fill="none"
                                                                            stroke-width="2"
                                                                            viewBox="0 0 24 24"
                                                                            aria-hidden="true"
                                                                            height="1em"
                                                                            width="1em"
                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                    >
                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"></path>
                                                                    </svg>
                                                                </span>
                                                                <span class="ltr:ml-1 rtl:mr-1">New Message</span>
                                                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="flex flex-auto w-full">
                <div id="mail-list" class="min-w-[360px] ease-in-out duration-300 relative flex-auto flex-col ltr:border-r rtl:border-l border-gray-200 dark:border-gray-600 ltr:xl:ml-[280px] rtl:xl:mr-[280px] hidden xl:flex">
                    <div class="relative flex flex-0 items-center justify-between min-h-[55px] border-gray-200 dark:border-gray-600">
                        <div class="flex items-center gap-1 px-2">
                            <button id="mail-nav-mobile-toggle" class="btn btn icon btn-plain btn-sm rounded-full text-lg xl:hidden" data-bs-toggle="modal" data-bs-target="#drawerPlacementStart">
                                <svg
                                        stroke="currentColor"
                                        fill="currentColor"
                                        stroke-width="0"
                                        viewBox="0 0 20 20"
                                        aria-hidden="true"
                                        height="1em"
                                        width="1em"
                                        xmlns="http://www.w3.org/2000/svg"
                                >
                                    <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path>
                                </svg>
                            </button>
                            <button id="mail-nav-toggle" class="btn btn icon btn-plain btn-sm rounded-full text-lg xl:block hidden">
                                <svg
                                        stroke="currentColor"
                                        fill="currentColor"
                                        stroke-width="0"
                                        viewBox="0 0 20 20"
                                        aria-hidden="true"
                                        height="1em"
                                        width="1em"
                                        xmlns="http://www.w3.org/2000/svg"
                                >
                                    <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path>
                                </svg>
                            </button>
                            <h6>Inbox</h6>
                        </div>
                    </div>
                    <div class="h-full mail-list-scroll relative">
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class="bg-gray-50 dark:bg-gray-700 w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Eileen Horton</span>
                                        </div>
                                        <div class="flex items-center text-lg">
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path fill-rule="evenodd" d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z" clip-rule="evenodd"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,An 'extremely credible source' has called my of...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">12:06PM</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-2.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Terrance Moreno</span>
                                            <span class="ltr:ml-2 rtl:mr-2">
                                                                                <svg
                                                                                        stroke="currentColor"
                                                                                        fill="none"
                                                                                        stroke-width="2"
                                                                                        viewBox="0 0 24 24"
                                                                                        aria-hidden="true"
                                                                                        class="text-red-500"
                                                                                        height="1em"
                                                                                        width="1em"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                >
                                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M3 21v-4m0 0V5a2 2 0 012-2h6.5l1 1H21l-3 6 3 6h-8.5l-1-1H5a2 2 0 00-2 2zm9-13.5V9"></path>
                                                                                </svg>
                                                                            </span>
                                        </div>
                                        <div class="flex items-center text-lg">
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path fill-rule="evenodd" d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z" clip-rule="evenodd"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,All of the words in Lorem Ipsum have flirted wi...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">9:35PM</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Ron Vargas</span>
                                        </div>
                                        <div class="flex items-center text-lg">
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path fill-rule="evenodd" d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z" clip-rule="evenodd"></path>
                                            </svg>
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    class="text-amber-500 ltr:ml-1 rtl:mr-1"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,I think my strongest asset maybe by far is my t...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">8:16am</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-4.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Luke Cook</span>
                                        </div>
                                        <div class="flex items-center text-lg"></div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Dear Nathan,Despite the constant negative ipsum covfefe. ...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">Feb 3</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-5.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Joyce Freeman</span>
                                        </div>
                                        <div class="flex items-center text-lg"></div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,Some people have an ability to write placeholde...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">Feb 2</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-6.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Samantha Phillips</span>
                                        </div>
                                        <div class="flex items-center text-lg">
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    class="text-amber-500 ltr:ml-1 rtl:mr-1"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan, I fully understand why it's former users left ...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">Jan 30</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-7.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Tara Fletcher</span>
                                        </div>
                                        <div class="flex items-center text-lg">
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path fill-rule="evenodd" d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z" clip-rule="evenodd"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,He's a word hero because he was captured. I lik...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">Jan 28</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Lisa Smith</span>
                                        </div>
                                        <div class="flex items-center text-lg">
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path fill-rule="evenodd" d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z" clip-rule="evenodd"></path>
                                            </svg>
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    class="text-amber-500 ltr:ml-1 rtl:mr-1"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,An 'extremely credible source' has called my of...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">Jan 27</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-9.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Carolyn Hanson</span>
                                        </div>
                                        <div class="flex items-center text-lg">
                                            <svg
                                                    stroke="currentColor"
                                                    fill="currentColor"
                                                    stroke-width="0"
                                                    viewBox="0 0 20 20"
                                                    aria-hidden="true"
                                                    height="1em"
                                                    width="1em"
                                                    xmlns="http://www.w3.org/2000/svg"
                                            >
                                                <path fill-rule="evenodd" d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z" clip-rule="evenodd"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,I was going to say something extremely rough to...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">Jan 26</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mail-item relative flex border-b border-gray-200 dark:border-gray-600 last:border-0 hover:bg-hover">
                            <div class=" w-full py-6 pr-4 pl-5 cursor-pointer select-none hover:bg-gray-50 hover:dark:bg-gray-700 flex">
                                <div class="ltr:mr-2 rtl:ml-2">
                                                                    <span class="avatar avatar-circle" data-avatar-size="25">
                                                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-10.jpg" loading="lazy">
                                                                    </span>
                                </div>
                                <div class="w-full">
                                    <div class="flex items-center justify-between mb-2">
                                        <div class="flex items-center">
                                            <span class="font-semibold truncate text-gray-900 dark:text-gray-100">Brittany Hale</span>
                                        </div>
                                        <div class="flex items-center text-lg"></div>
                                    </div>
                                    <div class="flex flex-auto w-full justify-between">
                                        <p>Hi Nathan,Lorem Ipsum best not make any more threats to y...</p>
                                        <div class="ltr:ml-2 rtl:mr-2">
                                            <span class="whitespace-nowrap">Jan 26</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mail-content-section" class="block xl:flex flex-col w-full bg-gray-100 dark:bg-gray-900">
                    <div class="relative flex items-center min-h-[55px] px-4 border-b border-gray-200 dark:border-gray-600 bg-white dark:bg-gray-800">
                        <div class="flex items-center justify-between w-full">
                            <div class="flex items-center gap-2">
                                <button id="back-btn" class="btn btn-plain btn-icon btn-sm xl:hidden rounded-full">
                                    <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M11 17l-5-5m0 0l5-5m-5 5h12"></path>
                                    </svg>
                                </button>
                                <button class="btn btn-default btn-sm">
                                                                    <span class="flex items-center justify-center">
                                                                        <span class="text-lg">
                                                                            <svg
                                                                                    stroke="currentColor"
                                                                                    fill="currentColor"
                                                                                    stroke-width="0"
                                                                                    viewBox="0 0 20 20"
                                                                                    aria-hidden="true"
                                                                                    height="1em"
                                                                                    width="1em"
                                                                                    xmlns="http://www.w3.org/2000/svg"
                                                                            >
                                                                                <path fill-rule="evenodd" d="M7.707 3.293a1 1 0 010 1.414L5.414 7H11a7 7 0 017 7v2a1 1 0 11-2 0v-2a5 5 0 00-5-5H5.414l2.293 2.293a1 1 0 11-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                                                            </svg>
                                                                        </span>
                                                                        <span class="ltr:ml-1 rtl:mr-1">
                                                                            <span class="hidden sm:block">Reply</span>
                                                                        </span>
                                                                    </span>
                                </button>
                            </div>
                            <div class="flex items-center gap-2">
                                <div class="input-group">
                                    <button class="btn btn-default btn-sm">
                                                                        <span class="flex items-center justify-center">
                                                                            <span class="text-lg">
                                                                                <span class="text-amber-500">
                                                                                    <svg
                                                                                            stroke="currentColor"
                                                                                            fill="none"
                                                                                            stroke-width="2"
                                                                                            viewBox="0 0 24 24"
                                                                                            aria-hidden="true"
                                                                                            height="1em"
                                                                                            width="1em"
                                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                                    >
                                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z"></path>
                                                                                    </svg>
                                                                                </span>
                                                                            </span>
                                                                            <span class="ltr:ml-1 rtl:mr-1">
                                                                                <span class="hidden sm:block">Star</span>
                                                                            </span>
                                                                        </span>
                                    </button>
                                    <button class="btn btn-default btn-sm">
                                                                        <span class="flex items-center justify-center">
                                                                            <span class="text-lg">
                                                                                <span class="text-red-500">
                                                                                    <svg
                                                                                            stroke="currentColor"
                                                                                            fill="none"
                                                                                            stroke-width="2"
                                                                                            viewBox="0 0 24 24"
                                                                                            aria-hidden="true"
                                                                                            height="1em"
                                                                                            width="1em"
                                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                                    >
                                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M3 21v-4m0 0V5a2 2 0 012-2h6.5l1 1H21l-3 6 3 6h-8.5l-1-1H5a2 2 0 00-2 2zm9-13.5V9"></path>
                                                                                    </svg>
                                                                                </span>
                                                                            </span>
                                                                            <span class="ltr:ml-1 rtl:mr-1">
                                                                                <span class="hidden sm:block">Flag</span>
                                                                            </span>
                                                                        </span>
                                    </button>
                                </div>
                                <div class="dropdown">
                                    <div class="dropdown-toggle" id="dropdown-toggle-42-BXqtaPjU7e">
                                        <button class="btn btn-default btn-sm">
                                                                            <span class="flex items-center justify-center">
                                                                                <span class="text-lg">
                                                                                    <svg
                                                                                            stroke="currentColor"
                                                                                            fill="none"
                                                                                            stroke-width="2"
                                                                                            viewBox="0 0 24 24"
                                                                                            aria-hidden="true"
                                                                                            height="1em"
                                                                                            width="1em"
                                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                                    >
                                                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 10v6m0 0l-3-3m3 3l3-3M3 17V7a2 2 0 012-2h6l2 2h6a2 2 0 012 2v8a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path>
                                                                                    </svg>
                                                                                </span>
                                                                                <span class="ltr:ml-1 rtl:mr-1">
                                                                                    <span class="hidden sm:block">Move to</span>
                                                                                </span>
                                                                            </span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white dark:bg-gray-800 px-4 py-8 shadow-sm border-b border-gray-200 dark:border-gray-600 md:flex items-center justify-between">
                        <h5>An 'extremely credible source'</h5>
                    </div>
                    <div class="relative mail-content-scroll">
                        <div class="m-6 h-full">
                            <div class="pb-6">
                                <div class="card card-border">
                                    <div class="card-body">
                                        <div class="md:flex items-center justify-between">
                                            <div class="flex items-center">
                                                                                <span class="avatar avatar-circle avatar-md">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                                <div class="ltr:ml-2 rtl:mr-2">
                                                    <div class="font-semibold truncate text-gray-900 dark:text-gray-100">Eileen Horton</div>
                                                    <div>To:
                                                        <span>nathan@themenate.com</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="flex items-center gap-2">
                                                                                <svg
                                                                                        stroke="currentColor"
                                                                                        fill="none"
                                                                                        stroke-width="2"
                                                                                        viewBox="0 0 24 24"
                                                                                        aria-hidden="true"
                                                                                        class="text-lg"
                                                                                        height="1em"
                                                                                        width="1em"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                >
                                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                                                </svg>
                                                                                <span class="font-semibold">12:06PM</span>
                                                                            </span>
                                        </div>
                                        <div class="mt-8">
                                            <p>Hi Nathan,</p>
                                            <br>
                                            <p>An 'extremely credible source' has called my office and told me that Barack Obama's placeholder text is a fraud. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen.</p>
                                            <p>This can't be! Artoo, you're playing the wrong message. There will be no bargain. We're doomed. I will not give up my favorite decoration. I like Captain Solo where he is. Artoo, look! Captain Solo. And he's still frozen in carbonite. What could possibly have come over Master Luke. Is it something I did? He never expressed any unhappiness with my work. Oh! Oh! Hold it! Ohh!</p>
                                            <p>
                                                <br>Your fleet has lost. And your friends on the Endor moon will not survive. There is no escape, my young apprentice.
                                                <br>
                                                <br>
                                                <br>Moruth Doole,
                                                <br>
                                            </p>
                                        </div>
                                        <div class="mt-6 md:flex">
                                            <div class="min-w-full md:min-w-[200px] flex items-center md:mb-0 mb-2 ltr:md:mr-3 rtl:md:ml-3 cursor-pointer select-none border px-4 py-2 border-gray-200 dark:border-gray-600 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-600">
                                                <div class="text-3xl">
                                                    <svg
                                                            stroke="currentColor"
                                                            fill="currentColor"
                                                            stroke-width="0"
                                                            viewBox="0 0 16 16"
                                                            class="text-blue-500"
                                                            height="1em"
                                                            width="1em"
                                                            xmlns="http://www.w3.org/2000/svg"
                                                    >
                                                        <path d="M5.485 6.879a.5.5 0 1 0-.97.242l1.5 6a.5.5 0 0 0 .967.01L8 9.402l1.018 3.73a.5.5 0 0 0 .967-.01l1.5-6a.5.5 0 0 0-.97-.242l-1.036 4.144-.997-3.655a.5.5 0 0 0-.964 0l-.997 3.655L5.485 6.88z"></path>
                                                        <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"></path>
                                                    </svg>
                                                </div>
                                                <div class="ltr:ml-2 rtl:mr-2">
                                                    <div class="font-semibold text-gray-900 dark:text-gray-100">Prospectus.doc</div>
                                                    <span>1MB</span>
                                                </div>
                                            </div>
                                            <div class="min-w-full md:min-w-[200px] flex items-center md:mb-0 mb-2 ltr:md:mr-3 rtl:md:ml-3 cursor-pointer select-none border px-4 py-2 border-gray-200 dark:border-gray-600 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-600">
                                                <div class="text-3xl">
                                                    <svg
                                                            stroke="currentColor"
                                                            fill="currentColor"
                                                            stroke-width="0"
                                                            viewBox="0 0 16 16"
                                                            class="text-emerald-500"
                                                            height="1em"
                                                            width="1em"
                                                            xmlns="http://www.w3.org/2000/svg"
                                                    >
                                                        <path d="M5.18 4.616a.5.5 0 0 1 .704.064L8 7.219l2.116-2.54a.5.5 0 1 1 .768.641L8.651 8l2.233 2.68a.5.5 0 0 1-.768.64L8 8.781l-2.116 2.54a.5.5 0 0 1-.768-.641L7.349 8 5.116 5.32a.5.5 0 0 1 .064-.704z"></path>
                                                        <path d="M4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4zm0 1h8a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1z"></path>
                                                    </svg>
                                                </div>
                                                <div class="ltr:ml-2 rtl:mr-2">
                                                    <div class="font-semibold text-gray-900 dark:text-gray-100">Financial_Report.xls</div>
                                                    <span>652KB</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pb-6">
                                <div class="card card-border">
                                    <div class="card-body">
                                        <div class="md:flex items-center justify-between">
                                            <div class="flex items-center">
                                                                                <span class="avatar avatar-circle avatar-md">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-16.jpg" loading="lazy">
                                                                                </span>
                                                <div class="ltr:ml-2 rtl:mr-2">
                                                    <div class="font-semibold truncate text-gray-900 dark:text-gray-100">Nathan</div>
                                                    <div>To:
                                                        <span>nathan@themenate.com</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="flex items-center gap-2">
                                                                                <svg
                                                                                        stroke="currentColor"
                                                                                        fill="none"
                                                                                        stroke-width="2"
                                                                                        viewBox="0 0 24 24"
                                                                                        aria-hidden="true"
                                                                                        class="text-lg"
                                                                                        height="1em"
                                                                                        width="1em"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                >
                                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                                                </svg>
                                                                                <span class="font-semibold">08:49AM</span>
                                                                            </span>
                                        </div>
                                        <div class="mt-8">
                                            <p>Hi Eileen,</p>
                                            <br>
                                            <p>We will never become a truly paper-less society until the Palm Pilot folks come out with WipeMe 1.0.</p>
                                            <br>
                                            <p> The cheapest, fastest, and most reliable components are those that aren't there. Ready, fire, aim: the fast approach to software development. Ready, aim, aim, aim, aim: the slow approach to software development. Software undergoes beta testing shortly before it's released. Beta is Latin for “still doesn't work”.</p>
                                            <br>
                                            <br>
                                            <p>Regards,</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pb-6">
                                <div class="card card-border">
                                    <div class="card-body">
                                        <div class="md:flex items-center justify-between">
                                            <div class="flex items-center">
                                                                                <span class="avatar avatar-circle avatar-md">
                                                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg" loading="lazy">
                                                                                </span>
                                                <div class="ltr:ml-2 rtl:mr-2">
                                                    <div class="font-semibold truncate text-gray-900 dark:text-gray-100">Eileen Horton</div>
                                                    <div>To:
                                                        <span>nathan@themenate.com</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="flex items-center gap-2">
                                                                                <svg
                                                                                        stroke="currentColor"
                                                                                        fill="none"
                                                                                        stroke-width="2"
                                                                                        viewBox="0 0 24 24"
                                                                                        aria-hidden="true"
                                                                                        class="text-lg"
                                                                                        height="1em"
                                                                                        width="1em"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                >
                                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                                                </svg>
                                                                                <span class="font-semibold">03:27AM</span>
                                                                            </span>
                                        </div>
                                        <div class="mt-8">
                                            <p>Hi Nathan,</p>
                                            <br>
                                            <p>Saucer grinder to go organic extraction coffee frappuccino lungo. Carajillo, dark, bar , qui, rich latte medium aged americano. Cream breve, mug at flavour half and half breve.</p>
                                            <br>
                                            <p>Plunger pot redeye con panna, in, espresso brewed et americano ut spoon. Java frappuccino plunger pot coffee, eu coffee shop variety percolator id robusta black. As plunger pot, americano, mocha skinny, at aroma grinder arabica americano wings spoon.</p>
                                            <br>
                                            <br>Moruth Doole
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
    <div class="modal fade" id="drawerPlacementStart" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog drawer drawer-start !w-[300px]">
            <div class="drawer-content">
                <div class="drawer-header">
                    <h4>Mail</h4>
                    <span class="close-btn" role="button" data-bs-dismiss="modal">
                                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                                                        </svg>
                                                    </span>
                </div>
                <div class="relative mail-list-mobile-scroll">
                    <div class="flex flex-col justify-between h-full">
                        <div>
                            <div class="my-8 mx-6">
                                <h3>Mailbox</h3>
                            </div>
                            <nav class="menu menu-transparent mx-2 mb-10">
                                <div class="menu-item mb-2 h-[40px] bg-gray-100 dark:bg-gray-700">
                                                                    <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                        <svg
                                                                                stroke="currentColor"
                                                                                fill="none"
                                                                                stroke-width="2"
                                                                                viewBox="0 0 24 24"
                                                                                aria-hidden="true"
                                                                                height="1em"
                                                                                width="1em"
                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                        >
                                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4"></path>
                                                                        </svg>
                                                                    </span>
                                    <span>Inbox</span>
                                </div>
                                <div class="menu-item mb-2 h-[40px]">
                                                                    <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                        <svg
                                                                                stroke="currentColor"
                                                                                fill="none"
                                                                                stroke-width="2"
                                                                                viewBox="0 0 24 24"
                                                                                aria-hidden="true"
                                                                                height="1em"
                                                                                width="1em"
                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                        >
                                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"></path>
                                                                        </svg>
                                                                    </span>
                                    <span>Sent Item</span>
                                </div>
                                <div class="menu-item mb-2 h-[40px]">
                                                                    <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                        <svg
                                                                                stroke="currentColor"
                                                                                fill="none"
                                                                                stroke-width="2"
                                                                                viewBox="0 0 24 24"
                                                                                aria-hidden="true"
                                                                                height="1em"
                                                                                width="1em"
                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                        >
                                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                                                        </svg>
                                                                    </span>
                                    <span>Draft</span>
                                </div>
                                <div class="menu-item mb-2 h-[40px]">
                                                                    <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                        <svg
                                                                                stroke="currentColor"
                                                                                fill="none"
                                                                                stroke-width="2"
                                                                                viewBox="0 0 24 24"
                                                                                aria-hidden="true"
                                                                                height="1em"
                                                                                width="1em"
                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                        >
                                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z"></path>
                                                                        </svg>
                                                                    </span>
                                    <span>Starred</span>
                                </div>
                                <div class="menu-item mb-2 h-[40px]">
                                                                    <span class="text-2xl ltr:mr-2 rtl:ml-2">
                                                                        <svg
                                                                                stroke="currentColor"
                                                                                fill="none"
                                                                                stroke-width="2"
                                                                                viewBox="0 0 24 24"
                                                                                aria-hidden="true"
                                                                                height="1em"
                                                                                width="1em"
                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                        >
                                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                                                        </svg>
                                                                    </span>
                                    <span>Deleted</span>
                                </div>
                            </nav>
                            <nav class="menu menu-transparent mx-2 mb-6">
                                <div class="menu-group">
                                    <div class="menu-title menu-title-transparent" id="entity-header-232-inKGB6nFWr">Labels</div>
                                    <ul>
                                        <div class="menu-item mb-2 h-[40px] ">
                                            <span class="badge-dot bg-blue-500 ltr:mr-2 rtl:ml-2"></span>
                                            <span>Work</span>
                                        </div>
                                        <div class="menu-item mb-2 h-[40px] ">
                                            <span class="badge-dot bg-indigo-500 ltr:mr-2 rtl:ml-2"></span>
                                            <span>Private</span>
                                        </div>
                                        <div class="menu-item mb-2 h-[40px] ">
                                            <span class="badge-dot bg-red-500 ltr:mr-2 rtl:ml-2"></span>
                                            <span>Important</span>
                                        </div>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <div class="mx-4 mb-4">
                            <button class="btn btn-solid w-full">
                                                                <span class="flex items-center justify-center">
                                                                    <span class="text-lg">
                                                                        <svg
                                                                                stroke="currentColor"
                                                                                fill="none"
                                                                                stroke-width="2"
                                                                                viewBox="0 0 24 24"
                                                                                aria-hidden="true"
                                                                                height="1em"
                                                                                width="1em"
                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                        >
                                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"></path>
                                                                        </svg>
                                                                    </span>
                                                                    <span class="ltr:ml-1 rtl:mr-1">New Message</span>
                                                                </span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>