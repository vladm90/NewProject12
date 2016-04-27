<%@ page import="com.springapp.handler.FBConnection" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 22.04.2016
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/pages/common.jsp"%>
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

  <!-- Favicon and Apple Icons -->
  <link rel="icon" type="image/png" href="/images/icons/icon.html">
  <link rel="apple-touch-icon" sizes="57x57" href="/images/icons/apple-icon-57x57.html">
  <link rel="apple-touch-icon" sizes="72x72" href="/images/icons/apple-icon-72x72.html">

  <!--- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
  <!--[if lt IE 9]>
  <script src="/js/html5shiv.js"></script>
  <script src="/js/respond.min.js"></script>

  <![endif]-->

  <style id="custom-style">

  </style>

  <style>

    .error {
      padding: 15px;
      margin-bottom: 0px;
      border: 1px solid transparent;
      border-radius: 4px;
      color: #a94442;
      background-color: #f2dede;
      border-color: #ebccd1;
    }
    .msg {
      padding: 15px;
      margin-bottom: 20px;
      border: 1px solid transparent;
      border-radius: 4px;
      color: #31708f;
      background-color: #d9edf7;
      border-color: #bce8f1;
    }

  </style>
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
                <li><a href="cart.html" title="My Cart"><span class="top-icon top-icon-cart"></span><span class="hide-for-xs">My Cart</span></a></li>
                <li><a href="checkout.html" title="Checkout"><span class="top-icon top-icon-check"></span><span class="hide-for-xs">Checkoaut</span></a></li>
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
                    <span class="hide-for-xs">Romana</span>
                  </button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#"><span class="flag-container"><img src="/images/england-flag.png" alt="flag of england"></span><span class="hide-for-xs">English</span></a></li>
                    <li><a href="#"><span class="flag-container"><img src="/images/romania-flag.png" alt="flag of romania"></span><span class="hide-for-xs">Romana</span></a></li>
                  </ul>
                </div><!-- End .btn-group -->
              </div><!-- End .header-top-dropdowns -->

              <div class="header-text-container pull-right">
                <c:choose>
                  <c:when test="${pageContext.request.userPrincipal.name eq null}">
                    <p class="header-text">Welcome to Venedor!</p>
                    <p class="header-link"><a href="/login">login</a>&nbsp;or&nbsp;<a href="#">create an account</a></p>
                  </c:when>
                  <c:otherwise>
                    <p class="header-link"><a href="#"><span class="glyphicon glyphicon-user"></span> Logged as <strong>${pageContext.request.userPrincipal.name}</strong></a></p>
                    <p class="header-link"><a href="javascript:formSubmit()"><span class="glyphicon glyphicon-log-out"></span> Logout</a></p>

                    <c:url value="/j_spring_security_logout" var="logoutUrl" />

                    <form action="${logoutUrl}" method="post" id="logoutForm">
                      <input type="hidden" name="${_csrf.parameterName}"
                             value="${_csrf.token}" />
                    </form>

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

                  <li>
                    <a href="#">PAGES</a>
                    <ul>
                      <li><a href="product.html">Product</a></li>
                      <li><a href="cart.html">Cart</a></li>
                      <li><a href="category.html">Category</a>
                        <ul>
                          <li><a href="category-list.html">Category list</a></li>
                          <li><a href="category.html">Category Banner 1</a></li>
                          <li><a href="category-banner-2.html">Category Banner 2</a></li>
                          <li><a href="category-banner-3.html">Category Banner 3</a></li>
                        </ul>
                      </li>
                      <li><a href="checkout.html">Checkout</a></li>
                      <li><a href="aboutus.html">About Us</a></li>
                      <li><a href="register-account.html">Register Account</a></li>
                      <li><a href="compare-products.html">Compare Products</a></li>
                      <li><a href="404.html">404 Page</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Portfolio</a>
                    <ul>
                      <li><a href="portfolio-2.html">Two Columns</a></li>
                      <li><a href="portfolio-3.html">Three Columns</a></li>
                      <li><a href="portfolio-4.html">Four Columns</a></li>
                      <li><a href="single-portfolio.html">Portfolio Post</a></li>
                    </ul>
                  </li>
                  <li><a href="blog.html">Blog</a>
                    <ul>
                      <li><a href="single.html">Blog Post</a></li>
                    </ul>
                  </li>
                  <li><a href="contact.html">Contact Us</a></li>
                </ul>

              </nav>


              <%--CART BUTTON DROP DOWN START--%>
              <div id="quick-access">
                <div class="dropdown-cart-menu-container pull-right">
                  <div class="btn-group dropdown-cart">
                    <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
                      <span class="cart-menu-icon"></span>
                      0 item(s) <span class="drop-price">- $0.00</span>
                    </button>

                    <div class="dropdown-menu dropdown-cart-menu pull-right clearfix" role="menu">
                      <p class="dropdown-cart-description">Recently added item(s).</p>
                      <ul class="dropdown-cart-product-list">
                        <li class="item clearfix">
                          <a href="#" title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
                          <a href="#" title="Edit item" class="edit-item"><i class="fa fa-pencil"></i></a>
                          <figure>
                            <a href="product.html"><img src="/images/products/thumbnails/phone2.jpg" alt="phone 2"></a>
                          </figure>
                          <div class="dropdown-cart-details">
                            <p class="item-name">
                              <a href="product.html">Iphone Case Cover Original</a>
                            </p>
                            <p>1x<span class="item-price">$499<span class="sub-price">.99</span></span></p>
                          </div><!-- End .dropdown-cart-details -->
                        </li>
                      </ul>

                      <ul class="dropdown-cart-total">
                        <li><span class="dropdown-cart-total-title">Shipping:</span>$7</li>
                        <li><span class="dropdown-cart-total-title">Total:</span>$1005<span class="sub-price">.99</span></li>
                      </ul><!-- .dropdown-cart-total -->
                      <div class="dropdown-cart-action">
                        <p><a href="cart.html" class="btn btn-custom-2 btn-block">Cart</a></p>
                        <p><a href="checkout.html" class="btn btn-custom btn-block">Checkout</a></p>
                      </div><!-- End .dropdown-cart-action -->

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
</div>