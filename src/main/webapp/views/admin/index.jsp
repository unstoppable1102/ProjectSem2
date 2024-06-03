<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="container mx-auto h-full">
        <div id="welcome-page-0" class="welcome-page-section h-full flex flex-col items-center justify-center">
            <div class="text-center">
                <img src="${contextPath}/resources/admin/img/others/welcome.png" alt="Welcome" class="mx-auto mb-8">
                <h3 class="mb-2">Welcome on Board, lets get started with Elstar</h3>
                <p class="text-base">Telling us a bit about yourself to get the best experience, this will only take a
                    minute or two.</p>
                <div class="mt-8 max-w-[350px] mx-auto">
                    <a href="${contextPath}/admin/project/dashboard" class="btn btn-solid block w-full mb-2 next-button">Get started</a>
                    <a href="${contextPath}/admin/project/dashboard" class="btn btn-plain block w-full skip-button">Skip now</a>
                </div>
            </div>
        </div>

    </div>
</div>
