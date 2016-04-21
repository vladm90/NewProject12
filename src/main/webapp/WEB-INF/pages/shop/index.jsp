<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8"> <![endif]-->
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Venedor - Responsive eCommerce Template</title>
        <meta name="description" content="Responsive modern ecommerce Html5 Template">
        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic%7CPT+Gudea:400,700,400italic%7CPT+Oswald:400,700,300' rel='stylesheet' id="googlefont">
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/prettyPhoto.css">
        <link rel="stylesheet" href="css/colpick.css">
        <link rel="stylesheet" href="css/sequence-slider.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
        
        <!-- Favicon and Apple Icons -->
        <link rel="icon" type="image/png" href="images/icons/icon.html">
        <link rel="apple-touch-icon" sizes="57x57" href="images/icons/apple-icon-57x57.html">
        <link rel="apple-touch-icon" sizes="72x72" href="images/icons/apple-icon-72x72.html">
        
        <!--- jQuery -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
        <script type="text/javascript">if (window.location.hash == '#_=_')window.location.hash = '';</script>
		<style id="custom-style">
		
		</style>
    </head>
    <body>

    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>




    <!--trebuie pus doar in admin- pannel frontend--!>
    <div id="option-panel">
        <div id="option-panel-wrapper">
            <div id="option-panel-btn"></div><!-- End #option-panel-btn -->
            
        <div id="option-panel-container">
            <ul id="option-panel-tabs-container" class="clearfix">
                <li class="active"><a href="#panel-layout" data-toggle="tab" data-panel-title="Layout"></a></li>
                <li><a href="#panel-home" data-toggle="tab" data-panel-title="Background Settings"></a></li>
                <li><a href="#panel-color" data-toggle="tab" data-panel-title="Color Settings" ></a></li>
                <li><a href="#panel-font" data-toggle="tab" data-panel-title="Font Settings"></a></li>
                <li><a id="option-close" href="#"></a></li>
            </ul>
            <div id="option-panel-title" class="clearfix">
                <span>Layout</span>
                <a href="#" id="option-panel-reset">Reset</a>
            </div>
            <div id="option-panel-content" class="tab-content">
                <div class="tab-pane fade in active" id="panel-layout">
                    <div id="panel-option-layout" class="panel-group custom-accordion sm-accordion">
                        <div class="panel">
                                <div class="accordion-header">
                                    <div class="accordion-title"><span>Layout</span></div><!-- End .accordion-title -->
                        <a class="accordion-btn opened"  data-toggle="collapse" data-target="#document-layout" data-parent="#panel-option-layout"></a>
                                </div><!-- End .accordion-header -->
                                
                            <div id="document-layout" class="collapse in">
                                <div class="panel-body">
                                    <ul class="layout-style-list clearfix">
                                        <li data-layout="fullwidth"><img src="images/panel/fullwidth.png" alt="Fullwidth">
                                            <p>Fullwidth</p></li>
                                        <li data-layout="boxed"><img src="images/panel/boxed.png" alt="Boxed">
                                            <p>Boxed</p></li>
                                    </ul>
                                </div><!-- End .panel-body -->
                            </div><!-- #collapse -->
                        </div><!-- End .panel -->
                        
                    </div><!-- .panel-group -->
                </div><!-- End .tab-pane -->
                <div class="tab-pane fade" id="panel-home">
                    <div id="panel-home-accordion" class="panel-group custom-accordion sm-accordion">
                        <div class="panel">
                                <div class="accordion-header">
                                    <div class="accordion-title"><span>Basic Color</span></div><!-- End .accordion-title -->
                        <a class="accordion-btn opened"  data-toggle="collapse" data-target="#body-background-color" data-parent="#panel-home-accordion"></a>
                                </div><!-- End .accordion-header -->
                                
                            <div id="body-background-color" class="collapse in">
                                <div class="panel-body">
                                    <div id="panel-color-picker">
                                        
                                    </div><!-- End #panel-color-picker -->
                                </div><!-- End .panel-body -->
                            </div><!-- #collapse -->
                        </div><!-- End .panel -->

                        <div class="panel">
                                <div class="accordion-header">
                                    <div class="accordion-title"><span>Patterns</span></div><!-- End .accordion-title -->
                        <a class="accordion-btn"  data-toggle="collapse"  data-target="#body-background-pattern" data-parent="#panel-home-accordion"></a>
                                </div><!-- End .accordion-header -->
                                
                            <div id="body-background-pattern" class="collapse">
                                <div class="panel-body">
                                    <ul class="clearfix pattern-box-list">
                                        <li><img data-src="images/patterns/pattern1.png" src="images/patterns/pattern1.png" alt="pattern 1"></li>
                                        <li><img data-src="images/patterns/pattern2.png" src="images/patterns/pattern2.png" alt="pattern 2"></li>
                                        <li><img data-src="images/patterns/pattern3.png" src="images/patterns/pattern3.png" alt="pattern 3"></li>
                                        <li><img data-src="images/patterns/pattern4.png" src="images/patterns/pattern4.png" alt="pattern 4"></li>
                                        <li><img data-src="images/patterns/pattern5.png" src="images/patterns/pattern5.png" alt="pattern 5"></li>
                                        <li><img data-src="images/patterns/pattern6.png" src="images/patterns/pattern6.png" alt="pattern 6"></li>
                                        <li><img data-src="images/patterns/pattern7.png" src="images/patterns/pattern7.png" alt="pattern 7"></li>
                                        <li><img data-src="images/patterns/pattern8.png" src="images/patterns/pattern8.png" alt="pattern 8"></li>
                                        <li><img data-src="images/patterns/pattern9.png" src="images/patterns/pattern9.png" alt="pattern 9"></li>
                                        <li><img data-src="images/patterns/pattern10.png" src="images/patterns/pattern10.png" alt="pattern 10"></li>
                                        <li><img data-src="images/patterns/pattern11.png" src="images/patterns/pattern11.png" alt="pattern 11"></li>
                                        <li><img data-src="images/patterns/pattern12.png" src="images/patterns/pattern12.png" alt="pattern 12"></li>
                                        <li><img data-src="images/patterns/pattern13.png" src="images/patterns/pattern13.png" alt="pattern 13"></li>
                                        <li><img data-src="images/patterns/pattern14.png" src="images/patterns/pattern14.png" alt="pattern 14"></li>
                                        <li><img data-src="images/patterns/pattern15.png" src="images/patterns/pattern15.png" alt="pattern 15"></li>
                                        <li><img data-src="images/patterns/pattern16.png" src="images/patterns/pattern16.png" alt="pattern 16"></li>
                                        <li><img data-src="images/patterns/pattern17.png" src="images/patterns/pattern17.png" alt="pattern 17"></li>
                                        <li><img data-src="images/patterns/pattern18.png" src="images/patterns/pattern18.png" alt="pattern 18"></li>
                                        <li><img data-src="images/patterns/pattern19.png" src="images/patterns/pattern19.png" alt="pattern 19"></li>
                                        <li><img data-src="images/patterns/pattern20.png" src="images/patterns/pattern20.png" alt="pattern 20"></li>
                                        <li><img data-src="images/patterns/pattern21.png" src="images/patterns/pattern21.png" alt="pattern 21"></li>
                                        <li><img data-src="images/patterns/pattern22.png" src="images/patterns/pattern22.png" alt="pattern 22"></li>
                                        <li><img data-src="images/patterns/pattern23.png" src="images/patterns/pattern23.png" alt="pattern 23"></li>
                                        <li><img data-src="images/patterns/pattern24.png" src="images/patterns/pattern24.png" alt="pattern 24"></li>
                                        <li><img data-src="images/patterns/pattern25.png" src="images/patterns/pattern25.png" alt="pattern 25"></li>
                                        <li><img data-src="images/patterns/pattern26.png" src="images/patterns/pattern26.png" alt="pattern 26"></li>
                                        <li><img data-src="images/patterns/pattern27.png" src="images/patterns/pattern27.png" alt="pattern 27"></li>
                                        <li><img data-src="images/patterns/pattern28.png" src="images/patterns/pattern28.png" alt="pattern 28"></li>
                                        <li><img data-src="images/patterns/pattern29.png" src="images/patterns/pattern29.png" alt="pattern 29"></li>
                                        <li><img data-src="images/patterns/pattern30.png" src="images/patterns/pattern30.png" alt="pattern 30"></li>

                                    </ul>
                                </div><!-- End .panel-body -->
                            </div><!-- #collapse -->
                        </div><!-- End .panel -->
                    </div><!-- .panel-group -->
                </div><!-- End .tab-pane -->
                
                <div class="tab-pane fade" id="panel-color">
                    <div id="panel-color-accordion" class="panel-group custom-accordion sm-accordion">
                    <div class="panel">
                            <div class="accordion-header">
                                <div class="accordion-title"><span>Green Mode</span></div><!-- End .accordion-title -->
                                <a class="accordion-btn opened"  data-toggle="collapse"  data-target="#color-mode" data-parent="#panel-color-accordion"></a>
                            </div><!-- End .accordion-header -->

                        <ul class="colorbox-list clearfix collapse in" id="color-mode">
                            <li>
                                <div class="color-box first-color">
                                    <span></span>
                                </div>
                                <p>First Color</p>
                            </li>
                            <li>
                                <div class="color-box second-color">
                                    <span></span>
                                </div>
                                <p>Second Color</p>
                            </li>
                            <li>
                                <div class="color-box third-color">
                                    <span></span>
                                </div>
                                <p>Third Color</p>
                            </li>
                            <li>
                                <div class="color-box fourth-color">
                                    <span></span>
                                </div>
                                <p>Fourth Color</p>
                            </li>
                        </ul>
                    </div><!-- .panel -->
                </div><!-- #panel-color-accordion -->
                </div><!-- End .tab-pane -->
                <div class="tab-pane fade" id="panel-font">
                     <div id="panel-font-accordion" class="panel-group custom-accordion sm-accordion">
                        <div class="panel">
                            <div class="accordion-header">
                                <div class="accordion-title"><span>First Font</span></div><!-- End .accordion-title -->
                                <a class="accordion-btn opened"  data-toggle="collapse"  data-target="#first-font-container" data-parent="#panel-font-accordion"></a>
                            </div><!-- End .accordion-header -->
                            <div class="collapse in" id="first-font-container">
                                <select class="form-control" name="first-font" id="first-font">
                                    <option value="Arial">Arial</option>
                                    <option value="Open Sans">Open Sans</option>
                                    <option value="PT Sans">PT Sans</option>
                                    <option value="Lato">Lato</option>
                                    <option value="Roboto">Roboto</option>
                                    <option value="Droid Sans">Droid Sans</option>
                                    <option value="Ubuntu">Ubuntu</option>
                                    <option value="Arvo">Arvo</option>
                                    <option value="Droid Serif">Ubuntu</option>
                                    <option value="Nunito">Nunito</option>
                                </select>
                            </div><!-- End #first-font-container -->
                        </div><!-- .panel -->
                        
                        <div class="panel">
                            <div class="accordion-header">
                                <div class="accordion-title"><span>Second Font</span></div><!-- End .accordion-title -->
                                <a class="accordion-btn"  data-toggle="collapse"  data-target="#second-font-container" data-parent="#panel-font-accordion"></a>
                            </div><!-- End .accordion-header -->
                            <div class="collapse" id="second-font-container">
                                <select class="form-control" name="second-font" id="second-font">
                                    <option value="Oswald">Oswald</option>
                                    <option value="Gudea">Gudea</option>
                                    <option value="Open Sans">Open Sans</option>
                                    <option value="PT Sans">PT Sans</option>
                                    <option value="Lato">Lato</option>
                                    <option value="Roboto">Roboto</option>
                                    <option value="Droid Sans">Droid Sans</option>
                                    <option value="Ubuntu">Ubuntu</option>
                                    <option value="Arvo">Arvo</option>
                                    <option value="Droid Serif">Droid Serif</option>
                                    <option value="Nunito">Nunito</option>
                                </select>
                            </div><!-- End #second-font-container -->
                        </div><!-- .panel -->

                        <div class="panel">
                            <div class="accordion-header">
                                <div class="accordion-title"><span>Third Font</span></div><!-- End .accordion-title -->
                                <a class="accordion-btn"  data-toggle="collapse"  data-target="#third-font-container" data-parent="#panel-font-accordion"></a>
                            </div><!-- End .accordion-header -->
                            <div class="collapse" id="third-font-container">
                                <select class="form-control" name="third-font" id="third-font">
                                    <option value="PT Sans">PT Sans</option>
                                    <option value="Gudea">Gudea</option>
                                    <option value="Open Sans">Open Sans</option>
                                    <option value="Lato">Lato</option>
                                    <option value="Roboto">Roboto</option>
                                    <option value="Droid Sans">Droid Sans</option>
                                    <option value="Ubuntu">Ubuntu</option>
                                    <option value="Arvo">Arvo</option>
                                    <option value="Droid Serif">Droid Serif</option>
                                    <option value="Nunito">Nunito</option>
                                </select>
                            </div><!-- End #third-font-container -->
                        </div><!-- .panel -->
                         <div class="panel">
                            <div class="accordion-header">
                                <div class="accordion-title"><span>Fourth Font</span></div><!-- End .accordion-title -->
                                <a class="accordion-btn"  data-toggle="collapse"  data-target="#fourth-font-container" data-parent="#panel-font-accordion"></a>
                            </div><!-- End .accordion-header -->
                            <div class="collapse" id="fourth-font-container">
                                <select class="form-control" name="fourth-font" id="fourth-font">
                                    <option value="Gudea">Gudea</option>
                                    <option value="Open Sans">Open Sans</option>
                                    <option value="PT Sans">PT Sans</option>
                                    <option value="Lato">Lato</option>
                                    <option value="Roboto">Roboto</option>
                                    <option value="Droid Sans">Droid Sans</option>
                                    <option value="Ubuntu">Ubuntu</option>
                                    <option value="Arvo">Arvo</option>
                                    <option value="Droid Serif">Droid Serif</option>
                                    <option value="Nunito">Nunito</option>
                                </select>
                            </div><!-- End #fourth-font-container -->
                        </div><!-- .panel -->

                    </div><!-- End .panel-font-accordion -->
                </div><!-- End .tab-pane -->
            </div><!-- End .tab-content -->
        </div><!-- End #option-panel-container -->
            

        </div><!-- End #option-panel-wrapper -->
        
    </div><!-- End #option panel -->

    <div id="wrapper">
    	<header id="header">
    		<div id="header-top">
    			<div class="container">
    				<div class="row">
                        <div class="col-md-12">
        					<div class="header-top-left">
        						<ul id="top-links" class="clearfix">
        							<li><a href="#" title="My Wishlist"><span class="top-icon top-icon-pencil"></span><span class="hide-for-xs">My Wishlist</span></a></li>
        							<li><a href="#" title="My Account"><span class="top-icon top-icon-user"></span><span class="hide-for-xs">My Account</span></a></li>
        							<li><a href="cart.html" title="My Cart"><span class="top-icon top-icon-cart"></span><span class="hide-for-xs">My Cart</span></a></li>
        							<li><a href="checkout.html" title="Checkout"><span class="top-icon top-icon-check"></span><span class="hide-for-xs">Checkout</span></a></li>
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
    										<span class="flag-container"><img src="images/romania-flag.png" alt="flag of romania"></span>
    										<span class="hide-for-xs">Romana</span>
    									</button>
    									<ul class="dropdown-menu pull-right" role="menu">
    										<li><a href="#"><span class="flag-container"><img src="images/england-flag.png" alt="flag of england"></span><span class="hide-for-xs">English</span></a></li>
    										<li><a href="#"><span class="flag-container"><img src="images/romania-flag.png" alt="flag of romania"></span><span class="hide-for-xs">Romana</span></a></li>
    										<li><a href="#"><span class="flag-container"><img src="images/france-flag.png" alt="flag of france"></span><span class="hide-for-xs">French</span></a></li>
    										<li><a href="#"><span class="sm-separator"><img src="images/germany-flag.png" alt="flag of germany"></span><span class="hide-for-xs">German</span></a></li>
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

                                        </c:otherwise>
                                    </c:choose>
                                    <form action="${logoutUrl}" method="post" id="logoutForm">
                                        <input type="hidden" name="${_csrf.parameterName}"
                                               value="${_csrf.token}" />
                                    </form>
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
								<a href="index-2.html" title="Venedor eCommerce Template"><img src="images/logo.png" alt="Venedor Commerce Template" width="238" height="76"></a>
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
    									<li>
											<a class="active" href="index-2.html">HOME</a>
											<ul>
												<li><a href="index-2.html">Home 1</a></li>
												<li><a href="../blue/index-2.html">Home 2</a></li>
												<li><a href="../orange/index-2.html">Home 3</a></li>
                                                <li><a href="../pink/index-2.html">Home 4</a></li>
											</ul>
										</li>
										<li class="mega-menu-container"><a href="#">SHOP</a>
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
														<a href="product.html"><img src="images/products/thumbnails/phone4.jpg" alt="phone 4"></a>
													</figure>
													<div class="dropdown-cart-details">
														<p class="item-name">
														<a href="product.html">Cam Optia AF Webcam </a>
														</p>
														<p>
															1x
															<span class="item-price">$499</span>
														</p>
													</div><!-- End .dropdown-cart-details -->
												</li>
												<li class="item clearfix">
												<a href="#" title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
												<a href="#" title="Edit item" class="edit-item"><i class="fa fa-pencil"></i></a>
													<figure>
														<a href="product.html"><img src="images/products/thumbnails/phone2.jpg" alt="phone 2"></a>
													</figure>
													<div class="dropdown-cart-details">
														<p class="item-name">
															<a href="product.html">Iphone Case Cover Original</a>
														</p>
														<p>
															1x
															<span class="item-price">$499<span class="sub-price">.99</span></span>
														</p>
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

        <section id="content">
        	
        	<div id="slider-sequence" class="homeslider">
        		<div class="sequence-prev"></div><!-- End sequence-prev-->
        		<div class="sequence-next"></div><!-- End sequence-next-->
        		<ul class="sequence-canvas">
        			<li class="sequence-slide1">
        				<div class="sequencebg">
        					<img src="images/homeslider/slide1.png" alt="Slide 1 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<img src="images/homeslider/slide1_1.png" alt="Model 1" class="sequence-model">
        					<div class="sequence-title">Special offer -25%</div>
        					<div class="sequence-subtitle">Performance &amp; Design. Taken right to the edge.</div>
        					<a href="#" class="btn btn-custom-2 btn-sequence">Learn More</a>
        				</div><!-- End .sequence-container -->
        			</li>
        			
        			<li class="sequence-slide2">
        				<div class="sequencebg">
        					<img src="images/homeslider/slide2.jpg" alt="Slide 2 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<div class="sequence-price">$1250</div>
        					<img src="images/homeslider/slide2_2.png" alt="Model 2" class="sequence-model">
        					<img src="images/homeslider/slide2_1.png" alt="Model 1" class="sequence-model2">
        					<div class="sequence-title">The next big thing...</div>
        					<div class="sequence-subtitle">Take, view and share photos with the 13MP camera and stunning 5" display.</div>
        					<a href="#" class="btn btn-custom-2 btn-sequence">Learn More</a>
        				</div><!-- End .sequence-container -->
        			</li>
        			
        			<li class="sequence-slide3">
        				<div class="sequencebg">
        					<img src="images/homeslider/slide3.jpg" alt="Slide 3 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<img src="images/homeslider/slide3_1.png" alt="Model 3" class="sequence-model">
        					<div class="sequence-title">Control. Navigate. Be Recognized.</div>
        					<div class="sequence-subtitle">Smart Interaction lets you interact with your TV as never before.</div>
        					<a href="#" class="btn btn-custom-2 btn-sequence">Learn More</a>
        					<img src="images/homeslider/slide3_4.png" alt="Mobile phone" class="sequence-phone">
        					<img src="images/homeslider/slide3_2.png" alt="Tablet" class="sequence-tablet">
        					<img src="images/homeslider/slide3_3.png" alt="Screen" class="sequence-screen">
        				</div><!-- End .sequence-container -->
        			</li>
        		</ul>
        		
					<ul class="sequence-pagination">
						<li>Frame 1</li>
						<li>Frame 2</li>
						<li>Frame 3</li>
					</ul>
        	</div><!-- End #slider-sequence -->
        	
        	
        	<div class="md-margin2x"></div><!-- Space -->
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				
        				<div class="row">
        					
        					<div class="col-md-9 col-sm-8 col-xs-12 main-content">
        						<header class="content-title">
									<h2 class="title">Our Products</h2>
									<p class="title-desc">Save your money and time with our store. Here's the best part of our impressive assortment.</p>
								</header>
        						<ul id="products-tabs-list" class="tab-style-1 clearfix">
        							<li class="active"><a href="#all" data-toggle="tab">All</a></li>
        							<li><a href="#latest" data-toggle="tab">Latest</a></li>
        							<li><a href="#featured" data-toggle="tab">Featured</a></li>
        							<li><a href="#bestsellers" data-toggle="tab">Bestsellers</a></li>
        							<li><a href="#special" data-toggle="tab">Special</a></li>
        						</ul>
        						
        						<div id="products-tabs-content" class="row tab-content">
        							<div class="tab-pane active" id="all">
									<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
												<div class="item-image-container">
													<figure>
													<a href="product.html">
														<img src="images/products/phone1.jpg" alt="Phone 1" class="item-image">
														<img src="images/products/phone1-hover.jpg" alt="Phone 1 Hover" class="item-image-hover">
													</a>
													</figure>
													<div class="item-price-container">
														<span class="old-price">$160</span>
														<span class="item-price">$120</span>
													</div>
													<span class="new-rect">New</span>
													<span class="discount-rect">-30%</span>
												</div><!-- End .item-image -->
											
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="90"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone2.jpg" alt="Phone 2" class="item-image">
													<img src="images/products/phone2-hover.jpg" alt="Phone 2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$199</span>
												</div>
												<span class="discount-rect">-30%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="80"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone3.jpg" alt="Phone 3" class="item-image">
													<img src="images/products/phone3-hover.jpg" alt="Phone 3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$99<span class="sub-price">.75</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/headphones1.jpg" alt="Headphones 1" class="item-image">
													<img src="images/products/headphones1-hover.jpg" alt="Headphones 1 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$79<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone4.jpg" alt="Phone 4" class="item-image">
													<img src="images/products/phone4-hover.jpg" alt="Phone 4 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$120</span>
												</div>
												<span class="discount-rect">-20%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="60"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        								
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone5.jpg" alt="Phone 5" class="item-image">
													<img src="images/products/phone5-hover.jpg" alt="Phone 5 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
        											<span class="old-price">$110<span class="sub-price">.99</span></span>
													<span class="item-price">$95<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-15%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="40"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							</div><!-- End .tab-pane -->
        							
        							<div class="tab-pane" id="latest">
        								<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item1.jpg" alt="item1" class="item-image">
													<img src="images/products/item1-hover.jpg" alt="item1  Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
        											<span class="old-price">$210<span class="sub-price">.99</span></span>
													<span class="item-price">$180<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-15%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="70"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item2.jpg" alt="item2" class="item-image">
													<img src="images/products/item2-hover.jpg" alt="item2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$110<span class="sub-price">.991</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item3.jpg" alt="item3" class="item-image">
													<img src="images/products/item3-hover.jpg" alt="item3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
        											<span class="old-price">$100</span>
													<span class="item-price">$75</span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-25%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="90"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone2.jpg" alt="Phone 2" class="item-image">
													<img src="images/products/phone2-hover.jpg" alt="Phone 2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$199</span>
												</div>
												<span class="discount-rect">-30%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="80"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone3.jpg" alt="Phone 3" class="item-image">
													<img src="images/products/phone3-hover.jpg" alt="Phone 3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$99<span class="sub-price">.75</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/headphones1.jpg" alt="Headphones 1" class="item-image">
													<img src="images/products/headphones1-hover.jpg" alt="Headphones 1 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$79<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							</div><!-- End .tab-pane -->
        							
        							<div class="tab-pane" id="featured">
									<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item3.jpg" alt="item3" class="item-image">
													<img src="images/products/item3-hover.jpg" alt="item3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$160<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="95"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												1 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone1.jpg" alt="Phone 1" class="item-image">
													<img src="images/products/phone1-hover.jpg" alt="Phone 1 Hover" class="item-image-hover">
												</a>
											</figure>
												<div class="item-price-container">
													<span class="old-price">$160</span>
													<span class="item-price">$120</span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-20%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="90"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone2.jpg" alt="Phone 2" class="item-image">
													<img src="images/products/phone2-hover.jpg" alt="Phone 2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$199</span>
												</div>
												<span class="discount-rect">-30%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="80"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone2.jpg" alt="Phone 2" class="item-image">
													<img src="images/products/phone2-hover.jpg" alt="Phone 2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$199</span>
												</div>
												<span class="discount-rect">-30%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="80"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone3.jpg" alt="Phone 3" class="item-image">
													<img src="images/products/phone3-hover.jpg" alt="Phone 3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$99<span class="sub-price">.75</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/headphones1.jpg" alt="Headphones 1" class="item-image">
													<img src="images/products/headphones1-hover.jpg" alt="Headphones 1 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$79<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							</div><!-- End .tab-pane -->
        							<div class="tab-pane" id="bestsellers">
        								<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item1.jpg" alt="item1" class="item-image">
													<img src="images/products/item1-hover.jpg" alt="item1  Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
        											<span class="old-price">$210<span class="sub-price">.99</span></span>
													<span class="item-price">$16<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-15%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="70"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item2.jpg" alt="item2" class="item-image">
													<img src="images/products/item2-hover.jpg" alt="item2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$110<span class="sub-price">.991</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item3.jpg" alt="item3" class="item-image">
													<img src="images/products/item3-hover.jpg" alt="item3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
        											<span class="old-price">$100</span>
													<span class="item-price">$75</span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-25%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="90"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone2.jpg" alt="Phone 2" class="item-image">
													<img src="images/products/phone2-hover.jpg" alt="Phone 2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$199</span>
												</div>
												<span class="discount-rect">-30%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="80"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone3.jpg" alt="Phone 3" class="item-image">
													<img src="images/products/phone3-hover.jpg" alt="Phone 3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$99<span class="sub-price">.75</span></span>
												</div>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/headphones1.jpg" alt="Headphones 1" class="item-image">
													<img src="images/products/headphones1-hover.jpg" alt="Headphones 1 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$79<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							</div><!-- End .tab-pane -->
        							<div class="tab-pane" id="special">
        								<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item3.jpg" alt="item3" class="item-image">
													<img src="images/products/item3-hover.jpg" alt="item3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$160<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="95"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												1 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone1.jpg" alt="Phone 1" class="item-image">
													<img src="images/products/phone1-hover.jpg" alt="Phone 1 Hover" class="item-image-hover">
												</a>
											</figure>
												<div class="item-price-container">
													<span class="old-price">$160</span>
													<span class="item-price">$120</span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-20%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="90"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone2.jpg" alt="Phone 2" class="item-image">
													<img src="images/products/phone2-hover.jpg" alt="Phone 2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$199</span>
												</div>
												<span class="discount-rect">-30%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="80"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone2.jpg" alt="Phone 2" class="item-image">
													<img src="images/products/phone2-hover.jpg" alt="Phone 2 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$199</span>
												</div>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="80"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone3.jpg" alt="Phone 3" class="item-image">
													<img src="images/products/phone3-hover.jpg" alt="Phone 3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$99<span class="sub-price">.75</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							
        							<div class="col-md-4 col-sm-6 col-xs-12">
        								<div class="item">
        									
        									<div class="item-image-container">
											<figure>	
												<a href="product.html">
													<img src="images/products/headphones1.jpg" alt="Headphones 1" class="item-image">
													<img src="images/products/headphones1-hover.jpg" alt="Headphones 1 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$79<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							</div><!-- End .tab-pane -->
        						</div><!-- End #products-tabs-content -->
        						
        						<div class="sm-margin"></div><!-- Space -->
								<div class="row">
									<div class="col-md-7 col-sm-7 col-xs-12">
                                        <header class="content-title">
                                            <h2 class="title">Welcome to Venedor</h2>
                                        </header>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Venedor is a fully responsive Magento theme with advanced admin module. Based on Bootstrap’s 12 column 1200px responsive grid Theme. Great looks on desktops, tablets and mobiles. <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Venedor is extremely customizable, easy to use and fully responsive. Suitable for every type of store. Great as a starting point for your custom projects. This theme includes several extensions including ajax price slider that will help you improve your sales. We supply a full help with our products and after purchase support to all our customers. <a href="#">Buy Venedor Theme!</a></p>
									</div><!-- End .col-md-7 -->
									<div class="col-md-5 col-sm-5 col-xs-12">
                                        <div class="sm-margin visible-xs"></div><!-- space -->
										<img src="images/showcase.png" alt="Showcase Venedor" class="img-responsive">
									</div><!-- End .col-md-5 -->
								</div><!-- End .row -->
        						<div class="xlg-margin"></div><!-- Space -->
        						
        						<div class="hot-items carousel-wrapper">
        							<header class="content-title">
										<div class="title-bg">
											<h2 class="title">On Sale</h2>
										</div><!-- End .title-bg -->
										<p class="title-desc">Only with us you can get a new model with a discount.</p>
									</header>

                                <div class="carousel-controls">
                                    <div id="hot-items-slider-prev" class="carousel-btn carousel-btn-prev">
                                    </div><!-- End .carousel-prev -->
                                    <div id="hot-items-slider-next" class="carousel-btn carousel-btn-next carousel-space">
                                    </div><!-- End .carousel-next -->
                                </div><!-- End .carousel-controls -->
        						<div class="hot-items-slider owl-carousel">

        									<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item3.jpg" alt="item3" class="item-image">
													<img src="images/products/item3-hover.jpg" alt="item3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$160<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-10%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="95"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												1 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->

        									<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/phone3.jpg" alt="Phone 3" class="item-image">
													<img src="images/products/phone3-hover.jpg" alt="Phone 3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$99<span class="sub-price">.75</span></span>
												</div>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        									</div><!-- End .item -->
        									<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/headphones1.jpg" alt="Headphones 1" class="item-image">
													<img src="images/products/headphones1-hover.jpg" alt="Headphones 1 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$79<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->

        									<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item3.jpg" alt="item3" class="item-image">
													<img src="images/products/item3-hover.jpg" alt="item3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
        											<span class="old-price">$100</span>
													<span class="item-price">$75</span>
												</div>
												<span class="new-rect">New</span>
												<span class="discount-rect">-25%</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="90"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												3 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->

        									<div class="item">
        									
        									<div class="item-image-container">
											<figure>
												<a href="product.html">
													<img src="images/products/item3.jpg" alt="item3" class="item-image">
													<img src="images/products/item3-hover.jpg" alt="item3 Hover" class="item-image-hover">
												</a>
											</figure>
        										<div class="item-price-container">
													<span class="item-price">$180<span class="sub-price">.99</span></span>
												</div>
												<span class="new-rect">New</span>
        									</div><!-- End .item-image -->
        									<div class="item-meta-container">
        										<div class="ratings-container">
        											<div class="ratings">
        												<div class="ratings-result" data-result="95"></div>
        											</div><!-- End .ratings -->
        											<span class="ratings-amount">
        												2 Reviews
        											</span>
        										</div><!-- End .rating-container -->
        										<h3 class="item-name"><a href="product.html">Lorem Ipsum Dolla</a></h3>
        										<div class="item-action">
        											<a href="#" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
        											<div class="item-action-inner">
        												<a href="#" class="icon-button icon-like">Favourite</a>
        												<a href="#" class="icon-button icon-compare">Checkout</a>
        											</div><!-- End .item-action-inner -->
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->

        						</div><!--hot-items-slider -->
        						<div class="lg-margin"></div><!-- Space -->
        						</div><!-- End .hot-items -->
        					</div><!-- End .col-md-9 -->
        					
        					<div class="col-md-3 col-sm-4 col-xs-12 sidebar">
        						<div class="widget subscribe">
        							<h3>BE THE FIRST TO KNOW</h3>
        							<p> Get all the latest information on Events, Sales and Offers. Sign up for the Venedor store newsletter today.</p>
									<form action="#" id="subscribe-form">
										<div class="form-group">
											<input type="email" class="form-control" id="subscribe-email" placeholder="Enter your email address">
										</div>
        								<input type="submit" value="SUBMIT" class="btn btn-custom">
        							</form>
        						</div>
        						<div class="widget testimonials">
        							<h3>Testimonials</h3>
        							
        							<div class="testimonials-slider flexslider sidebarslider">
        								<ul class="testimonials-list clearfix">
        									<li>
        										<div class="testimonial-details">
												<header>Best Service!</header>
        										Maecenas semper aliquam massa. Praesent pharetra sem vitae nisi eleifend molestie. Aliquam molestie scelerisque ultricies. Suspendisse potenti. 
        										</div><!-- End .testimonial-details -->
        										<figure class="clearfix">
    											<img src="images/testimonials/anna.jpg" alt="Computer Ceo">
        											<figcaption>
        												<a href="#">Anna Retallic</a>
        												<span>12.05.2013</span>
        											</figcaption>
        										</figure>
        									</li>
        									<li>
        										<div class="testimonial-details">
												<header>Cool Style!</header>
        										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt iure quisquam necessitatibus fugit! Nisi tempora reiciendis omnis error sapiente ipsam maiores dolorem maxime.
        										</div><!-- End .testimonial-details -->
        										<figure class="clearfix">
        											<img src="images/testimonials/jake.jpg" alt="Computer Ceo">
        											<figcaption>
        												<a href="#">Jake Suasoo</a>
        												<span>17.05.2013</span>
        											</figcaption>
        										</figure>
        									</li>
        								</ul>
        							</div><!-- End .testimonials-slider -->
        						</div><!-- End .widget -->
        						
        						
        						<div class="widget latest-posts">
        							<h3>Latest News</h3>
        							
        							<div class="latest-posts-slider flexslider sidebarslider">
        								<ul class="latest-posts-list clearfix">
        									<li>
        										<a href="single.html">
                                                    <figure class="latest-posts-media-container">
                                                        <img src="images/blog/post1-small.jpg" alt="lats post">
                                                    </figure>
                                                </a>
        										<h4><a href="single.html">35% Discount on second purchase!</a></h4>
        										<p>Sed blandit nulla nec nunc ullamcorper tristique. Mauris adipiscing cursus ante ultricies dictum sed lobortis.</p>
        										<div class="latest-posts-meta-container clearfix">
        											<div class="pull-left">
        												<a href="#">Read More...</a>
        											</div><!-- End .pull-left -->
        											<div class="pull-right">
        												12.05.2013
        											</div><!-- End .pull-right -->
        										</div><!-- End .latest-posts-meta-container -->
        									</li>
        									
        									<li>
        										<a href="single.html">
                                                    <figure class="latest-posts-media-container">
                                                        <img src="images/blog/post2-small.jpg" alt="lats post">
                                                    </figure>
                                                </a>
        										<h4><a href="single.html">Free shipping for regular customers.</a></h4>
        										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque fuga officia in molestiae easint..</p>
        										<div class="latest-posts-meta-container clearfix">
        											<div class="pull-left">
        												<a href="#">Read More...</a>
        											</div><!-- End .pull-left -->
        											<div class="pull-right">
        												10.05.2013
        											</div><!-- End .pull-right -->
        										</div><!-- End .latest-posts-meta-container -->
        									</li>
        									
        									<li>
        										<a href="single.html">
                                                    <figure class="latest-posts-media-container">
                                                        <img src="images/blog/post3-small.jpg" alt="lats post">
                                                    </figure>
                                                </a>
        										<h4><a href="#">New jeans on sales!</a></h4>
        										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque fuga officia in molestiae easint..</p>
        										<div class="latest-posts-meta-container clearfix">
        											<div class="pull-left">
        												<a href="#">Read More...</a>
        											</div><!-- End .pull-left -->
        											<div class="pull-right">
        												8.05.2013
        											</div><!-- End .pull-right -->
        										</div><!-- End .latest-posts-meta-container -->
        									</li>
        									
        								</ul>
        							</div><!-- End .latest-posts-slider -->
        						</div><!-- End .widget -->
        						
        						<div class="widget banner-slider-container">
        							<div class="banner-slider flexslider">
        								<ul class="banner-slider-list clearfix">
        									<li><a href="#"><img src="images/banner1.jpg" alt="Banner 1"></a></li>
        									<li><a href="#"><img src="images/banner2.jpg" alt="Banner 2"></a></li>
        									<li><a href="#"><img src="images/banner3.jpg" alt="Banner 3"></a></li>
        								</ul>
        							</div>
        						</div><!-- End .widget -->
        						
        					</div><!-- End .col-md-3 -->
        				</div><!-- End .row -->
        				
        				<div id="brand-slider-container" class="carousel-wrapper">
        					<header class="content-title">
								<div class="title-bg">
									<h2 class="title">Manufacturers</h2>
								</div><!-- End .title-bg -->
							</header>
                                <div class="carousel-controls">
                                    <div id="brand-slider-prev" class="carousel-btn carousel-btn-prev">
                                    </div><!-- End .carousel-prev -->
                                    <div id="brand-slider-next" class="carousel-btn carousel-btn-next carousel-space">
                                    </div><!-- End .carousel-next -->
                                </div><!-- End .carousel-controllers -->
                                <div class="sm-margin"></div><!-- space -->
                                <div class="brand-slider owl-carousel">
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 1"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 2"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 3"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 4"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 5"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 6"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 7"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 8"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 9"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 10"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 11"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 12"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 13"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 14"></a>
                                    <a href="#"><img src="images/brands/brand-logo.png" alt="Brand Logo 15"></a>
                                </div><!-- End .brand-slider -->
        				</div><!-- End #brand-slider-container -->
        				
        			</div><!-- End .col-md-12 -->
        		</div><!-- End .row -->
			</div><!-- End .container -->
        
        </section><!-- End #content -->
        
        <footer id="footer">
        	<%--<div id="twitterfeed-container">
        		<div class="container">
        			<div class="row">
        				
        				<div class="twitterfeed col-md-12">
        					<div class="twitter-icon"><i class="fa fa-twitter"></i></div><!-- End .twitter-icon -->
        					<div class="row">
        						<div class="col-md-10 col-sm-10 col-xs-10 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
        							<div class="twitter_feed flexslider"></div>
        						</div>
        					</div>
        					
        				</div><!-- End .twiitterfeed .col-md-12 -->
        				
        			</div><!-- End .row -->
    			</div><!-- End .container -->
        	</div><!-- End #twitterfeed-container -->--%>
        	<div id="inner-footer">
        		
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4 col-xs-12 widget">
							<h3>MY ACCOUNT</h3>
							<ul class="links">
								<li><a href="#">My account</a></li>
								<li><a href="#">Personal information</a></li>
								<li><a href="#">Addresses</a></li>
								<li><a href="#">Discount</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Your Vouchers</a></li>
							</ul>
						</div><!-- End .widget -->
						
						<div class="col-md-3 col-sm-4 col-xs-12 widget">
							<h3>INFORMATION</h3>
							<ul class="links">
								<li><a href="#">New products</a></li>
								<li><a href="#">Top sellers</a></li>
								<li><a href="#">Specials</a></li>
								<li><a href="#">Manufacturers</a></li>
								<li><a href="#">Suppliers</a></li>
								<li><a href="#">Our stores</a></li>
							</ul>
						</div><!-- End .widget -->
						
						<div class="col-md-3 col-sm-4 col-xs-12 widget">
							<h3>CONTACT INFORMATIOn</h3>
							
							<ul class="contact-list">
								<li><strong>Producator</strong></li>
								<li>Motoroiu Cristin</li>
								<li>Oras Breaza, Prahova</li>
								<li>Str. Colinei 23A</li>
								<li>Tel: Cristian: +(40) 733 020 329</li>
                                <li>Tel: Corina: +(40) 723 232 749</li>
                                <li>E-Mail:c.motoroiu@yahoo.com</li>
							</ul>
						</div><!-- End .widget -->
						
						<div class="clearfix visible-sm"></div>
						
						<div class="col-md-3 col-sm-12 col-xs-12 widget">
							<h3>FACEBOOK LIKE BOX</h3>
							
							<div class="facebook-likebox">
								<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fenvato&amp;colorscheme=dark&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false"></iframe>
							</div>
							
							
						</div><!-- End .widget -->
					</div><!-- End .row -->
				</div><!-- End .container -->
        	
        	</div><!-- End #inner-footer -->
        	
        	<div id="footer-bottom">
        		<div class="container">
        			<div class="row">
        				<div class="col-md-7 col-sm-7 col-xs-12 footer-social-links-container">
        					<ul class="social-links clearfix">
        						<li><a href="#" class="social-icon icon-facebook"></a></li>
        						<li><a href="#" class="social-icon icon-twitter"></a></li>
        						<li><a href="#" class="social-icon icon-rss"></a></li>
        						<li><a href="#" class="social-icon icon-delicious"></a></li>
        						<li><a href="#" class="social-icon icon-linkedin"></a></li>
        						<li><a href="#" class="social-icon icon-flickr"></a></li>
        						<li><a href="#" class="social-icon icon-skype"></a></li>
        						<li><a href="#" class="social-icon icon-email"></a></li>
        					</ul>
        				</div><!-- End .col-md-7 -->
        				
        				<div class="col-md-5 col-sm-5 col-xs-12 footer-text-container">
        					<p>&copy; 2016 Powered by VladM. All Rights Reserved.</p>
        				</div><!-- End .col-md-5 -->
        			</div><!-- End .row -->
				</div><!-- End .container -->
        	</div><!-- End #footer-bottom -->
        	
        </footer><!-- End #footer -->
    </div><!-- End #wrapper -->
        <a href="#" id="scroll-top" title="Scroll to Top"><i class="fa fa-angle-up"></i></a><!-- End #scroll-top -->
	<!-- END -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/retina-1.1.0.min.js"></script>
    <script src="js/jquery.placeholder.js"></script>
    <script src="js/jquery.hoverIntent.min.js"></script>
    <script src="js/twitter/jquery.tweet.min.js"></script>
    <script src="js/jquery.flexslider-min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jflickrfeed.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.sequence-min.js"></script>
    <script src="js/colpick.js"></script>
    <script src="js/main.js"></script>
	
    <script>
    	$(function() {
    		// Sequence.js Slider Plugin
			var options = {
				nextButton: true,
				prevButton: true,
				pagination:true,
				autoPlay: true,
				autoPlayDelay: 8500,
				pauseOnHover: true,
				preloader: true,
				theme: 'slide',
				speed: 700,
				animateStartingFrameIn: true
                },
				homeSlider = $('#slider-sequence').sequence(options).data("sequence");
    	
    	});
    </script>
    </body>
</html>