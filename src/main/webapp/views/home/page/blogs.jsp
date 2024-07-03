<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/05/2024
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>blog</h2>
    </div>
</section>
<section class="inner-section blog-grid">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-lg-12">
<%--                        <div class="top-filter">--%>
                        <form id="submitForm" style="margin-bottom: 22px;" method="get" action="${contextPath}/blogs" class="d-flex justify-content-between">

                            <div class="filter-show">
                                <label class="filter-label">Show :</label>
                                <select id="pageSizeSelect" name="size" class="form-select filter-select" onchange="submitPageSize()">
                                    <option value="8" <c:if test="${size == 8}">selected</c:if>>8</option>
                                    <option value="12" <c:if test="${size == 12}">selected</c:if>>12</option>
                                    <option value="16" <c:if test="${size == 16}">selected</c:if>>16</option>
                                </select>
                            </div>
                            <div class="filter-short">
                                <label class="filter-label">Sort by :</label>
                                <select id="sortSelect" name="sort" class="form-select filter-select" onchange="submitSortForm()">
                                    <option value="default" <c:if test="${sort == 'default'}">selected</c:if>>Default</option>
                                    <option value="name_asc" <c:if test="${sort == 'name_asc'}">selected</c:if>>Name A-Z</option>
                                    <option value="name_desc" <c:if test="${sort == 'name_desc'}">selected</c:if>>Name Z-A</option>
                                </select>
                            </div>

                            <input type="hidden" name="page" value="${currentPage}" />

                        </form>
<%--                    </div>--%>

                    </div>
                </div>
                <div class="row">
        <c:forEach var="p" items="${posts.content}">
                    <div class="col-md-6 col-lg-6">
                        <div class="blog-card">
                            <div class="blog-media"><a class="blog-img" href="${contextPath}/blog-detail/${p.id}"><img src="${contextPath}/resources/images/${p.image}"
                                                                                      alt="blog"></a></div>
                            <div class="blog-content">
                                <ul class="blog-meta">
                                    <li><i class="fas fa-user"></i><span>admin</span></li>
                                    <li><i class="fas fa-calendar-alt"></i><span>february 02, 2021</span></li>
                                </ul>
                                <h4 class="blog-title"><a href="${contextPath}/blog-detail/${p.id}">${p.name}</a></h4>
                                <p class="blog-desc">${p.description}</p><a class="blog-btn"
                                                                                               href="${contextPath}/blog-detail/${p.id}"><span>read more</span><i class="icofont-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
        </c:forEach>
                </div>
                <div class="row">
                    <div class="col-lg-12">

    <div class="bottom-paginate">
        <p class="page-info">Show ${posts.content.size()} of ${posts.totalElements} results</p>
        <ul class="pagination">
            <c:choose>
                <c:when test="${not posts.first}">
                    <li class="page-item">
                        <a class="page-link" href="?page=${posts.number - 1}&size=${posts.size}&postCt=${postCt}">
                            <i class="fas fa-long-arrow-alt-left"></i>
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item disabled">
                                        <span class="page-link">
                                            <i class="fas fa-long-arrow-alt-left"></i>
                                        </span>
                    </li>
                </c:otherwise>
            </c:choose>
            <c:forEach begin="0" end="${(posts.totalPages - 1)<0?0:(posts.totalPages -1 )}" step="1" varStatus="status">
                <c:choose>
                    <c:when test="${status.index == posts.number}">
                        <li class="page-item active">
                            <span class="page-link">${status.index + 1}</span>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item">
                            <a class="page-link" href="?page=${status.index}&size=${posts.size}&sort=${sort}&postCt=${postCt}">
                                    ${status.index + 1}
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <c:choose>
                <c:when test="${not posts.last}">
                    <li class="page-item">
                        <a class="page-link" href="?page=${posts.number + 1}&size=${posts.size}&postId=${postCt}">
                            <i class="fas fa-long-arrow-alt-right"></i>
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item disabled">
                                            <span class="page-link">
                                                <i class="fas fa-long-arrow-alt-right"></i>
                                            </span>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7 col-lg-4">
                <div class="blog-widget">
                    <h3 class="blog-widget-title">Find blogs</h3>
                    <form action="${contextPath}/searchp" method="get" class="blog-widget-form">
                        <input type="text" value="${keyword}" name="s" placeholder="Search blogs">
                        <button class="icofont-search-1"></button>
                    </form>
                </div>
                <div class="blog-widget">
                    <h3 class="blog-widget-title">top categories</h3>
                    <ul class="blog-widget-category">
                    <c:forEach var="pct" items="${postcategories}">
                        <li><a href="${contextPath}/blogs?postCt=${pct.id}">${pct.name} <span>${pct.postCount}</span></a></li>
                    </c:forEach>
                    </ul>
                </div>
                <div class="blog-widget">
                    <h3 class="blog-widget-title">popular feeds</h3>
                    <ul class="blog-widget-feed">

                        <c:forEach var="tp" items="${top8}">
                            <li>
                                <a class="blog-widget-media" href="#">
                                    <img src="${contextPath}/resources/images/${tp.image}" alt="blog-widget">
                                </a>
                                <h6 class="blog-widget-text">
                                    <a href="#">${tp.name}</a><span>february 02, 2021</span>
                                </h6>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="blog-widget">
                    <h3 class="blog-widget-title">follow us</h3>
                    <ul class="blog-widget-social">
                        <li><a href="#" class="icofont-facebook"></a></li>
                        <li><a href="#" class="icofont-twitter"></a></li>
                        <li><a href="#" class="icofont-linkedin"></a></li>
                        <li><a href="#" class="icofont-pinterest"></a></li>
                        <li><a href="#" class="icofont-instagram"></a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    function submitPageSize() {
        document.getElementById('submitForm').submit();
    }

    function submitSortForm() {
        document.getElementById('submitForm').submit();
    }

</script>