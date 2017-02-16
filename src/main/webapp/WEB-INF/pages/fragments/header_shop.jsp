<%@ page import="com.springapp.handler.FBConnection" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 22.04.2016
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/pages/fragments/common.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page session="true"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>MY SHOP</title>
  <meta name="description" content="Responsive modern ecommerce Html5 Template">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic%7CPT+Gudea:400,700,400italic%7CPT+Oswald:400,700,300' rel='stylesheet' id="googlefont">

  <meta name="_csrf" content="${_csrf.token}"/>
  <!-- default header name is X-CSRF-TOKEN -->
  <meta name="_csrf_header" content="${_csrf.headerName}"/>

  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/font-awesome.min.css">
  <link rel="stylesheet" href="/css/font-awesome.css">
  <link rel="stylesheet" href="/css/prettyPhoto.css">
  <link rel="stylesheet" href="/css/colpick.css">
  <link rel="stylesheet" href="/css/sequence-slider.css">
  <link rel="stylesheet" href="/css/owl.carousel.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/responsive.css">
  <link rel="stylesheet" href="/css/bootstrap-social.css">
  <link rel="stylesheet" href="/css/revslider.css">

  <!-- Favicon and Apple Icons -->
  <link rel="icon" type="image/png" href="/images/icons/favicon.ico">
  <link rel="apple-touch-icon" sizes="57x57" href="/images/icons/apple-icon-57x57.html">
  <link rel="apple-touch-icon" sizes="72x72" href="/images/icons/apple-icon-72x72.html">

  <!--- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>

  <!--- Modernizr is for zoom picture end hover select -->
  <script src="/js/modernizr.custom.js"></script>

  <!--[if lt IE 9]>
  <script src="/js/html5shiv.js"></script>
  <script src="/js/respond.min.js"></script>
  <![endif]-->

  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/smoothscroll.js"></script>
  <script src="/js/retina-1.1.0.min.js"></script>
  <script src="/js/jquery.placeholder.js"></script>
  <script src="/js/jquery.hoverIntent.min.js"></script>
  <script src="/js/twitter/jquery.tweet.min.js"></script>
  <script src="/js/jquery.flexslider-min.js"></script>
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/jflickrfeed.min.js"></script>
  <script src="/js/jquery.prettyPhoto.js"></script>
  <script src="/js/jquery.isotope.min.js"></script>
  <script src="/js/jquery.fitvids.js"></script>
  <script src="/js/colpick.js"></script>
  <script src="/js/jquery.elastislide.js"></script>
  <script src="/js/jquery.mlens-1.3.min.js"></script>
  <script src="/js/jquery.jscrollpane.min.js"></script>
  <script src="/js/jquery.nouislider.min.js"></script>
  <script src="/js/jquery.sequence-min.js"></script>
  <script src="/js/jquery.themepunch.plugins.min.js"></script>
  <script src="/js/jquery.themepunch.revolution.min.js"></script>
  <script src="/js/colpick.js"></script>
  <script src="/js/csrf_ajax.js"></script>
  <script src="/js/jquery.parallax-1.1.3.js"></script>



  <style id="custom-style"></style>

  <script>
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '225673607790275',
        xfbml      : true,
        version    : 'v2.6'
      });
    };

    (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script>
  <script>
    function formSubmit() {
      document.getElementById("logoutForm").submit();
    }
  </script>
  <script type="text/javascript">
    if (window.location.hash && window.location.hash == '#_=_') {
      window.location.hash = '';
    }
  </script>

  <script>
    $(function() {

      var carouselContainer = $('#product-carousel'),
              productImg =  $('#product-image');

      carouselContainer.elastislide({
        orientation : 'vertical',
        minItems : 2


      });

      productImg.mlens({
        imgSrc: $("#product-image").attr("data-big"),
        lensShape: "square",
        lensSize: 150,
        borderSize: 2,
        borderColor: "#999",
        borderRadius: 0
      });


      var oldImg = productImg.attr('src');
      carouselContainer.find('li').on('mouseover', function() {

        var newImg = $(this).find('a').attr('href');

        productImg.attr({'src': newImg, 'data-big': newImg}).trigger('imagechanged');

      });

      // triggered with custom event
      productImg.on('imagechanged', function() {
        productImg.mlens("update", 0 ,{
          imgSrc: productImg.attr("data-big"),
          lensShape: "square",
          lensSize: 150,
          borderSize: 2,
          borderColor: "#999"
        });
      });

    });
  </script>

  <script>
    $(function() {

      // Slider Revolution
      jQuery('#slider-rev').revolution({
        delay:5000,
        startwidth:1170,
        startheight:600,
        onHoverStop:"true",
        hideThumbs:250,
        navigationHAlign:"center",
        navigationVAlign:"bottom",
        navigationHOffset:0,
        navigationVOffset:12,
        soloArrowLeftHalign:"left",
        soloArrowLeftValign:"center",
        soloArrowLeftHOffset:0,
        soloArrowLeftVOffset:0,
        soloArrowRightHalign:"right",
        soloArrowRightValign:"center",
        soloArrowRightHOffset:0,
        soloArrowRightVOffset:0,
        touchenabled:"on",
        stopAtSlide:-1,
        stopAfterLoops:-1,
        dottedOverlay:"none",
        fullWidth:"on",
        shadow:0

      });

    });
  </script>

  <%--FB COMMENT--%>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=225673607790275";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  <script>
    $(function() {

      // Simple Animation for 404 text

      var container = $('.no-content-comment'),
              title = container.find('h2'),
              titleText = title.text(),
              message = container.find('h3'),
              messageText = message.text(),
              titleTextLen = titleText.length,
              messageTextLen = messageText.length,
              titleNew = '',
              messageNew = '',
              time = 50;


      function iterate(len, text, newVar, target) {
        for (var i=0 ; i < len; i++) {
          if (text[i] == '!') { // ! important for line breaks
            newVar += '<span>'+text[i]+'<br></span>'
          } else {
            newVar += '<span>'+text[i]+'</span>';
          }
        }
        target.html(newVar);
      }


      iterate(titleTextLen, titleText, titleNew, title);

      iterate(messageTextLen, messageText, messageNew, message);


      $(window).on('load', function () {

        container.find('span').each(function () {
          time +=80;
          $(this).delay(200).animate({opacity: 1}, time);
        });

      });


    });
  </script>

</head>

<body<%-- onload='document.loginForm.email.focus();'--%>>


<div id="wrapper">
  <header id="header">
    <div id="header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="header-top-left">
              <ul id="top-links" class="clearfix">
                <li><a href="#" title="My Wishlist"><span class="top-icon top-icon-pencil"></span><span class="hide-for-xs">My Wishlist</span></a></li>
                <li><a href="/account/details" title="My Account"><span class="top-icon top-icon-user"></span><span class="hide-for-xs">My Account</span></a></li>
                <li><a href="/shop/cart" title="My Cart"><span class="top-icon top-icon-cart"></span><span class="hide-for-xs">My Cart</span></a></li>
                <c:choose>
                  <c:when test="${loggedUser eq null}">
                    <li><a href="/shop/checkout?code=login" title="Checkout"><span class="top-icon top-icon-check"></span><span class="hide-for-xs">Checkout</span></a></li>
                  </c:when>
                  <c:otherwise>
                    <li><a href="/shop/checkout?code=deliveryDetails" title="Checkout"><span class="top-icon top-icon-check"></span><span class="hide-for-xs">Checkout</span></a></li>
                  </c:otherwise>
                </c:choose>
                <li><a href="/test" title="asd"><span class="top-icon top-icon-check"></span><span class="hide-for-xs">TEST</span></a></li>
              </ul>
            </div><!-- End .header-top-left -->
            <div class="header-top-right">

              <div class="header-top-dropdowns pull-right">
                <div class="btn-group dropdown-money">
                  <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
                    <span class="hide-for-xs">MONEDA</span><span class="hide-for-lg">$</span>
                  </button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#"><span class="hide-for-xs">LEI</span><span class="hide-for-lg">&euro;</span></a></li>
                    <li><a href="#"><span class="hide-for-xs">EURO</span><span class="hide-for-lg">&pound;</span></a></li>
                  </ul>
                </div><!-- End .btn-group -->
                <div class="btn-group dropdown-language">
                  <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
                    <span class="flag-container"><img src="/images/romania-flag.png" alt="flag of romania"></span>

                  </button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#"><span class="flag-container"><img src="/images/england-flag.png" alt="flag of england"></span></a></li>
                    <li><a href="#"><span class="flag-container"><img src="/images/romania-flag.png" alt="flag of romania"></span></a></li>
                  </ul>
                </div><!-- End .btn-group -->
              </div><!-- End .header-top-dropdowns -->

              <div class="header-text-container pull-right">
                <c:choose>
                  <%--pageContext.request.userPrincipal.name--%>
                  <c:when test="${loggedUser eq null}">
                    <p class="header-text">Welcome to Venedor!</p>
                    <p class="header-link"><a href="/login">login</a>&nbsp;or&nbsp;<a href="/register">create an account</a></p>
                  </c:when>
                  <c:otherwise>
                    <div class="btn-group dropdown-user">
                      <p class="header-link"><img src="${loggedUser.fbPicture}" alt="${loggedUser.firstName}" height="30" width="30">
                        <a href="#">Logged as <strong>${loggedUser.firstName} <span class="glyphicon glyphicon-collapse-down"></span></strong></a>
                      </p>
                      <ul class="dropdown-menu pull-right" role="menu">
                        <li><a href="#"><span class="hide-for-xs">plm</span><span class="hide-for-lg">plm</span></a></li>
                        <li><a href="javascript:formSubmit()"><span class="glyphicon glyphicon-log-out"></span><span class="hide-for-xs"> Logout</span><span class="hide-for-lg"> Logout</span></a></li>
                        <c:url value="/j_spring_security_logout" var="logoutUrl" />
                        <form action="${logoutUrl}" method="post" id="logoutForm">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </form>
                      </ul>
                    </div><!-- End .btn-group -->
                    <%--<p class="header-link"><img src="${loggedUser.fbPicture}" alt="${loggedUser.firstName}" height="30" width="30">
                      <a href="#">Logged as <strong>${loggedUser.firstName} </strong></a>
                      <a href="javascript:formSubmit()"><span class="glyphicon glyphicon-log-out"></span> Logout</a></p>--%>



                  </c:otherwise>
                </c:choose>
              </div><!-- End .pull-right -->
            </div><!-- End .header-top-right -->
          </div><!-- End .col-md-12 -->
        </div><!-- End .row -->
      </div><!-- End .container -->
    </div><!-- End #header-top -->

    <div id="inner-header">
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-sm-5 col-xs-12 logo-container">
            <h1 class="logo clearfix">
              <span>Responsive eCommerce Template</span>
              <a href="index-2.html" title="Venedor eCommerce Template"><img src="/images/logo.png" alt="Venedor Commerce Template" width="238" height="76"></a>
            </h1>
          </div><!-- End .col-md-5 -->
          <div class="col-md-7 col-sm-7 col-xs-12 header-inner-right">

            <div class="header-box contact-infos pull-right">
              <ul>
                <li><span class="header-box-icon header-box-icon-skype"></span>c.motoroiu</li>
                <li><span class="header-box-icon header-box-icon-email"></span><a href="mailto:c.motoroiu@yahoo.com">c.motoroiu@yahoo.com</a></li>
              </ul>
            </div><!-- End .contact-infos -->

            <div class="header-box contact-phones pull-right clearfix">
              <span class="header-box-icon header-box-icon-earphones"></span>
              <ul class="pull-left">
                <li>Cristian: +(40) 733 020 329</li>
                <li>Corina: +(40) 723 232 749</li>
              </ul>
            </div><!-- End .contact-phones -->

          </div><!-- End .col-md-7 -->
        </div><!-- End .row -->
      </div><!-- End .container -->

      <div id="main-nav-container">
        <div class="container">
          <div class="row">
            <div class="col-md-12 clearfix">

              <nav id="main-nav">
                <div id="responsive-nav">
                  <div id="responsive-nav-button">
                    Menu <span id="responsive-nav-button-icon"></span>
                  </div><!-- responsive-nav-button -->
                </div>
                <ul class="menu clearfix">
                  <li><a class="active" href="/shop">HOME</a></li>
                  <li class="mega-menu-container"><a href="/shop/products">PRODUCTS</a>
                    <div class="mega-menu clearfix">
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Clothing</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Jeans &amp; Trousers</a></li>
                          <li><a href="#">Blouses &amp; Shirts</a></li>
                          <li><a href="#">Tops &amp; T-Shirts</a></li>
                          <li><a href="#">Jackets &amp; Coats</a></li>
                          <li><a href="#">Skirts</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Shoes</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Formal Shoes</a></li>
                          <li><a href="#">Casual Shoes</a></li>
                          <li><a href="#">Sandals</a></li>
                          <li><a href="#">Boots</a></li>
                          <li><a href="#">Wide Fit</a></li>
                          <li><a href="#">Slippers</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Accessories</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Bags &amp; Purses</a></li>
                          <li><a href="#">Belts</a></li>
                          <li><a href="#">Gloves</a></li>
                          <li><a href="#">Jewellery</a></li>
                          <li><a href="#">Sunglasses</a></li>
                          <li><a href="#">Hair Accessories</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Sports</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Sport Tops &amp; Vests</a></li>
                          <li><a href="#">Swimwear</a></li>
                          <li><a href="#">Footwear</a></li>
                          <li><a href="#">Sports Underwear</a></li>
                          <li><a href="#">Bags</a></li>
                        </ul>
                      </div><!-- End .col-5 -->

                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Maternity</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Tops &amp; Skirts</a></li>
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Trousers &amp; Shorts</a></li>
                          <li><a href="#">Knitwear</a></li>
                          <li><a href="#">Jackets &amp; Coats</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                    </div><!-- End .mega-menu -->
                  </li>

                  <li><a href="/shop/gallery">Gallery</a></li>
                  <li><a href="/shop/aboutus">About Us</a></li>
                  <li><a href="/shop/contact">Contact Us</a></li>
                </ul>

              </nav>


              <%--CART BUTTON DROP DOWN START--%>
              <div id="quick-access">
                <div class="dropdown-cart-menu-container pull-right">
                  <div class="btn-group dropdown-cart">
                      <c:set var="totalPrice" value="0"/>
                      <c:forEach items="${cart}" var="cart" varStatus="rowCounter">
                      <c:set var="totalPrice" value="${totalPrice + (cart.quantity * cart.product.price)}"/>
                      </c:forEach>

                       <spring:url value="/shop/cart" var="showCart" />
                      <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown" onclick="location.href='${showCart}'">
                        <span class="cart-menu-icon"></span>${fn:length(cart)} item(s) <span class="drop-price">- ${totalPrice} Lei</span>
                      </button>

                      <div class="dropdown-menu dropdown-cart-menu pull-right clearfix" role="menu">
                       <c:choose>
                         <c:when test="${fn:length(cart) == 0}">
                           <p class="dropdown-cart-description">No products in the cart.</p>
                         </c:when>
                         <c:otherwise>
                           <p class="dropdown-cart-description">Recently added item(s).</p>
                           <ul class="dropdown-cart-product-list">
                             <c:forEach items="${cart}" var="cart" varStatus="rowCounter">
                               <li class="item clearfix">
                                 <a href="/shop/cart/delete?productId=${cart.product.id}" title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
                               <%--  <a href="#" title="Edit item" class="edit-item"><i class="fa fa-pencil"></i></a>--%>
                                 <figure>
                                   <a href="/shop/productDetail?product_id=${cart.product.id}"><img src="${cart.product.picture}" alt="${cart.product.name}"></a>
                                 </figure>
                                 <div class="dropdown-cart-details">
                                   <p class="item-name">
                                     <a href="/shop/productDetail?product_id=${cart.product.id}">${cart.product.name}</a>
                                   </p>
                                   <p>${cart.quantity} x <span class="item-price">${cart.product.price} Lei</span></p>
                                 </div><!-- End .dropdown-cart-details -->
                               </li>
                             </c:forEach>
                           </ul>

                           <ul class="dropdown-cart-total">
                             <li><span class="dropdown-cart-total-title">Shipping:</span>Select City</li>
                             <li><span class="dropdown-cart-total-title">Total:</span>${totalPrice} Lei<span class="sub-price"></span></li>
                           </ul><!-- .dropdown-cart-total -->
                           <div class="dropdown-cart-action">
                             <p><a href="/shop/cart" class="btn btn-custom-2 btn-block">Cart</a></p>
                             <p>
                               <c:choose>
                                 <c:when test="${loggedUser eq null}">
                                   <a href="/shop/checkout?code=login" class="btn btn-custom btn-block">CHECKOUT</a>
                                 </c:when>
                                 <c:otherwise>
                                   <a href="/shop/checkout?code=deliveryDetails" class="btn btn-custom btn-block">CHECKOUT</a>
                                 </c:otherwise>
                               </c:choose>
                             </p>
                           </div><!-- End .dropdown-cart-action -->
                          </c:otherwise>
                        </c:choose>
                    </div><!-- End .dropdown-cart -->
                  </div><!-- End .btn-group -->
                </div><!-- End .dropdown-cart-menu-container -->
                <%--CART BUTTON DROP DOWN END--%>


                <%--SEARCH BUTTON--%>
                <form class="form-inline quick-search-form" role="form" action="#">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search here">
                  </div><!-- End .form-inline -->
                  <button type="submit" id="quick-search" class="btn btn-custom"></button>
                </form>
              </div><!-- End #quick-access -->
            </div><!-- End .col-md-12 -->
          </div><!-- End .row -->
        </div><!-- End .container -->

      </div><!-- End #nav -->
    </div><!-- End #inner-header -->
  </header><!-- End #header -->


    <div id="breadcrumb-container">
      <div class="container">
        <ul class="breadcrumb">
          <li><a href="index-2.html">Home</a></li>
          <li class="active">Product</li>
        </ul>
      </div>
    </div>

</div>
