<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22/05/2024
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="inner-section single-banner" style="background: url(${contextPath}/resources/home/images/single-banner.jpg) no-repeat center;">
  <div class="container">
    <h2>my profile</h2>
  </div>
</section>
<section class="inner-section profile-part">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="account-card">
          <div class="account-title">
            <h4>My Profile</h4><button data-bs-toggle="modal" data-bs-target="#profile-edit">edit
            profile</button>
          </div>
          <div class="account-content">
            <div class="row">
              <div class="col-lg-2">
                <div class="profile-image">
                  <a href="#">
                    <img src="${contextPath}/resources/images/${account.avatar}" alt="user" width="150px">
                  </a>
                </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="form-group">
                  <label class="form-label">name</label>
                  <input name="fullName" class="form-control" type="text" value="${account.fullName}"/>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="form-group">
                  <label class="form-label">Email</label>
                  <input class="form-control" type="text" value="${account.email}"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="account-card">
          <div class="account-title">
            <h4>contact number</h4>
          </div>
          <div class="account-content">
            <div class="row">
              <div class="col-md-6 col-lg-4 alert fade show">
                <div class="profile-card contact active">
                  <h6>primary</h6>
                  <c:choose>
                    <c:when test="${account.phone != null}">
                      <p>${account.phone}</p>
                    </c:when>
                    <c:otherwise>
                      <p>N/A</p>
                    </c:otherwise>
                  </c:choose>
                  <ul>
                    <li>
                      <button class="edit icofont-edit" title="Edit This" data-bs-toggle="modal" data-bs-target="#contact-edit"></button>
                    </li>
                    <li>
                      <button class="trash icofont-ui-delete" title="Remove This" data-bs-dismiss="alert"></button>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 alert fade show">
                <div class="profile-card contact">
                  <h6>secondary</h6>
                  <p>+8801747875727</p>
                  <ul>
                    <li><button class="edit icofont-edit" title="Edit This"
                                data-bs-toggle="modal" data-bs-target="#contact-edit"></button></li>
                    <li><button class="trash icofont-ui-delete" title="Remove This"
                                data-bs-dismiss="alert"></button></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="account-card">
          <div class="account-title">
            <h4>delivery address</h4>
          </div>
          <div class="account-content">
            <div class="row">
              <div class="col-md-6 col-lg-4 alert fade show">
                <div class="profile-card address active">
                  <h6>Home</h6>
                  <c:choose>
                    <c:when test="${account.address != null}">
                      <p>${account.address}</p>
                    </c:when>
                    <c:otherwise>
                      <p>N/A</p>
                    </c:otherwise>
                  </c:choose>
                  <ul class="user-action">
                    <li><button class="edit icofont-edit" title="Edit This" data-bs-toggle="modal" data-bs-target="#address-edit"></button></li>
                    <li><button class="trash icofont-ui-delete" title="Remove This" data-bs-dismiss="alert"></button></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 alert fade show">
                <div class="profile-card address">
                  <h6>Office</h6>
                  <p>east tejturi bazar, dhaka-1200. word no-04, road no-13/c, house no-4/b</p>
                  <ul class="user-action">
                    <li><button class="edit icofont-edit" title="Edit This" data-bs-toggle="modal" data-bs-target="#address-edit"></button></li>
                    <li><button class="trash icofont-ui-delete" title="Remove This" data-bs-dismiss="alert"></button></li>
                  </ul>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="account-card mb-0">
          <div class="account-title">
            <h4>payment option</h4><button data-bs-toggle="modal" data-bs-target="#payment-add">add
            card</button>
          </div>
          <div class="account-content">
            <div class="row">
              <div class="col-md-6 col-lg-4 alert fade show">
                <div class="payment-card payment active">
                  <img src="${contextPath}/resources/home/images/payment/png/01.png" alt="payment">
                  <h4>card number</h4>
                  <p><span>****</span><span>****</span><span>****</span><sup>1876</sup></p>
                  <h5>miron mahmud</h5><button class="trash icofont-ui-delete" title="Remove This" data-bs-dismiss="alert"></button>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 alert fade show">
                <div class="payment-card payment">
                  <img src="${contextPath}/resources/home/images/payment/png/02.png" alt="payment">
                  <h4>card number</h4>
                  <p><span>****</span><span>****</span><span>****</span><sup>1876</sup></p>
                  <h5>miron mahmud</h5><button class="trash icofont-ui-delete" title="Remove This" data-bs-dismiss="alert"></button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <a href="${contextPath}/orders/list" class="btn btn-success m-auto w-25 mt-3" >Your Order</a>
    </div>
</section>
<%--<div class="modal fade" id="contact-add">--%>
<%--  <div class="modal-dialog modal-dialog-centered">--%>
<%--    <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i--%>
<%--            class="icofont-close"></i></button>--%>
<%--      <form class="modal-form">--%>
<%--        <div class="form-title">--%>
<%--          <h3>add new contact</h3>--%>
<%--        </div>--%>
<%--        <div class="form-group"><label class="form-label">title</label><select class="form-select">--%>
<%--          <option selected>choose title</option>--%>
<%--          <option value="primary">primary</option>--%>
<%--          <option value="secondary">secondary</option>--%>
<%--        </select></div>--%>
<%--        <div class="form-group"><label class="form-label">number</label>--%>
<%--          <input class="form-control" type="text" placeholder="Enter your number">--%>
<%--        </div>--%>
<%--        <button class="form-btn"--%>
<%--                                                                                                                                         type="submit">save contact info</button>--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--<div class="modal fade" id="address-add">--%>
<%--  <div class="modal-dialog modal-dialog-centered">--%>
<%--    <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i--%>
<%--            class="icofont-close"></i></button>--%>
<%--      <form class="modal-form">--%>
<%--        <div class="form-title">--%>
<%--          <h3>add new address</h3>--%>
<%--        </div>--%>
<%--        <div class="form-group"><label class="form-label">title</label><select class="form-select">--%>
<%--          <option selected>choose title</option>--%>
<%--          <option value="home">home</option>--%>
<%--          <option value="office">office</option>--%>
<%--          <option value="Bussiness">Bussiness</option>--%>
<%--          <option value="academy">academy</option>--%>
<%--          <option value="others">others</option>--%>
<%--        </select></div>--%>
<%--        <div class="form-group">--%>
<%--          <label class="form-label">address</label>--%>
<%--          <textarea class="form-control" placeholder="Enter your address"></textarea></div><button class="form-btn"--%>
<%--                                                                                                                                             type="submit">save address info</button>--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--<div class="modal fade" id="payment-add">--%>
<%--  <div class="modal-dialog modal-dialog-centered">--%>
<%--    <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i--%>
<%--            class="icofont-close"></i></button>--%>
<%--      <form class="modal-form">--%>
<%--        <div class="form-title">--%>
<%--          <h3>add new payment</h3>--%>
<%--        </div>--%>
<%--        <div class="form-group"><label class="form-label">card number</label><input class="form-control"--%>
<%--                                                                                    type="text" placeholder="Enter your card number"></div><button class="form-btn"--%>
<%--                                                                                                                                                   type="submit">save card info</button>--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<div class="modal fade" id="profile-edit">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <button class="modal-close" data-bs-dismiss="modal">
        <i class="icofont-close"></i>
      </button>
        <form class="modal-form">
          <div class="form-title">
            <h3>edit profile info</h3>
          </div>
          <div class="form-group">
            <label class="form-label">profile image</label>
            <input class="form-control" type="file" name="file">
          </div>
          <div class="form-group">
            <label class="form-label">name</label>
            <input class="form-control" type="text" value="${sessionScope.fullName}" />
          </div>
          <div class="form-group">
            <label class="form-label">email</label>
            <input class="form-control" type="text" value="${sessionScope.email}" />
          </div>
          <div class="form-group">
            <label class="form-label">phone</label>
            <input class="form-control" type="text" value="${sessionScope.phone}" />
          </div>
          <div class="form-group">
            <label class="form-label">address</label>
            <input class="form-control" type="text" value="${sessionScope.address}" />
          </div>
          <button class="form-btn" type="submit">save profile info</button>
      </form>
    </div>
  </div>
</div>
<%--<div class="modal fade" id="contact-edit">--%>
<%--  <div class="modal-dialog modal-dialog-centered">--%>
<%--    <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i--%>
<%--            class="icofont-close"></i></button>--%>
<%--      <form class="modal-form">--%>
<%--        <div class="form-title">--%>
<%--          <h3>edit contact info</h3>--%>
<%--        </div>--%>
<%--        <div class="form-group"><label class="form-label">title</label><select class="form-select">--%>
<%--          <option value="primary" selected>primary</option>--%>
<%--          <option value="secondary">secondary</option>--%>
<%--        </select></div>--%>
<%--        <div class="form-group"><label class="form-label">number</label><input class="form-control"--%>
<%--                                                                               type="text" value="+8801838288389"></div><button class="form-btn" type="submit">save contact--%>
<%--        info</button>--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--<div class="modal fade" id="address-edit">--%>
<%--  <div class="modal-dialog modal-dialog-centered">--%>
<%--    <div class="modal-content"><button class="modal-close" data-bs-dismiss="modal"><i--%>
<%--            class="icofont-close"></i></button>--%>
<%--      <form class="modal-form">--%>
<%--        <div class="form-title">--%>
<%--          <h3>edit address info</h3>--%>
<%--        </div>--%>
<%--        <div class="form-group"><label class="form-label">title</label><select class="form-select">--%>
<%--          <option value="home" selected>home</option>--%>
<%--          <option value="office">office</option>--%>
<%--          <option value="Bussiness">Bussiness</option>--%>
<%--          <option value="academy">academy</option>--%>
<%--          <option value="others">others</option>--%>
<%--        </select></div>--%>
<%--        <div class="form-group">--%>
<%--          <label class="form-label">address</label>--%>
<%--          <textarea class="form-control" placeholder="jalkuri, fatullah, narayanganj-1420. word no-09, road no-17/A"></textarea>--%>
<%--        </div><button class="form-btn" type="submit">save address info</button>--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>