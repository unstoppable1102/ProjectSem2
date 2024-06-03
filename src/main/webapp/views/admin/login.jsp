<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 24/05/2024
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr" class="light">

<!-- Mirrored from www.themenate.net/elstar-html/signin-side.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Nov 2023 02:19:47 GMT -->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="${contextPath}/resources/admin/img/favicon.ico">
    <title>Elstar - HTML Tailwind Admin Template</title>

    <!-- Core CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/admin/css/style.css">
</head>
<body>
<!-- App Start-->
<div id="root">
    <!-- App Layout-->
    <div class="app-layout-blank flex flex-auto flex-col h-[100vh]">
        <div class="h-full flex flex-auto flex-col justify-between">
            <main class="h-full">
                <div class="page-container relative h-full flex flex-auto flex-col">
                    <div class="grid lg:grid-cols-3 h-full">
                        <div class="bg-no-repeat bg-cover py-6 px-16 flex-col justify-between hidden lg:flex" style="background-image: url('${contextPath}/resources/admin/img/others/auth-side-bg.jpg');">
                            <div class="logo">
                                <img src="${contextPath}/resources/admin/img/logo/logo-dark-full.png" alt="Elstar logo">
                            </div>
                            <div>
                                <div class="mb-6 flex items-center gap-4">
                                    <span class="avatar avatar-circle avatar-md border-2 border-white">
                                        <img class="avatar-img avatar-circle" src="${contextPath}/resources/admin/img/avatars/thumb-10.jpg" loading="lazy" alt="">
                                    </span>
                                    <div class="text-white">
                                        <div class="font-semibold text-base">Brittany Hale</div>
                                        <span class="opacity-80">CTO, Onward</span>
                                    </div>
                                </div>
                                <p class="text-lg text-white opacity-80">Elstar comes with a complete set of UI components crafted with Tailwind CSS, it fulfilled most of the use case to create modern and beautiful UI and application</p>
                            </div>
                            <span class="text-white">Copyright © 2023
                                        <span class="font-semibold">Elstar</span>
                                    </span>
                        </div>
                        <div class="col-span-2 flex flex-col justify-center items-center bg-white dark:bg-gray-800">
                            <div class="xl:min-w-[450px] px-8">
                                <div class="mb-8">
                                    <h3 class="mb-1">Welcome back!</h3>
                                    <p>Please enter your credentials to sign in!</p>
                                </div>
                                <div>
                                    <span style="color:red;">${msg}</span>
                                    <form action="" method="post">
                                        <div class="form-container vertical">
                                            <div class="form-item vertical">
                                                <label class="form-label mb-2">User Name</label>
                                                <div>
                                                    <input class="input"
                                                            type="text"
                                                            name="username"
                                                            placeholder="User Name"
                                                            value="">
                                                </div>
                                            </div>
                                            <div class="form-item vertical">
                                                <label class="form-label mb-2">Password</label>
                                                <div>
                                                    <span class="input-wrapper">
                                                        <input
                                                                class="input pr-8"
                                                                type="password"
                                                                name="password"
                                                                placeholder="Password"
                                                                value="">
                                                        <div class="input-suffix-end">
                                                            <span class="cursor-pointer text-xl">
                                                                <svg
                                                                        stroke="currentColor"
                                                                        fill="none"
                                                                        stroke-width="2"
                                                                        viewBox="0 0 24 24"
                                                                        aria-hidden="true"
                                                                        height="1em"
                                                                        width="1em"
                                                                        xmlns="http://www.w3.org/2000/svg">
                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21"></path>
                                                                </svg>
                                                            </span>
                                                        </div>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex justify-between mb-6">
                                                <label class="checkbox-label mb-0">
                                                    <input class="checkbox" type="checkbox" value="true" checked>
                                                    <span class="ltr:ml-2 rtl:mr-2">Remember Me</span>
                                                </label>
                                                <a class="text-primary-600 hover:underline" href="forgot-password-side.html">Forgot Password?</a>
                                            </div>
                                            <button class="btn btn-solid w-full" type="submit">Log In</button>
                                            <div class="mt-4 text-center">
                                                <span>Don't have an account yet?</span>
                                                <a class="text-primary-600 hover:underline" href="${contextPath}/admin/register">Sign up</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
</div>

<!-- Core Vendors JS -->
<script src="${contextPath}/resources/admin/js/vendors.min.js"></script>

<!-- Other Vendors JS -->

<!-- Page js -->

<!-- Core JS -->
<script src="${contextPath}/resources/admin/js/app.min.js"></script>
</body>


<!-- Mirrored from www.themenate.net/elstar-html/signin-side.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Nov 2023 02:19:52 GMT -->
</html>