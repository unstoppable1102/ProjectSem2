<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col">
    <div
            class="pt-8 pb-4 border-b border-gray-200 dark:border-gray-600 bg-white dark:bg-gray-800">
        <div class="container mx-auto px-6">
            <div class="flex justify-between items-end mb-6">
                <div>
                    <p class="mb-1">Agile project</p>
                    <h3>RND Team Sprint 2</h3>
                </div>
                <div class="avatar-group avatar-group-chained">
												<span class="avatar avatar-circle avatar-sm cursor-pointer"
                                                      data-avatar-size="30" data-bs-toggle="tooltip"
                                                      data-bs-title="Carolyn Perkins">
													<img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg"
                                                         loading="lazy">
												</span>
                    <span class="avatar avatar-circle avatar-sm cursor-pointer"
                          data-avatar-size="30" data-bs-toggle="tooltip"
                          data-bs-title="Terrance Monero">
													<img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-2.jpg"
                                                         loading="lazy">
												</span>
                    <span class="avatar avatar-circle avatar-sm cursor-pointer"
                          data-avatar-size="30" data-bs-toggle="tooltip"
                          data-bs-title="Ron Vargas">
													<img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg"
                                                         loading="lazy">
												</span>
                    <span class="avatar avatar-circle avatar-sm cursor-pointer"
                          data-avatar-size="30" data-bs-toggle="tooltip"
                          data-bs-title="Joyce Freeman">
													<img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-5.jpg"
                                                         loading="lazy">
												</span>
                    <span class="avatar avatar-circle avatar-sm cursor-pointer items-center"
                          data-avatar-size="30" data-bs-toggle="tooltip"
                          data-bs-title="2 More">
													<span class="avatar-string">+2</span>
												</span>
                </div>
            </div>
            <div class="flex flex-col lg:flex-row justify-between lg:items-center gap-4">
                <div role="tablist" class="tab-list tab-list-pill">
                    <button class="tab-nav tab-nav-pill active" role="tab"
                            aria-selected="true" tabindex="0">
                        All
                    </button>
                    <button class="tab-nav tab-nav-pill" role="tab" aria-selected="false"
                            tabindex="0">
                        Task
                    </button>
                    <button class="tab-nav tab-nav-pill" role="tab" aria-selected="false"
                            tabindex="0">
                        Bug
                    </button>
                    <button class="tab-nav tab-nav-pill" role="tab" aria-selected="false"
                            tabindex="0">
                        Live Issue
                    </button>
                    <button class="tab-nav tab-nav-pill" role="tab" aria-selected="false"
                            tabindex="0">
                        Low priority
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="container mx-auto h-full">
        <div class="scrumboard flex flex-col flex-auto w-full h-full mb-2">
            <div class="scrumboard-body flex max-w-full overflow-x-auto h-full mt-4 gap-4">
                <div
                        class="board-column flex flex-col mb-3 min-w-[300px] w-[300px]  max-w-[300px] p-0 rounded-lg">
                    <div class="board-title py-3 flex justify-between items-center">
                        <h6>To Do</h6>
                        <div class="dropdown">
                            <div class="dropdown-toggle" data-bs-toggle="dropdown">
                                <button class="btn btn-plain btn-icon btn-xs rounded-full">
                                    <svg stroke="currentColor" fill="currentColor"
                                         stroke-width="0" viewBox="0 0 16 16" height="1em"
                                         width="1em" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z">
                                        </path>
                                    </svg>
                                </button>
                            </div>
                            <ul class="dropdown-menu">
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
																	<svg stroke="currentColor" fill="none"
                                                                         stroke-width="2" viewBox="0 0 24 24"
                                                                         aria-hidden="true" height="1em" width="1em"
                                                                         xmlns="http://www.w3.org/2000/svg">
																		<path stroke-linecap="round"
                                                                              stroke-linejoin="round"
                                                                              d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z">
																		</path>
																	</svg>
																</span>
                                    <span class="ml-2 rtl:mr-2">Rename</span>
                                </li>
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
																	<svg stroke="currentColor" fill="none"
                                                                         stroke-width="2" viewBox="0 0 24 24"
                                                                         aria-hidden="true" height="1em" width="1em"
                                                                         xmlns="http://www.w3.org/2000/svg">
																		<path stroke-linecap="round"
                                                                              stroke-linejoin="round"
                                                                              d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z">
																		</path>
																	</svg>
																</span>
                                    <span class="ml-2 rtl:mr-2">Add Ticket</span>
                                </li>
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
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
                                    <span class="ml-2 rtl:mr-2">Delete Board</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="task-column-body">
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-blue-500"></span>Task
                                </div>
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-rose-500"></span>Live
                                    issue
                                </div>
                                <h6 class="mb-2">Unable to upload file</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>August 05
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Carolyn Perkins">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-1.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Terrance Moreno">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-2.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Ron Vargas">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>1
																	</span>
                                        <span class="flex items-center gap-2 text-base">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M15.172 7l-6.586 6.586a2 2 0 102.828 2.828l6.414-6.586a4 4 0 00-5.656-5.656l-6.415 6.585a6 6 0 108.486 8.486L20.5 13">
																			</path>
																		</svg>2
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-amber-400"></span>Bug
                                </div>
                                <h6 class="mb-2">Table data incorrect</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>July 11
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Frederick Adams">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>2
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-indigo-500"></span>Low
                                    priority
                                </div>
                                <h6 class="mb-2">Fix broken UI</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>August 05
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Lee Wheeler">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-13.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Joyce Freeman">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-5.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>1
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                        class="board-column flex flex-col mb-3 min-w-[300px] w-[300px]  max-w-[300px] p-0 rounded-lg">
                    <div
                            class="board-title px-4 py-3 flex justify-between items-center relative">
                        <h6>In progress</h6>
                        <ul class="dropdown-menu">
                            <li class="menu-item menu-item-hoverable">
															<span class="text-lg">
																<svg stroke="currentColor" fill="none" stroke-width="2"
                                                                     viewBox="0 0 24 24" aria-hidden="true" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path stroke-linecap="round" stroke-linejoin="round"
                                                                          d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z">
																	</path>
																</svg>
															</span>
                                <span class="ml-2 rtl:mr-2">Rename</span>
                            </li>
                            <li class="menu-item menu-item-hoverable">
															<span class="text-lg">
																<svg stroke="currentColor" fill="none" stroke-width="2"
                                                                     viewBox="0 0 24 24" aria-hidden="true" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path stroke-linecap="round" stroke-linejoin="round"
                                                                          d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z">
																	</path>
																</svg>
															</span>
                                <span class="ml-2 rtl:mr-2">Add Ticket</span>
                            </li>
                            <li class="menu-item menu-item-hoverable">
															<span class="text-lg">
																<svg stroke="currentColor" fill="none" stroke-width="2"
                                                                     viewBox="0 0 24 24" aria-hidden="true" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path stroke-linecap="round" stroke-linejoin="round"
                                                                          d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16">
																	</path>
																</svg>
															</span>
                                <span class="ml-2 rtl:mr-2">Delete Board</span>
                            </li>
                        </ul>
                    </div>
                    <div id="in-progress-column-body">
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-amber-400"></span>Bug
                                </div>
                                <h6 class="mb-2">Fix dashboard layout</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>April 17
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Terrance Moreno">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-2.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Frederick Adams">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-8.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>1
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-blue-500"></span>Task
                                </div>
                                <h6 class="mb-2">New design</h6>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Brittany Hale">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-10.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>1
																	</span>
                                        <span class="flex items-center gap-2 text-base">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M15.172 7l-6.586 6.586a2 2 0 102.828 2.828l6.414-6.586a4 4 0 00-5.656-5.656l-6.415 6.585a6 6 0 108.486 8.486L20.5 13">
																			</path>
																		</svg>1
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-indigo-500"></span>Low
                                    priority
                                </div>
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-blue-500"></span>Task
                                </div>
                                <h6 class="mb-2">Improve user experiences</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>May 20
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Samantha Phillips">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-6.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                        class="board-column flex flex-col mb-3 min-w-[300px] w-[300px]  max-w-[300px] p-0 rounded-lg">
                    <div class="board-title py-3 flex justify-between items-center">
                        <h6>Submitted</h6>
                        <div class="dropdown">
                            <div class="dropdown-toggle" data-bs-toggle="dropdown">
                                <button class="btn btn-plain btn-icon btn-xs rounded-full">
                                    <svg stroke="currentColor" fill="currentColor"
                                         stroke-width="0" viewBox="0 0 16 16" height="1em"
                                         width="1em" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z">
                                        </path>
                                    </svg>
                                </button>
                            </div>
                            <ul class="dropdown-menu">
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
																	<svg stroke="currentColor" fill="none"
                                                                         stroke-width="2" viewBox="0 0 24 24"
                                                                         aria-hidden="true" height="1em" width="1em"
                                                                         xmlns="http://www.w3.org/2000/svg">
																		<path stroke-linecap="round"
                                                                              stroke-linejoin="round"
                                                                              d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z">
																		</path>
																	</svg>
																</span>
                                    <span class="ml-2 rtl:mr-2">Rename</span>
                                </li>
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
																	<svg stroke="currentColor" fill="none"
                                                                         stroke-width="2" viewBox="0 0 24 24"
                                                                         aria-hidden="true" height="1em" width="1em"
                                                                         xmlns="http://www.w3.org/2000/svg">
																		<path stroke-linecap="round"
                                                                              stroke-linejoin="round"
                                                                              d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z">
																		</path>
																	</svg>
																</span>
                                    <span class="ml-2 rtl:mr-2">Add Ticket</span>
                                </li>
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
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
                                    <span class="ml-2 rtl:mr-2">Delete Board</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="submitted-column-body">
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-indigo-500"></span>Low
                                    priority
                                </div>
                                <h6 class="mb-2">Update node environment</h6>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Ron Vargas">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>1
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-rose-500"></span>Live
                                    issue
                                </div>
                                <h6 class="mb-2">Remove user data</h6>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Carolyn Hanson">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-9.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Brittany Hale">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-10.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>1
																	</span>
                                        <span class="flex items-center gap-2 text-base">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M15.172 7l-6.586 6.586a2 2 0 102.828 2.828l6.414-6.586a4 4 0 00-5.656-5.656l-6.415 6.585a6 6 0 108.486 8.486L20.5 13">
																			</path>
																		</svg>1
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                        class="board-column flex flex-col mb-3 min-w-[300px] w-[300px]  max-w-[300px] p-0 rounded-lg">
                    <div class="board-title py-3 flex justify-between items-center">
                        <h6>Completed</h6>
                        <div class="dropdown">
                            <div class="dropdown-toggle" data-bs-toggle="dropdown">
                                <button class="btn btn-plain btn-icon btn-xs rounded-full">
                                    <svg stroke="currentColor" fill="currentColor"
                                         stroke-width="0" viewBox="0 0 16 16" height="1em"
                                         width="1em" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm5 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z">
                                        </path>
                                    </svg>
                                </button>
                            </div>
                            <ul class="dropdown-menu">
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
																	<svg stroke="currentColor" fill="none"
                                                                         stroke-width="2" viewBox="0 0 24 24"
                                                                         aria-hidden="true" height="1em" width="1em"
                                                                         xmlns="http://www.w3.org/2000/svg">
																		<path stroke-linecap="round"
                                                                              stroke-linejoin="round"
                                                                              d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z">
																		</path>
																	</svg>
																</span>
                                    <span class="ml-2 rtl:mr-2">Rename</span>
                                </li>
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
																	<svg stroke="currentColor" fill="none"
                                                                         stroke-width="2" viewBox="0 0 24 24"
                                                                         aria-hidden="true" height="1em" width="1em"
                                                                         xmlns="http://www.w3.org/2000/svg">
																		<path stroke-linecap="round"
                                                                              stroke-linejoin="round"
                                                                              d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z">
																		</path>
																	</svg>
																</span>
                                    <span class="ml-2 rtl:mr-2">Add Ticket</span>
                                </li>
                                <li class="menu-item menu-item-hoverable">
																<span class="text-lg">
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
                                    <span class="ml-2 rtl:mr-2">Delete Board</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="completed-column-body">
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-blue-500"></span>Task
                                </div>
                                <h6 class="mb-2">Ready to test</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>April 04
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Lee Wheeler">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-13.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Carolyn Hanson">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-9.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>1
																	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-amber-400"></span>Bug
                                </div>
                                <h6 class="mb-2">Slow API connection</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>August 19
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Joyce Freeman">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-5.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Samantha Phillips">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-6.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Tara Fletcher">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-7.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2"></div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-rose-500"></span>Live
                                    issue
                                </div>
                                <h6 class="mb-2">Login failed</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>May 06
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Luke Cook">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-4.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2"></div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card board-card hover:shadow-lg rounded-lg dark:bg-gray-700 bg-gray-50 mb-4 card-border cursor-grab">
                            <div class="card-body p-4">
                                <div class="tag mr-2 rtl:ml-2 mb-2">
																<span
                                                                        class="tag-affix tag-prefix bg-indigo-500"></span>Low
                                    priority
                                </div>
                                <h6 class="mb-2">Locale incorrect</h6>
                                <span
                                        class="flex items-center gap-2 mb-2 text-sm font-semibold">
																<svg stroke="currentColor" fill="currentColor"
                                                                     stroke-width="0" viewBox="0 0 20 20"
                                                                     aria-hidden="true" class="text-lg" height="1em"
                                                                     width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path fill-rule="evenodd"
                                                                          d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"
                                                                          clip-rule="evenodd"></path>
																</svg>August 13
															</span>
                                <div class="flex items-center justify-between mt-3">
                                    <div class="avatar-group avatar-group-chained">
																	<span class="tooltip-wrapper"
                                                                          data-bs-toggle="tooltip"
                                                                          data-bs-title="Joyce Freeman">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-5.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                        <span class="tooltip-wrapper"
                                              data-bs-toggle="tooltip"
                                              data-bs-title="Ron Vargas">
																		<span
                                                                                class="avatar avatar-circle avatar-sm cursor-pointer"
                                                                                data-avatar-size="25">
																			<img class="avatar-img avatar-circle"
                                                                                 src="${contextPath}/resources/admin/img/avatars/thumb-3.jpg"
                                                                                 loading="lazy">
																		</span>
																	</span>
                                    </div>
                                    <div class="flex items-center gap-2">
																	<span class="flex items-center gap-2 font-semibold">
																		<svg stroke="currentColor" fill="none"
                                                                             stroke-width="2" viewBox="0 0 24 24"
                                                                             aria-hidden="true" class="text-base"
                                                                             height="1em" width="1em"
                                                                             xmlns="http://www.w3.org/2000/svg">
																			<path stroke-linecap="round"
                                                                                  stroke-linejoin="round"
                                                                                  d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z">
																			</path>
																		</svg>2
																	</span>
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
