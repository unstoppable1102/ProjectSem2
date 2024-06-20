<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/05/2024
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
    <div class="container">
        <h2>blog details</h2>

    </div>
</section>

<section class="inner-section blog-details-part">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 col-xl-10">
                <article class="blog-details">
                    <a class="blog-details-thumb" href="#"><img src="${contextPath}/resources/images/${post.image}" alt="blog"></a>
                    <div class="blog-details-content">
                        <ul class="blog-details-meta">
                            <li><i class="icofont-ui-calendar"></i><span>february 02, 2021</span></li>
                            <li><i class="icofont-user-alt-3"></i><span>Miron mahmud</span></li>
                            <li><i class="icofont-speech-comments"></i><span>25 comments</span></li>
                            <li><i class="icofont-share-boxed"></i><span>34 share</span></li>
                        </ul>
                        <h2 class="blog-details-title">${post.name}</h2>
                        <p class="blog-details-desc">${post.description}</p>
                        <p class="blog-details-desc">
                           ${post.content}
                        </p>

                        <div class="blog-details-footer">
                            <ul class="blog-details-share">
                                <li><span>share:</span></li>
                                <li><a href="#" class="icofont-facebook"></a></li>
                                <li><a href="#" class="icofont-twitter"></a></li>
                                <li><a href="#" class="icofont-linkedin"></a></li>
                                <li><a href="#" class="icofont-pinterest"></a></li>
                                <li><a href="#" class="icofont-instagram"></a></li>
                            </ul>
                            <ul class="blog-details-tag">
                                <li><span>tags:</span></li>
                                <li><a href="#">farming</a></li>
                                <li><a href="#">organic</a></li>
                                <li><a href="#">health</a></li>
                            </ul>
                        </div>
                    </div>
                </article>

                <div class="blog-details-comment">
                    <h3 class="comment-title">${counter} Comments</h3>
                    <ul class="comment-list">

                        <c:forEach var="cm" items="${comments}">

                        <li class="comment-item">
                            <div class="comment-media">
                                <a class="comment-avatar" href="#"><img src="${contextPath}/resources/images/${cm.user.avatar}" alt="review"></a>
                                <h6 class="comment-meta"><a href="#">${cm.user.username}</a><span>${cm.createdDate}</span></h6>
                            </div>
                            <p class="comment-desc">${cm.commentText}</p>
<%--                            <form class="comment-reply"><input type="text" placeholder="reply your comment"><button><i class="icofont-reply"></i>reply</button></form>--%>
                        </li>
                        </c:forEach>

                    </ul>
                </div>
                <form class="blog-details-form" method="post" action="${contextPath}/comment/${post.id}">
                    <h3 class="details-form-title">post comment</h3>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group"><textarea required class="form-control" name="text" placeholder="write your comment"></textarea></div>
                        </div>
                    </div>
                    <button class="form-btn">post comment</button>
                </form>
            </div>
        </div>
    </div>
</section>