<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 24/05/2024
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="container mx-auto">
        <div class="flex items-center justify-between mb-4">
            <h3>Settings</h3>
        </div>
        <div class="card adaptable-card">
            <div class="card-body">
                <div class="tabs">
                    <div role="tablist" class="tab-list tab-list-underline">
                        <button class="tab-nav tab-nav-underline active" data-bs-toggle="tab" data-bs-target="#tab-profile" role="tab" aria-selected="true" tabindex="0">
                            Profile
                        </button>
                        <button class="tab-nav tab-nav-underline" data-bs-toggle="tab" data-bs-target="#tab-password" role="tab" aria-selected="false" tabindex="0">
                            Password
                        </button>
                        <button class="tab-nav tab-nav-underline" data-bs-toggle="tab" data-bs-target="#tab-notification" role="tab" aria-selected="false" tabindex="0">
                            Notification
                        </button>
                        <button class="tab-nav tab-nav-underline" data-bs-toggle="tab" data-bs-target="#tab-integration" role="tab" aria-selected="false" tabindex="0">
                            Integration
                        </button>
                        <button class="tab-nav tab-nav-underline" data-bs-toggle="tab" data-bs-target="#tab-billing" role="tab" aria-selected="false" tabindex="0">
                            Billing
                        </button>
                    </div>
                    <div class="tab-content px-4 py-6">
                        <div class="tab-pane fade show active" id="tab-profile" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                            <form action="#">
                                <div class="form-container vertical">
                                    <div>
                                        <h5>General</h5>
                                        <p>Basic info, like your name and address that will displayed in public</p>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Name</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <span class="input-wrapper">
                                                        <div class="input-suffix-start">
                                                            <svg
                                                                stroke="currentColor"
                                                                fill="none"
                                                                stroke-width="2"
                                                                viewBox="0 0 24 24"
                                                                aria-hidden="true"
                                                                class="text-xl"
                                                                height="1em"
                                                                width="1em"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                            </svg>
                                                        </div>
                                                        <input
                                                                class="input pl-8"
                                                                type="text"
                                                                name="name"
                                                                autocomplete="off"
                                                                placeholder="Name"
                                                                value="${sessionScope.admFullName}"
                                                        >
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Email</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <span class="input-wrapper">
                                                        <div class="input-suffix-start">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                                                            </svg>
                                                        </div>
                                                        <input
                                                                class="input pl-8"
                                                                type="email"
                                                                name="email"
                                                                autocomplete="off"
                                                                placeholder="Email"
                                                                value="${sessionScope.admEmail}"
                                                        >
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Avatar</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="upload cursor-pointer">
                                                        <input class="upload-input" type="file" title="" value="">
                                                        <span class="avatar avatar-circle avatat-lg border-2 border-white dark:border-gray-800 shadow-lg" data-avatar-size="60">
                                                            <img class="avatar-img avatar-circle" src="${contextPath}/resources/images/${sessionScope.admAvatar}" loading="lazy" alt="">
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 items-center">
                                        <div class="font-semibold">Title</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <span class="input-wrapper">
                                                        <div class="input-suffix-start">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                                                            </svg>
                                                        </div>
                                                        <input
                                                                class="input pl-8"
                                                                type="text"
                                                                name="title"
                                                                autocomplete="off"
                                                                placeholder="Title"
                                                                value="UI/UX Designer"
                                                        >
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-8">
                                        <h5>Preferences</h5>
                                        <p>Your personalized preference displayed in your account</p>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Language</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <select class="input">
                                                    <option selected value="en">English (US)</option>
                                                    <option value="ch">Chinese</option>
                                                    <option value="es">Espanol</option>
                                                    <option value="ar">Arabic</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Time Zone</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <span class="input-wrapper undefined">
                                                        <div class="input-suffix-start">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9"></path>
                                                            </svg>
                                                        </div>
                                                        <input
                                                                class="input pl-8"
                                                                type="text"
                                                                name="timeZone"
                                                                readonly=""
                                                                autocomplete="off"
                                                                placeholder="Time Zone"
                                                                value="GMT+8"
                                                        >
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 items-center">
                                        <div class="font-semibold">Sync Data</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="switcher">
                                                    <input type="checkbox">
                                                    <span class="switcher-toggle"></span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex mt-4 ltr:justify-end gap-2">
                                        <button class="btn btn-default" type="button">
                                            Reset
                                        </button>
                                        <button class="btn btn-solid" type="submit">
                                            Reset
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="tab-password" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
                            <form action="#">
                                <div class="form-container vertical">
                                    <div>
                                        <h5>Password</h5>
                                        <p>Enter your current &amp; new password to reset your password</p>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Current Password</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <input
                                                            class="input"
                                                            type="password"
                                                            name="password"
                                                            autocomplete="off"
                                                            placeholder="Current Password"
                                                            value=""
                                                    >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">New Password</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <input
                                                            class="input"
                                                            type="password"
                                                            name="newPassword"
                                                            autocomplete="off"
                                                            placeholder="New Password"
                                                            value=""
                                                    >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Confirm Password</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <input
                                                            class="input"
                                                            type="password"
                                                            name="confirmNewPassword"
                                                            autocomplete="off"
                                                            placeholder="Confirm Password"
                                                            value=""
                                                    >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-4 flex ltr:justify-end gap-2">
                                        <button class="btn btn-default" type="button">Reset</button>
                                        <button class="btn btn-solid" type="submit">Update Password</button>
                                    </div>
                                </div>
                            </form>
                            <div class="mt-6">
                                <div>
                                    <h5>Where you're signed in</h5>
                                    <p>You're signed in to your account on these devices.</p>
                                </div>
                                <div class="rounded-lg border border-gray-200 dark:border-gray-600 mt-6">
                                    <div class="flex items-center px-4 py-6 border-b border-gray-200 dark:border-gray-600">
                                        <div class="flex items-center">
                                            <div class="text-3xl">
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
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                                                </svg>
                                            </div>
                                            <div class="ml-3 rtl:mr-3">
                                                <div class="flex items-center">
                                                    <div class="text-gray-900 dark:text-gray-100 font-semibold">Desktop FKL-278</div>
                                                    <div class="tag bg-emerald-100 text-emerald-600 dark:bg-emerald-500/20 dark:text-emerald-100 rounded-md border-0 mx-2">
                                                        <span class="capitalize"> Current</span>
                                                    </div>
                                                </div>
                                                <span>Manhattan, United State • 09-Mar-2022, 05:32 PM</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex items-center px-4 py-6 border-b border-gray-200 dark:border-gray-600">
                                        <div class="flex items-center">
                                            <div class="text-3xl">
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
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                </svg>
                                            </div>
                                            <div class="ml-3 rtl:mr-3">
                                                <div class="flex items-center">
                                                    <div class="text-gray-900 dark:text-gray-100 font-semibold">iPhone 13 Pro Max</div>
                                                </div>
                                                <span>Manhattan, United State • 04-Mar-2022, 08:15 PM</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex items-center px-4 py-6">
                                        <div class="flex items-center">
                                            <div class="text-3xl">
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
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M7 21h10a2 2 0 002-2V5a2 2 0 00-2-2H7a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                </svg>
                                            </div>
                                            <div class="ml-3 rtl:mr-3">
                                                <div class="flex items-center">
                                                    <div class="text-gray-900 dark:text-gray-100 font-semibold">iPad Air</div>
                                                </div>
                                                <span>New York, United State • 01-Mar-2022, 05:15 PM</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-notification" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
                            <form action="#">
                                <div class="form-container vertical">
                                    <div>
                                        <h5>General Notification</h5>
                                        <p>Select how you'll be notified when the following changes occur.</p>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">News</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Account activity</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">New device used to sign in</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 items-center">
                                        <div class="font-semibold">Reminders</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-6">
                                        <h5>Project Notification</h5>
                                        <p>Select how you'll be notified when the project related events happended.</p>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Somone mentions you</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Somone replies to your message</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">Task status updated</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 items-center">
                                        <div class="font-semibold">Task assigned to you</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-6">
                                        <h5>Sales Notification</h5>
                                        <p>Select how you'll be notified when any products &amp; order updated.</p>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600 items-center">
                                        <div class="font-semibold">New product</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 items-center">
                                        <div class="font-semibold">New order placed</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="segment">
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                                                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block ltr:ml-2 rtl:mr-2">Email</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2 segment-item-active" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="currentColor"
                                                                    stroke-width="0"
                                                                    viewBox="0 0 20 20"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path fill-rule="evenodd" d="M4.083 9h1.946c.089-1.546.383-2.97.837-4.118A6.004 6.004 0 004.083 9zM10 2a8 8 0 100 16 8 8 0 000-16zm0 2c-.076 0-.232.032-.465.262-.238.234-.497.623-.737 1.182-.389.907-.673 2.142-.766 3.556h3.936c-.093-1.414-.377-2.649-.766-3.556-.24-.56-.5-.948-.737-1.182C10.232 4.032 10.076 4 10 4zm3.971 5c-.089-1.546-.383-2.97-.837-4.118A6.004 6.004 0 0115.917 9h-1.946zm-2.003 2H8.032c.093 1.414.377 2.649.766 3.556.24.56.5.948.737 1.182.233.23.389.262.465.262.076 0 .232-.032.465-.262.238-.234.498-.623.737-1.182.389-.907.673-2.142.766-3.556zm1.166 4.118c.454-1.147.748-2.572.837-4.118h1.946a6.004 6.004 0 01-2.783 4.118zm-6.268 0C6.412 13.97 6.118 12.546 6.03 11H4.083a6.004 6.004 0 002.783 4.118z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">Browser</span>
                                                        </button>
                                                        <button class="segment-item flex items-center gap-2" type="button">
                                                            <svg
                                                                    stroke="currentColor"
                                                                    fill="none"
                                                                    stroke-width="2"
                                                                    viewBox="0 0 24 24"
                                                                    aria-hidden="true"
                                                                    class="text-xl"
                                                                    height="1em"
                                                                    width="1em"
                                                                    xmlns="http://www.w3.org/2000/svg"
                                                            >
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                                                            </svg>
                                                            <span class="hidden sm:block  ltr:ml-2 rtl:mr-2">App</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-4 flex ltr:justify-end gap-2">
                                        <button class="btn btn-default" type="button">Reset</button>
                                        <button class="btn btn-solid" type="submit">Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="tab-integration" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
                            <h5>Installed</h5>
                            <div class="grid lg:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4 gap-4 mt-4">
                                <div class="card card-layout-frame">
                                    <div class="card-body">
                                        <div class="p-1">
                                            <div class="flex items-center justify-between">
                                                <div class="flex items-center">
                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/google-drive.png" loading="lazy">
                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Google Drive</h6>
                                                    </div>
                                                </div>
                                                <label class="switcher">
                                                    <input type="checkbox" checked>
                                                    <span class="switcher-toggle"></span>
                                                </label>
                                            </div>
                                            <p class="mt-6">Upload your files to Google Drive</p>
                                        </div>
                                    </div>
                                    <div class="card-footer card-footer-border flex justify-end p-2">
                                        <button class="btn btn-plain btn-sm">View Intergration</button>
                                    </div>
                                </div>
                                <div class="card card-layout-frame">
                                    <div class="card-body">
                                        <div class="p-1">
                                            <div class="flex items-center justify-between">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/slack.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Slack</h6>
                                                    </div>
                                                </div>
                                                <label class="switcher">
                                                    <input type="checkbox" checked>
                                                    <span class="switcher-toggle"></span>
                                                </label>
                                            </div>
                                            <p class="mt-6">Post to a Slack channel</p>
                                        </div>
                                    </div>
                                    <div class="card-footer card-footer-border flex justify-end p-2">
                                        <button class="btn btn-plain btn-sm">View Intergration</button>
                                    </div>
                                </div>
                                <div class="card card-layout-frame">
                                    <div class="card-body">
                                        <div class="p-1">
                                            <div class="flex items-center justify-between">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/notion.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Notion</h6>
                                                    </div>
                                                </div>
                                                <label class="switcher">
                                                    <input type="checkbox">
                                                    <span class="switcher-toggle"></span>
                                                </label>
                                            </div>
                                            <p class="mt-6">Retrieve notion note to your project</p>
                                        </div>
                                    </div>
                                    <div class="card-footer card-footer-border flex justify-end p-2">
                                        <button class="btn btn-plain btn-sm">View Intergration</button>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-10">
                                <h5>Available</h5>
                                <div class="grid lg:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4 gap-4 mt-4">
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/jira.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Jira</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Create Jira issues</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/zendesk.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Zendesk</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange data with Zendesk</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/dropbox.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Dropbox</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange data with Dropbox</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/github.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Github</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange files with a GitHub repository</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/gitlab.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Gitlab</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange files with a Gitlab repository</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/figma.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Figma</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange screenshots with Figma</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/adobe-xd.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Adobe XD</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange screenshots with Adobe XD</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/sketch.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Sketch</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange screenshots with Sketch</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/hubspot.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Hubspot</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Exchange data with Hubspot</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                    <div class="card card-layout-frame">
                                        <div class="card-body">
                                            <div class="p-1">
                                                <div class="flex items-center">
                                                                                    <span class="avatar avatar-rounded avatar-md bg-transparent dark:bg-transparent">
                                                                                        <img class="avatar-img avatar-rounded" src="${contextPath}/resources/admin/img/thumbs/zapier.png" loading="lazy">
                                                                                    </span>
                                                    <div class="ltr:ml-2 rtl:mr-2">
                                                        <h6>Zapier</h6>
                                                    </div>
                                                </div>
                                                <p class="mt-6">Integrate with hundreds of services.</p>
                                            </div>
                                        </div>
                                        <div class="card-footer card-footer-border flex justify-end p-2">
                                            <button class="btn btn-plain btn-sm">View Intergration</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-billing" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
                            <form action="#">
                                <div class="form-container vertical">
                                    <div>
                                        <h5>Payment Method</h5>
                                        <p>You can update your cards information here</p>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8 border-b border-gray-200 dark:border-gray-600">
                                        <div class="font-semibold">Credit Cards</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="rounded-lg border border-gray-200 dark:border-gray-600">
                                                        <div class="flex items-center justify-between p-4 border-b border-gray-200 dark:border-gray-600">
                                                            <div class="flex items-center">
                                                                <img src="${contextPath}/resources/admin/img/others/img-8.png" alt="visa">
                                                                <div class="ml-3 rtl:mr-3">
                                                                    <div class="flex items-center">
                                                                        <div class="text-gray-900 dark:text-gray-100 font-semibold">Ron Vargas •••• 0392</div>
                                                                        <div class="tag bg-sky-100 text-sky-600 dark:bg-sky-500/20 dark:text-sky-100 rounded-md border-0 mx-2">
                                                                            <span class="capitalize"> Primary</span>
                                                                        </div>
                                                                    </div>
                                                                    <span>Expired Dec 2025</span>
                                                                </div>
                                                            </div>
                                                            <div class="flex">
                                                                <button class="btn btn-default btn-sm" type="button">Edit</button>
                                                            </div>
                                                        </div>
                                                        <div class="flex items-center justify-between p-4">
                                                            <div class="flex items-center">
                                                                <img src="${contextPath}/resources/admin/img/others/img-9.png" alt="master">
                                                                <div class="ml-3 rtl:mr-3">
                                                                    <div class="flex items-center">
                                                                        <div class="text-gray-900 dark:text-gray-100 font-semibold">Ron Vargas •••• 8461</div>
                                                                    </div>
                                                                    <span>Expired Jun 2025</span>
                                                                </div>
                                                            </div>
                                                            <div class="flex">
                                                                <button class="btn btn-default btn-sm" type="button">Edit</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-2">
                                                        <button class="btn btn-plain btn-sm" type="button">
                                                                                            <span class="flex items-center justify-center">
                                                                                                <span class="text-lg">
                                                                                                    <svg
                                                                                                            stroke="currentColor"
                                                                                                            fill="currentColor"
                                                                                                            stroke-width="0"
                                                                                                            viewBox="0 0 20 20"
                                                                                                            aria-hidden="true"
                                                                                                            class="text-lg"
                                                                                                            height="1em"
                                                                                                            width="1em"
                                                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                                                    >
                                                                                                        <path fill-rule="evenodd" d="M10 3a1 1 0 011 1v5h5a1 1 0 110 2h-5v5a1 1 0 11-2 0v-5H4a1 1 0 110-2h5V4a1 1 0 011-1z" clip-rule="evenodd"></path>
                                                                                                    </svg>
                                                                                                </span>
                                                                                                <span class="ltr:ml-1 rtl:mr-1">
                                                                                                    <span class="font-semibold">Add new card</span>
                                                                                                </span>
                                                                                            </span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid md:grid-cols-3 gap-4 py-8">
                                        <div class="font-semibold">Other payment methods</div>
                                        <div class="col-span-2">
                                            <div class="form-item vertical mb-0 max-w-[700px]">
                                                <label class="form-label"></label>
                                                <div>
                                                    <div class="rounded-lg border border-gray-200 dark:border-gray-600">
                                                        <div class="flex items-center justify-between p-4">
                                                            <div class="flex items-center">
                                                                <img src="${contextPath}/resources/admin/img/others/img-10.png" alt="visa">
                                                                <div class="ml-3 rtl:mr-3 font-semibold">ronnie_vergas@infotech.io</div>
                                                            </div>
                                                            <div class="flex">
                                                                <button class="btn btn-default btn-sm" type="button">Edit</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-4 flex ltr:justify-end gap-2">
                                        <button class="btn btn-default" type="button">Reset</button>
                                        <button class="btn btn-solid" type="submit">Update</button>
                                    </div>
                                    <div class="mt-6">
                                        <h5>Billing History</h5>
                                        <p>View your previos billing</p>
                                    </div>
                                    <div class="mt-4 rounded-lg border border-gray-200 dark:border-gray-600">
                                        <div class="overflow-x-auto">
                                            <table class="table-default table-hover">
                                                <thead class="!bg-transparent">
                                                <tr>
                                                    <th>Reference</th>
                                                    <th>Product</th>
                                                    <th>Status</th>
                                                    <th>Date</th>
                                                    <th>Amount</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <span class="cursor-pointer">#36223</span>
                                                        </div>
                                                    </td>
                                                    <td>Mock premium pack</td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span class="badge-dot bg-amber-400"></span>
                                                            <span class="ml-2 rtl:mr-2 capitalize">pending</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">12/10/2021</div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span>$39.90</span>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <span class="cursor-pointer">#34283</span>
                                                        </div>
                                                    </td>
                                                    <td>Business board pro subscription</td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span class="badge-dot bg-emerald-500"></span>
                                                            <span class="ml-2 rtl:mr-2 capitalize">paid</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">11/13/2021</div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span>$59.90</span>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <span class="cursor-pointer">#32234</span>
                                                        </div>
                                                    </td>
                                                    <td>Business board pro subscription</td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span class="badge-dot bg-emerald-500"></span>
                                                            <span class="ml-2 rtl:mr-2 capitalize">paid</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">10/13/2021</div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span>$59.90</span>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <span class="cursor-pointer">#31354</span>
                                                        </div>
                                                    </td>
                                                    <td>Business board pro subscription</td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span class="badge-dot bg-emerald-500"></span>
                                                            <span class="ml-2 rtl:mr-2 capitalize">paid</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">09/13/2021</div>
                                                    </td>
                                                    <td>
                                                        <div class="flex items-center">
                                                            <span>$59.90</span>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
