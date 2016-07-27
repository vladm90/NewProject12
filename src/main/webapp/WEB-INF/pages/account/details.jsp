<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 26.04.2016
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/pages/fragments/header_shop.jsp"%>


<div id="wrapper">
  <section id="content">
    <div class="md-margin"></div><!-- .space -->
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <header class="content-title">
            <h1 class="title">Account Details</h1>

            <%--<c:if test="${not empty user.fbPicture}">--%>
            <h1><img src="${loggedUser.fbPicture}" alt="${loggedUser.firstName}" height="60" width="60"> </h1>
            <%--</c:if>--%>

            <h3>Hello ${loggedUser.firstName} ${loggedUser.lastName}</h3>
            <h3> Your email adress is: ${loggedUser.email}</h3>
            <h3> Your phone number is: ${loggedUser.phone}</h3>

            <div class="md-margin"></div><!-- space -->
          </header>

          <div class="row">

            <%--<div class="col-md-6 col-sm-6 col-xs-12">
            </div><!-- End .col-md-6 -->--%>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <h2>Create New Password</h2>
              <p>If you have an account with us, please log in.</p>
              <div class="xs-margin"></div>

              <form:form id="changePassword" action="/account/changePassword" modelAttribute="form" method='POST'>


                <div class="input-group">
                  <span class="input-group-addon"><span class="input-icon input-icon-password"></span><span class="input-text">New Password&#42;</span></span>
                  <input type="password" name="password" required class="form-control input-lg" placeholder="New Password">
                </div><!-- End .input-group -->
                <div class="input-group xs-margin">
                  <span class="input-group-addon"><span class="input-icon input-icon-password"></span><span class="input-text">Confirm Password&#42;</span></span>
                  <input type="password" name="confirmPassword" required class="form-control input-lg" placeholder="Confirm Password">
                </div><!-- End .input-group -->


                <div class="xs-margin"></div>
                <button type="submit" class="btn btn-custom-2">Change</button>

              </form:form>
              <div class="sm-margin"></div><!-- space -->
            </div><!-- End .col-md-6 -->

          </div><!-- End.row -->

        </div><!-- End .col-md-12 -->
      </div><!-- End .row -->


    </div><!-- End #container -->
  </section><!-- End #content -->
</div>




<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp"%>