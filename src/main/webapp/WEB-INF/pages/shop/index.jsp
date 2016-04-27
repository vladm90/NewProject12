<%@ include file="/WEB-INF/pages/fragments/header_shop.jsp"%>

<div id="wrapper">

        <section id="content">

            <%--SLIDER--%>
        	<div id="slider-sequence" class="homeslider">
        		<div class="sequence-prev"></div><!-- End sequence-prev-->
        		<div class="sequence-next"></div><!-- End sequence-next-->
        		<ul class="sequence-canvas">
        			<li class="sequence-slide1">
        				<div class="sequencebg">
        					<img src="images/homeslider/new5.jpg" alt="Slide 1 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<%--<img src="images/homeslider/slide1_1.png" alt="Model 1" class="sequence-model">--%>
        					<div class="sequence-title">Special offer -25%</div>
        					<div class="sequence-subtitle">Performance &amp; Design. Taken right to the edge.</div>
        					<a href="#" class="btn btn-custom-2 btn-sequence">Learn More</a>
        				</div><!-- End .sequence-container -->
        			</li>
        			
        			<li class="sequence-slide2">
        				<div class="sequencebg">
        					<img src="images/homeslider/new4.jpg" alt="Slide 2 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<div class="sequence-price">$1250</div>
        					<%--<img src="images/homeslider/slide2_2.png" alt="Model 2" class="sequence-model">
        					<img src="images/homeslider/slide2_1.png" alt="Model 1" class="sequence-model2">--%>
        					<div class="sequence-title">The next big thing...</div>
        					<div class="sequence-subtitle">Take, view and share photos with the 13MP camera and stunning 5" display.</div>
        					<a href="#" class="btn btn-custom-2 btn-sequence">Learn More</a>
        				</div><!-- End .sequence-container -->
        			</li>
        			
        			<li class="sequence-slide3">
        				<div class="sequencebg">
        					<img src="images/homeslider/new3.jpg" alt="Slide 3 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<%--<img src="images/homeslider/slide3_1.png" alt="Model 3" class="sequence-model">--%>
        					<div class="sequence-title">Control. Navigate. Be Recognized.</div>
        					<div class="sequence-subtitle">Smart Interaction lets you interact with your TV as never before.</div>
        					<a href="#" class="btn btn-custom-2 btn-sequence">Learn More</a>
        					<%--<img src="images/homeslider/slide3_4.png" alt="Mobile phone" class="sequence-phone">
        					<img src="images/homeslider/slide3_2.png" alt="Tablet" class="sequence-tablet">
        					<img src="images/homeslider/slide3_3.png" alt="Screen" class="sequence-screen">--%>
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
        							<li><a href="#latest" data-toggle="tab">Honey</a></li>
        							<li><a href="#featured" data-toggle="tab">Honeycomb</a></li>
        							<li><a href="#bestsellers" data-toggle="tab">Syrup</a></li>
        							<li><a href="#special" data-toggle="tab">Bee products</a></li>
        						</ul>
        						
        						<div id="products-tabs-content" class="row tab-content">
        							<div class="tab-pane active" id="all">

										<c:forEach items="${product}" var="product" varStatus="index">
											<div class="col-md-4 col-sm-6 col-xs-12">
												<div class="item">
													<div class="item-image-container">
														<figure>
															<a href="product.html">
																<img src="${product.picture}" alt="${product.name}" class="item-image">
																<img src="${product.picture}" alt="${product.name}" class="item-image-hover">
															</a>
														</figure>
														<div class="item-price-container">
															<span class="old-price">${product.price}Lei</span>
															<span class="item-price">${product.price}Lei</span>
														</div>
														<span class="new-rect">New</span>
														<span class="discount-rect">-0%</span>
													</div><!-- End .item-image -->

													<div class="item-meta-container">
														<div class="ratings-container">
															<div class="ratings">
																<div class="ratings-result">
																	<fieldset class="rating">
																		<input type="radio" id="star5${product.id}" name="rating" value="5" /><label class = "full" for="star5${product.id}" title="Awesome - 5 stars"></label>
																		<input type="radio" id="star4${product.id}" name="rating" value="4" /><label class = "full" for="star4${product.id}" title="Pretty good - 4 stars"></label>
																		<input type="radio" id="star3${product.id}" name="rating" value="3" /><label class = "full" for="star3${product.id}" title="Meh - 3 stars"></label>
																		<input type="radio" id="star2${product.id}" name="rating" value="2" /><label class = "full" for="star2${product.id}" title="Kinda bad - 2 stars"></label>
																		<input type="radio" id="star1${product.id}" name="rating" value="1" /><label class = "full" for="star1${product.id}" title="Sucks big time - 1 star"></label>
																	</fieldset>
																</div>
															</div><!-- End .ratings -->
        													<span class="ratings-amount">0 Reviews</span>
														</div><!-- End .rating-container -->
														<h3 class="item-name"><a href="product.html">${product.name} ${product.weight}g</a></h3>
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
										</c:forEach>
        							</div><!-- End .tab-pane -->

        							
        							<div class="tab-pane" id="latest">
        							</div><!-- End .tab-pane -->
        							
        							<div class="tab-pane" id="featured">
        							</div><!-- End .tab-pane -->

									<div class="tab-pane" id="bestsellers">
        							</div><!-- End .tab-pane -->

        							<div class="tab-pane" id="special">
        							</div><!-- End .tab-pane -->
        						</div><!-- End #products-tabs-content -->


								<%--PAGINATION--%>
								<ul class="pagination2">
									<c:url value="/" var="prev">
										<c:param name="page" value="${page-1}"/>
									</c:url>
									<c:if test="${page > 1}">
										<li><a href="<c:out value="${prev}" />" class="pn prev">Prev</a></li>
									</c:if>

									<c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
										<c:choose>
											<c:when test="${page == i.index}">
												<li class="active"><a>${i.index}</a></li>
											</c:when>
											<c:otherwise>
												<c:url value="/" var="url">
													<c:param name="page" value="${i.index}"/>
												</c:url>
												<li><a href='<c:out value="${url}" />'>${i.index}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:url value="/" var="next">
										<c:param name="page" value="${page + 1}"/>
									</c:url>
									<c:if test="${page + 1 <= maxPages}">
										<li><a href='<c:out value="${next}" />' class="pn next">Next</a></li>
									</c:if>
								</ul>
								<%--PAGINATION--%>

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

								<%--&lt;%&ndash;ON SALE CARUSEL&ndash;%&gt;
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
									</div><!--hot-items-slider -->

        							<div class="lg-margin"></div><!-- Space -->
        						</div><!-- End .hot-items -->--%>
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
        									<li><a href="#"><img src="/images/banner1.jpg" alt="Banner 1"></a></li>
        									<li><a href="#"><img src="/images/banner2.jpg" alt="Banner 2"></a></li>
        									<li><a href="#"><img src="/images/banner3.jpg" alt="Banner 3"></a></li>
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
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 1"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 2"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 3"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 4"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 5"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 6"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 7"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 8"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 9"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 10"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 11"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 12"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 13"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 14"></a>
                                    <a href="#"><img src="/images/brands/brand-logo.png" alt="Brand Logo 15"></a>
                                </div><!-- End .brand-slider -->
        				</div><!-- End #brand-slider-container -->
        				
        			</div><!-- End .col-md-12 -->
        		</div><!-- End .row -->
			</div><!-- End .container -->
        
        </section><!-- End #content -->

    </div>

<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp"%>