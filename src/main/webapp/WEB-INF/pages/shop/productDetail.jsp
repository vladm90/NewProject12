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

          <div class="row">

            <div class="col-md-6 col-sm-12 col-xs-12 product-viewer clearfix">

              <div id="product-image-carousel-container">
                <ul id="product-carousel" class="celastislide-list">
                  <li class="active-slide"><a data-rel='prettyPhoto' href="${product.picture}" ><img src="${product.picture}" alt="Phone photo 1"></a></li>
                 <%-- <li><a data-rel='prettyPhoto' href="/images/products/big-phone1.jpg"><img src="/images/products/big-phone1.jpg" alt="Phone photo 2"></a></li>--%>
                </ul><!-- End product-carousel -->
              </div>

              <div id="product-image-container">
                <figure>
                  <img src="${product.picture}" alt="Product Big image" id="product-image" data-big="${product.picture}" width="300" height="600">
                  <figcaption class="item-price-container">
                    <span class="old-price">${product.price} Lei</span>
                    <span class="item-price">${product.price} Lei</span>
                  </figcaption>
                </figure>
              </div><!-- product-image-container -->
            </div><!-- End .col-md-6 -->

            <div class="col-md-6 col-sm-12 col-xs-12 product">
              <div class="lg-margin visible-sm visible-xs"></div><!-- Space -->
              <h1 class="product-name">${product.name}</h1>
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
                    <span class="ratings-amount separator">Be the first to review this product!!!!!!!</span>
              </div><!-- End .rating-container -->
              <ul class="product-list">
                <li><span>Availability:</span>${product.stock}</li>
                <li><span>Product Code:</span>${product.id}</li>
                <li><span>Category:</span>${product.productCategoryEnum.label}</li>
              </ul>
              <hr>
              <div class="lg-margin"></div><!-- .space -->

              <div class="product-add clearfix">
                <div class="custom-quantity-input">
                  <input type="text" name="quantity" id="quantity" value="1">
                  <a onclick="incrementQuantity()" class="quantity-btn quantity-input-up"><i class="fa fa-angle-up"></i></a>
                  <a onclick="decrementQuantity()" class="quantity-btn quantity-input-down"><i class="fa fa-angle-down"></i></a>

                </div>
                <button class="btn btn-custom-2">ADD TO CART</button>
              </div><!-- .product-add -->
              <div class="md-margin"></div><!-- Space -->
              <div class="product-extra clearfix">
                <div class="product-extra-box-container clearfix">
                  <div class="item-action-inner">
                    <a href="#" class="icon-button icon-like">Favourite</a>
                    <a href="#" class="icon-button icon-compare">Checkout</a>
                  </div><!-- End .item-action-inner -->
                </div>
                <div class="md-margin visible-xs"></div>
                <div class="share-button-group">
                  <!-- AddThis Button BEGIN -->
                  <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
                    <a class="addthis_button_facebook"></a>
                    <a class="addthis_button_twitter"></a>
                    <a class="addthis_button_email"></a>
                    <a class="addthis_button_print"></a>
                    <a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style"></a>
                  </div>
                  <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
                  <script type="text/javascript" src="../../../../s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52b2197865ea0183"></script>
                  <!-- AddThis Button END -->
                </div><!-- End .share-button-group -->
              </div>
            </div><!-- End .col-md-6 -->


          </div><!-- End .row -->

          <div class="lg-margin2x"></div><!-- End .space -->

          <div class="row">
            <div class="col-md-9 col-sm-12 col-xs-12">

              <div class="tab-container left product-detail-tab clearfix">
                <ul class="nav-tabs">
                  <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
                  <li><a href="#description" data-toggle="tab">Description</a></li>
                  <li><a href="#review" data-toggle="tab">Review</a></li>
                  <li><a href="#additional" data-toggle="tab">Additional Info</a></li>
                </ul>
                <div class="tab-content clearfix">

                  <div class="tab-pane active" id="overview">
                    <p>${product.description}</p>
                  </div><!-- End .tab-pane -->

                  <div class="tab-pane" id="description">
                    <p>${product.description}</p>
                  </div><!-- End .tab-pane -->

                  <div class="tab-pane" id="review">
                    <p>${product.description}</p>
                  </div><!-- End .tab-pane -->

                  <div class="tab-pane" id="additional">
                    <strong>${product.description}</strong>

                  </div><!-- End .tab-pane -->

                  <div class="tab-pane" id="video">
                    <div class="video-container">
                      <strong>A Video about Product</strong>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur adipisci esse.</p>
                      <hr>
                      <iframe width="560" height="315" src="http://www.youtube.com/embed/Z0MNVFtyO30?rel=0"></iframe>

                    </div><!-- End .video-container -->

                  </div><!-- End .tab-pane -->
                </div><!-- End .tab-content -->
              </div><!-- End .tab-container -->
              <div class="lg-margin visible-xs"></div>
            </div><!-- End .col-md-9 -->
            <div class="lg-margin2x visible-sm visible-xs"></div><!-- Space -->
            <div class="col-md-3 col-sm-12 col-xs-12 sidebar">
              <div class="widget related">
                <h3>Related</h3>

                <div class="related-slider flexslider sidebarslider">
                  <ul class="related-list clearfix">
                    <li>
                      <div class="related-product clearfix">
                        <figure>
                          <img src="/images/products/thumbnails/item1.jpg" alt="item1">
                        </figure>
                        <h5><a href="#">Jacket Suiting Blazer</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="84"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="related-price">$40</div><!-- End .related-price -->
                      </div><!-- End .related-product -->
                    </li>
                    <li>
                      <div class="related-product clearfix">
                        <figure>
                          <img src="/images/products/thumbnails/item3.jpg" alt="item3">
                        </figure>
                        <h5><a href="#">Women's Lauren Dress</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="84"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="related-price">$30</div><!-- End .related-price -->
                      </div><!-- End .related-product -->
                    </li>
                  </ul>
                </div><!-- End .related-slider -->
              </div><!-- End .widget -->

            </div><!-- End .col-md-4 -->
          </div><!-- End .row -->
         <%-- <div class="lg-margin2x"></div><!-- Space -->--%>
          <%--<div class="purchased-items-container carousel-wrapper">
            <header class="content-title">
              <div class="title-bg">
                <h2 class="title">Also Purchased</h2>
              </div><!-- End .title-bg -->
              <p class="title-desc">Note the similar products - after buying for more than $500 you can get a discount.</p>
            </header>

            <div class="carousel-controls">
              <div id="purchased-items-slider-prev" class="carousel-btn carousel-btn-prev"></div><!-- End .carousel-prev -->
              <div id="purchased-items-slider-next" class="carousel-btn carousel-btn-next carousel-space"></div><!-- End .carousel-next -->
            </div><!-- End .carousel-controllers -->
            <div class="purchased-items-slider owl-carousel">
              <div class="item">

                <div class="item-image-container">
                  <figure>
                    <a href="product.html">
                      <img src="/images/products/phone5.jpg" alt="item3" class="item-image">
                      <img src="/images/products/phone5-hover.jpg" alt="item3 Hover" class="item-image-hover">
                    </a>
                  </figure>
                  <div class="item-price-container">
                    <span class="old-price">$300</span>
                    <span class="item-price">$175</span>
                  </div>
                  <span class="new-rect">New</span>
                  <span class="discount-rect">-35%</span>
                </div><!-- End .item-image -->
                <div class="item-meta-container">
                  <div class="ratings-container">
                    <div class="ratings">
                      <div class="ratings-result" data-result="70"></div>
                    </div><!-- End .ratings -->
                                                    <span class="ratings-amount">
                                                        7 Reviews
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

            </div><!--purchased-items-slider -->
          </div><!-- End .purchased-items-container -->--%>

        </div><!-- End .col-md-12 -->
      </div><!-- End .row -->
      <div class="sm-margin"></div><!-- Space -->
      <div class="row">
        <div class="col-md-7 col-sm-7 col-xs-12">
          <header class="content-title">
            <h2 class="title">Leave a comment</h2>
          </header>
          <div id="fb-root"></div>

          <div class="fb-comments" data-href="https://www.facebook.com/myappmarket" data-width="720" data-numposts="5"></div>
        </div><!-- End .col-md-7 -->
        <%--<div class="col-md-5 col-sm-5 col-xs-12">
          <div class="sm-margin visible-xs"></div><!-- space -->
          <img src="images/showcase.png" alt="Showcase Venedor" class="img-responsive">
        </div><!-- End .col-md-5 -->--%>
      </div><!-- End .row -->
      <div class="xlg-margin"></div><!-- Space -->
    </div><!-- End .container -->

  </section><!-- End #content -->
</div>

<script type="text/javascript">
  function incrementQuantity(){
    $('#quantity').val(parseInt($('#quantity').val())+1);
  }
  function decrementQuantity(){
    var value = parseInt($('#quantity').val());
    if(value > 1) {
      $('#quantity').val(value-1);
    }else{
      $('#quantity').val(1);
    }
  }
</script>


<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp"%>