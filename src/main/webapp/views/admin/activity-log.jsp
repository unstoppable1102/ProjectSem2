<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 28/06/2024
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="container mx-auto">
        <div class="card adaptable-card">
            <div class="card-body">
                <div class="grid lg:grid-cols-5 gap-8">
                    <div class="col-span-4">
                        <h3 class="mb-6">Activity Log</h3>
                        <div class="max-w-[900px]">
                            <div class="mb-8">
                                <div class="mb-4 font-semibold uppercase">Sunday, 06 March</div>
                                <ul class="timeline">
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle bg-teal-500 dark:bg-teal-500" data-avatar-size="30"></span>
                                                    <span class="avatar-string">CP</span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Carolyn Perkins</span>
                                                        <span class="mx-1">has change</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-979</span>
                                                        <span class="mx-1"> status to</span>
                                                        <span class="badge-dot bg-emerald-500"></span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100 ml-1 rtl:mr-1">Completed</span>
                                                        <span class="ml-3 rtl:mr-3">11:20 PM</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle" data-avatar-size="30">
                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg" loading="lazy">
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Ron Vargas</span>
                                                        <span class="mx-1">comment on your</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Post</span>
                                                        <span class="ml-3 rtl:mr-3">10:53 PM</span>
                                                    </p>
                                                    <div class="card mt-4 card-border" role="presentation">
                                                        <div class="card-body">Fine, Java MIGHT be a good example of what a programming language should be like. But Java applications are good examples of what applications SHOULDN'T be like.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle text-gray-700 bg-gray-200 dark:text-gray-100" style="width: 30px; height: 30px; min-width: 30px; line-height: 30px; font-size: 15px;">
                                                        <span class="avatar-icon avatar-icon-30">
                                                            <svg
                                                                stroke="currentColor"
                                                                fill="currentColor"
                                                                 stroke-width="0"
                                                                viewBox="0 0 20 20"
                                                                aria-hidden="true"
                                                                height="1em"
                                                                width="1em"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path fill-rule="evenodd" d="M17.707 9.293a1 1 0 010 1.414l-7 7a1 1 0 01-1.414 0l-7-7A.997.997 0 012 10V5a3 3 0 013-3h5c.256 0 .512.098.707.293l7 7zM5 6a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <div class="flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Joyce Freeman</span>
                                                        <span class="mx-1">added tags</span>
                                                        <div class="tag mx-1">
                                                            <span class="tag-affix tag-prefix bg-rose-500"></span>Live Issue
                                                        </div>
                                                        <div class="tag mx-1">
                                                            <span class="tag-affix tag-prefix bg-blue-500"></span>Backend
                                                        </div>
                                                        <span class="ml-3 rtl:mr-3">09:40 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle text-gray-700 bg-gray-200 dark:text-gray-100" style="width: 30px; height: 30px; min-width: 30px; line-height: 30px; font-size: 15px;">
                                                        <span class="avatar-icon avatar-icon-30">
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
                                                                <path fill-rule="evenodd" d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z" clip-rule="evenodd"></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <div class="flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Luke Cook</span>
                                                        <span class="mx-1">added</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">document.csv</span>
                                                        <span class="mx-1">to ticket</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-1092</span>
                                                        <span class="ml-3 rtl:mr-3">08:18 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle" data-avatar-size="30">
                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-7.jpg" loading="lazy" alt="">
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Tara Fletcher</span>
                                                        <span class="mx-1">mentioned you in a comment</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Post</span>
                                                        <span class="ml-3 rtl:mr-3">07:17 PM</span>
                                                    </p>
                                                    <div class="card mt-4 card-border" role="presentation">
                                                        <div class="card-body">
                                                            <span class="font-semibold text-gray-900 dark:text-gray-100">@Carolyn</span> One of the main causes of the fall of the Roman Empire was that-lacking zero-they had no way to indicate successful termination of their C programs.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item timeline-item-last">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle bg-pink-500 dark:bg-pink-500" data-avatar-size="30"></span>
                                                    <span class="avatar-string">LW</span>
                                                </div>
                                            </div>
                                            <div class="timeline-item-content timeline-item-content-last">
                                                <div class="mt-1">
                                                    <div class="flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Lee Wheeler</span>
                                                        <span class="mx-1">assigned ticket</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-1092</span>
                                                        <span class="mx-1">to</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Gail Barnes</span>
                                                        <span class="ml-3 rtl:mr-3">04:13 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="mb-8">
                                <div class="mb-4 font-semibold uppercase">Saturday, 05 March</div>
                                <ul class="timeline">
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle" data-avatar-size="30">
                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg" loading="lazy" alt="">
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Frederick Adams</span>
                                                        <span class="mx-1">comment on your</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Post</span>
                                                        <span class="ml-3 rtl:mr-3">01:49 PM</span>
                                                    </p>
                                                    <div class="card mt-4 card-border" role="presentation">
                                                        <div class="card-body">The trouble with programmers is that you can never tell what a programmer is doing until it's too late.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle" data-avatar-size="30">
                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-10.jpg" loading="lazy">
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Brittany Hale</span>
                                                        <span class="mx-1">has change</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-977</span>
                                                        <span class="mx-1"> status to</span>
                                                        <span class="badge-dot bg-blue-500"></span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100 ml-1 rtl:mr-1">In Dev</span>
                                                        <span class="ml-3 rtl:mr-3">01:30 PM</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle text-gray-700 bg-gray-200 dark:text-gray-100" style="width: 30px; height: 30px; min-width: 30px; line-height: 30px; font-size: 15px;">
                                                        <span class="avatar-icon avatar-icon-30">
                                                            <svg
                                                                stroke="currentColor"
                                                                fill="currentColor"
                                                                stroke-width="0"
                                                                viewBox="0 0 20 20"
                                                                aria-hidden="true"
                                                                height="1em"
                                                                width="1em"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M2 6a2 2 0 012-2h12a2 2 0 012 2v2a2 2 0 100 4v2a2 2 0 01-2 2H4a2 2 0 01-2-2v-2a2 2 0 100-4V6z"></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <div class="flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Samantha Phillips</span>
                                                        <span class="mx-1">has created ticket</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-977</span>
                                                        <span class="ml-3 rtl:mr-3">01:22 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle text-gray-700 bg-gray-200 dark:text-gray-100" style="width: 30px; height: 30px; min-width: 30px; line-height: 30px; font-size: 15px;">
                                                        <span class="avatar-icon avatar-icon-30">
                                                            <svg
                                                                stroke="currentColor"
                                                                fill="currentColor"
                                                                stroke-width="0"
                                                                viewBox="0 0 20 20"
                                                                aria-hidden="true"
                                                                height="1em"
                                                                width="1em"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path fill-rule="evenodd" d="M17.707 9.293a1 1 0 010 1.414l-7 7a1 1 0 01-1.414 0l-7-7A.997.997 0 012 10V5a3 3 0 013-3h5c.256 0 .512.098.707.293l7 7zM5 6a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <div class="flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Terrance Moreno</span>
                                                        <span class="mx-1">added tags</span>
                                                        <div class="tag mx-1">
                                                            <span class="tag-affix tag-prefix bg-amber-400"></span>Bug
                                                        </div>
                                                        <span class="ml-3 rtl:mr-3">01:05 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item timeline-item-last">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle bg-red-500 dark:bg-red-500" data-avatar-size="30">
                                                    <span class="avatar-string">ER</span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="timeline-item-content timeline-item-content-last">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Ella Robinson</span>
                                                        <span class="mx-1">has change</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-902</span>
                                                        <span class="mx-1"> status to</span>
                                                        <span class="badge-dot bg-amber-500"></span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100 ml-1 rtl:mr-1">Ready to test</span>
                                                        <span class="ml-3 rtl:mr-3">12:49 PM</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="mb-8">
                                <div class="mb-4 font-semibold uppercase">Friday, 04 March</div>
                                <ul class="timeline">
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle" data-avatar-size="30">
                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-14.jpg" loading="lazy" alt="">
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Gail Barnes</span>
                                                        <span class="mx-1">has change</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-915</span>
                                                        <span class="mx-1"> status to</span>
                                                        <span class="badge-dot bg-emerald-500"></span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100 ml-1 rtl:mr-1">Completed</span>
                                                        <span class="ml-3 rtl:mr-3">09:22 AM</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle" data-avatar-size="30">
                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-7.jpg" loading="lazy">
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Tara Fletcher</span>
                                                        <span class="mx-1">mentioned you in a comment</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Post</span>
                                                        <span class="ml-3 rtl:mr-3">09:08 AM</span>
                                                    </p>
                                                    <div class="card mt-4 card-border" role="presentation">
                                                        <div class="card-body">
                                                            <span class="font-semibold text-gray-900 dark:text-gray-100">@Carolyn</span> First, solve the problem. Then, write the code.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle text-gray-700 bg-gray-200 dark:text-gray-100" style="width: 30px; height: 30px; min-width: 30px; line-height: 30px; font-size: 15px;">
                                                        <span class="avatar-icon avatar-icon-30">
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
                                                                <path fill-rule="evenodd" d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z" clip-rule="evenodd"></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <div class="flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Luke Cook</span>
                                                        <span class="mx-1">added</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">issue-1.jpg
                                                                                            <span class="ltr:mr-1 rtl:ml-1">,</span>
                                                                                        </span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">issue-2.jpg</span>
                                                        <span class="mx-1">to ticket</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-1011</span>
                                                        <span class="ml-3 rtl:mr-3">08:33 AM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle text-gray-700 bg-gray-200 dark:text-gray-100" style="width: 30px; height: 30px; min-width: 30px; line-height: 30px; font-size: 15px;">
                                                        <span class="avatar-icon avatar-icon-30">
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
                                                                <path d="M2 6a2 2 0 012-2h12a2 2 0 012 2v2a2 2 0 100 4v2a2 2 0 01-2 2H4a2 2 0 01-2-2v-2a2 2 0 100-4V6z"></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                </div>
                                                <div class="timeline-connect"></div>
                                            </div>
                                            <div class="timeline-item-content">
                                                <div class="mt-1">
                                                    <div class="flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Joyce Freeman</span>
                                                        <span class="mx-1">has created ticket</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">PD-983</span>
                                                        <span class="ml-3 rtl:mr-3">08:21 AM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-item timeline-item-last">
                                        <div class="timeline-item-wrapper">
                                            <div class="timeline-item-media">
                                                <div class="timeline-item-media-content">
                                                    <span class="avatar avatar-circle" data-avatar-size="30">
                                                    <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-4.jpg" loading="lazy" alt="">
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="timeline-item-content timeline-item-content-last">
                                                <div class="mt-1">
                                                    <p class="my-1 flex items-center">
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Luke Cook</span>
                                                        <span class="mx-1">comment on your</span>
                                                        <span class="font-semibold text-gray-900 dark:text-gray-100">Post</span>
                                                        <span class="ml-3 rtl:mr-3">07:47 AM</span>
                                                    </p>
                                                    <div class="card mt-4 card-border" role="presentation">
                                                        <div class="card-body">I've noticed lately that the paranoid fear of computers becoming intelligent and taking over the world has almost entirely disappeared from the common culture. Near as I can tell, this coincides with the release of MS-DOS.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-default">Load More</button>
                            </div>
                        </div>
                    </div>
                    <div class="hidden xl:block">
                        <div class="z-10 affix" data-affix-offset="80">
                            <h5 class="mb-4">Filter Activity</h5>
                            <div class="inline-flex flex-col gap-y-2">
                                <h6 class="text-gray-900 uppercase tracking-wide font-semibold text-sm lg:text-xs mb-3">Ticket</h6>
                                <label class="checkbox-label mb-4">
                                    <input class="checkbox" type="checkbox" value="true" checked>
                                    <span>Ticket status</span>
                                </label>
                                <label class="checkbox-label mb-4">
                                    <input class="checkbox" type="checkbox" value="true" checked>
                                    <span>Assign ticket</span>
                                </label>
                                <label class="checkbox-label mb-4">
                                    <input class="checkbox" type="checkbox" value="true" checked>
                                    <span>New ticket</span>
                                </label>
                                <label class="checkbox-label mb-4">
                                    <input class="checkbox" type="checkbox" value="true" checked>
                                    <span>Add tags</span>
                                </label>
                                <label class="checkbox-label mb-4">
                                    <input class="checkbox" type="checkbox" value="true" checked>
                                    <span>Add files</span>
                                </label>
                                <h6 class="text-gray-900 uppercase tracking-wide font-semibold text-sm lg:text-xs mt-4 mb-3">Comment</h6>
                                <label class="checkbox-label mb-4">
                                    <input class="checkbox" type="checkbox" value="true" checked>
                                    <span>Comment on post</span>
                                </label>
                                <label class="checkbox-label mb-4">
                                    <input class="checkbox" type="checkbox" value="true" checked>
                                    <span>Mentioned you</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
