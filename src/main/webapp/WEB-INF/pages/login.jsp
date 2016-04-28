<%@ include file="/WEB-INF/pages/fragments/header_shop.jsp"%>

<div id="wrapper">

  <section id="content">
    <div id="breadcrumb-container">
      <div class="container">
        <ul class="breadcrumb">
          <li><a href="index-2.html">Home</a></li>
          <li class="active">Login</li>
        </ul>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <header class="content-title">
            <h1 class="title">Login or Create An Account</h1>
            <div class="md-margin"></div><!-- space -->
          </header>

          <div class="row">

            <div class="col-md-6 col-sm-6 col-xs-12">
              <h2>New Customer</h2>

              <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
              <div class="md-margin"></div><!-- space -->
              <a href="register-account.html" class="btn btn-custom-2">Create An Account</a>
              <div class="lg-margin"></div><!-- space -->
            </div><!-- End .col-md-6 -->
            <div class="col-md-6 col-sm-6 col-xs-12">
              <h2>Registered Customers</h2>
              <p>If you have an account with us, please log in.</p>
              <div class="xs-margin"></div>
              <c:if test="${not empty error}">
                <div class="error">${error}</div>
              </c:if>
              <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
              </c:if>
              <div class="xs-margin"></div>

              <form id="loginForm" action="<c:url value='/j_spring_security_check' />" method='POST'>
                <div class="input-group">
                  <span class="input-group-addon"><span class="input-icon input-icon-email"></span><span class="input-text">Email&#42;</span></span>
                  <input type="email" name="email" required class="form-control input-lg" placeholder="Email">
                </div><!-- End .input-group -->
                <div class="input-group xs-margin">
                  <span class="input-group-addon"><span class="input-icon input-icon-password"></span><span class="input-text">Password&#42;</span></span>
                  <input type="password" name="password" required class="form-control input-lg" placeholder="Your Password">
                </div><!-- End .input-group -->
                <span class="help-block text-right"><a href="#">Forgot your password?</a></span>
                <button type="submit" class="btn btn-custom-2">LOGIN</button>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

              </form>

              <%--LOGIN WITH FACEBOOK--%>
              <div class="md-margin"></div><!-- space -->
              <%--<%FBConnection fbConnection = new FBConnection();%>--%>

              <a class="btn btn-block-facebook btn-social btn-facebook" href="/facebookLogin">
                <span class="fa fa-facebook"></span> Sign in with Facebook
              </a>
              <div class="xss-margin"></div>
              <a href="//www.iubenda.com/privacy-policy/7834577" class="iubenda-white iubenda-embed"
                 title="Privacy Policy">Privacy Policy</a>
              <script type="text/javascript">(function (w, d) {
                var loader = function () {
                  var s = d.createElement("script"), tag = d.getElementsByTagName("script")[0];
                  s.src = "//cdn.iubenda.com/iubenda.js";
                  tag.parentNode.insertBefore(s, tag);
                };
                if (w.addEventListener) {
                  w.addEventListener("load", loader, false);
                } else if (w.attachEvent) {
                  w.attachEvent("onload", loader);
                } else {
                  w.onload = loader;
                }
              })(window, document);</script>

            <%--PRIVACY POLICY FACEBOOK--%>
              <div class="sm-margin"></div><!-- space -->
            </div><!-- End .col-md-6 -->

          </div><!-- End.row -->

        </div><!-- End .col-md-12 -->
      </div><!-- End .row -->
    </div><!-- End .container -->

  </section><!-- End #content -->

</div>
<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp"%>