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
            <h1 class="title">Register Account</h1>
            <p class="title-desc">If you already have an account, please login at <a href="/login">login page</a>.</p>
          </header>
          <div class="xs-margin"></div><!-- space -->
          <form:form modelAttribute="form" action="/register" method="POST">
            <div class="row">

              <div class="col-md-6 col-sm-6 col-xs-12">

                <fieldset>
                  <h2 class="sub-title">YOUR PERSONAL DETAILS</h2>
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-user"></span><span class="input-text">First Name&#42;</span></span>
                    <input type="text" name="firstName" value="${form.firstName}" required class="form-control input-lg" placeholder="Your First Name">
                    <form:errors path="firstName" cssClass="error_message" />
                  </div><!-- End .input-group -->
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-user"></span><span class="input-text">Last Name&#42;</span></span>
                    <input type="text" name="lastName" value="${form.lastName}" required class="form-control input-lg" placeholder="Your Last Name">
                    <form:errors path="lastName" cssClass="error_message" />
                  </div><!-- End .input-group -->
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-email"></span><span class="input-text">Email&#42;</span></span>
                    <input type="text" name="email" value="${form.email}" required class="form-control input-lg" placeholder="Your Email">
                    <form:errors path="email" cssClass="error_message" />
                  </div><!-- End .input-group -->
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-phone"></span><span class="input-text">Telephone&#42;</span></span>
                    <input type="text" name="phone" value="${form.phone}" required class="form-control input-lg" placeholder="Your Telephone">
                    <form:errors path="phone" cssClass="error_message" />
                  </div><!-- End .input-group -->

                </fieldset>

                <fieldset>
                  <h2 class="sub-title">YOUR PASSWORD</h2>
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-password"></span><span class="input-text">Password&#42;</span></span>
                    <input type="password" name="password" value="${form.password}" onfocus="this.removeAttribute('readonly');" required class="form-control input-lg" placeholder="Your Password">
                    <form:errors path="password" cssClass="error_message" />
                  </div><!-- End .input-group -->
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-password"></span><span class="input-text">Password&#42;</span></span>
                    <input type="password" name="confirmPassword" value="${form.confirmPassword}" onfocus="this.removeAttribute('readonly');" required class="form-control input-lg" placeholder="Your Password">
                    <form:errors path="confirmPassword" cssClass="error_message" />
                  </div><!-- End .input-group -->
                </fieldset>


              </div><!-- End .col-md-6 -->

              <div class="col-md-6 col-sm-6 col-xs-12">
                <fieldset>
                  <h2 class="sub-title">YOUR ADDRESS</h2>
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-address"></span><span class="input-text">Address&#42;</span></span>
                    <input type="text" name="address" value="${form.address}"class="form-control input-lg" required placeholder="Your Address">
                    <form:errors path="address" cssClass="error_message" />
                  </div><!-- End .input-group -->
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-region"></span><span class="input-text">Region&#42;</span></span>
                    <select name="county" class="form-control input-lg" id="county" onChange="countySelected('#county')">
                      <c:if test="${countyName != null}">
                        <option value="${countyName}">${countyName}</option>
                      </c:if>
                      <option value="-">Select County</option>
                      <c:forEach items="${county}" var="county" varStatus="index">
                        <option value="${county.county}">${county.county}</option>
                      </c:forEach>
                    </select>
                    <form:errors path="county" cssClass="error_message" />
                  </div><!-- End .input-group -->
                  <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-city"></span><span class="input-text">City&#42;</span></span>
                    <select name="locality" class="form-control input-lg" id="locality">
                      <c:if test="${localityName != null}">
                        <option value="${localityName}">${localityName}</option>
                      </c:if>
                      <option value="-">Select City</option>
                      <c:if test="${locality != null}">
                        <c:forEach items="${locality}" var="locality" varStatus="index">
                          <option value="${locality.locality}">${locality.locality}</option>
                        </c:forEach>
                      </c:if>
                    </select>
                    <form:errors path="locality" cssClass="error_message" />
                  </div><!-- End .input-group -->
                 <%-- <div class="input-group">
                    <span class="input-group-addon"><span class="input-icon input-icon-postcode"></span><span class="input-text">Post Code&#42;</span></span>
                    <input type="text" required class="form-control input-lg" placeholder="Your Post Code">
                  </div>--%><!-- End .input-group -->


                </fieldset>
              </div><!-- End .col-md-6 -->

            </div><!-- End .row -->

            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <fieldset class="half-margin">
                  <h2 class="sub-title">NEWSLETTER</h2>
                  <div class="input-desc-box">
                    <input type="checkbox" name="newsletter" value="true" checked="checked"/> I wish to subscribe to the Venedor newsletter.
                    <input type="hidden" name="newsletter" value="false">
                  </div><!-- End .input-desc -->


                </fieldset>

                <input type="submit" value="CREATE MY ACCCOUNT" class="btn btn-custom-2 btn-lg md-margin">
              </div><!-- End .col-md-6 -->
            </div><!-- End .row -->
          </form:form>
        </div><!-- End .col-md-12 -->
      </div><!-- End .row -->
    </div><!-- End #container -->
  </section><!-- End #content -->
</div>

<script type="text/javascript">
  function countySelected(aaa){
    var value = $(aaa).val();

    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function(e, xhr, options) {
      xhr.setRequestHeader(header, token);
    });

    <%--console.log(value);--%>
    $.ajax({
      type:"POST",
      url:"/shop/cart/getLocality",
      data:{countyName:value},
      success:function (response)
      {
        var text = '<option value="-">-</option>\n';
        for(var i = 0 ; i < response.length ; i++ ){
          text = text + '<option value="' + response[i] + '">' + response[i] + '</option>' + '\n';
        }
        $('#locality').html(text);
      }
    });

  }
</script>


<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp"%>