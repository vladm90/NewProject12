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

            <div class="col-md-9 col-sm-8 col-xs-12 main-content">

              <div class="category-toolbar clearfix">
                <div class="toolbox-filter clearfix">

                  <div class="sort-box">
                    <span class="separator">sort by:</span>
                    <div class="btn-group select-dropdown">
                      <button type="button" class="btn select-btn">Category</button>
                      <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-angle-down"></i>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Price</a></li>
                        <li><a href="#">Name</a></li>
                      </ul>
                    </div>
                  </div>

                  <%--<div class="view-box">
                    <a href="category.html" class="active icon-button icon-grid"><i class="fa fa-th-large"></i></a>
                    <a href="category-list.html" class="icon-button icon-list"><i class="fa fa-th-list"></i></a>
                  </div><!-- End .view-box -->--%>

                </div><!-- End .toolbox-filter -->
                <div class="toolbox-pagination clearfix">
                  <%--PAGINATION--%>
                  <div class="pull-right">
                    <ul class="pagination">
                      <c:if test="${page > 1}">
                        <li><a href="/shop/products?page=${page-1}"><i class="fa fa-angle-left"></i></a></li>
                      </c:if>
                      <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                        <c:choose>
                          <c:when test="${page == i.index}">
                            <li class="active"><a>${i.index}</a></li>
                          </c:when>
                          <c:otherwise>
                            <li><a href="/shop/products?page=${i.index}">${i.index}</a></li>
                          </c:otherwise>
                        </c:choose>
                      </c:forEach>
                      <c:if test="${page + 1 <= maxPages}">
                        <li><a href="/shop/products?page=${page + 1}"><i class="fa fa-angle-right"></i></a></li>
                      </c:if>
                    </ul>
                  </div><!-- End .pull-right -->
                  <%--PAGINATION--%>
                  <div class="view-count-box">
                    <span class="separator">view:</span>
                    <div class="btn-group select-dropdown">
                      <button type="button" class="btn select-btn">10</button>
                      <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-angle-down"></i>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">15</a></li>
                        <li><a href="#">30</a></li>
                      </ul>
                    </div>
                  </div><!-- End .view-count-box -->

                </div><!-- End .toolbox-pagination -->


              </div><!-- End .category-toolbar -->

              <div id="products-tabs-content" class="row tab-content">

                <c:forEach items="${product}" var="product" varStatus="index">
                  <div class="col-md-4 col-sm-8 col-xs-12">
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

              </div><!-- End .category-item-container -->

              <div class="pagination-container clearfix">
                <%--PAGINATION--%>
                <div class="pull-right">
                    <ul class="pagination">
                    <c:if test="${page > 1}">
                      <li><a href="/shop/products?page=${page-1}"><i class="fa fa-angle-left"></i></a></li>
                    </c:if>
                    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                      <c:choose>
                        <c:when test="${page == i.index}">
                          <li class="active"><a>${i.index}</a></li>
                        </c:when>
                        <c:otherwise>
                          <li><a href="/shop/products?page=${i.index}">${i.index}</a></li>
                        </c:otherwise>
                      </c:choose>
                    </c:forEach>
                    <c:if test="${page + 1 <= maxPages}">
                      <li><a href="/shop/products?page=${page + 1}"><i class="fa fa-angle-right"></i></a></li>
                    </c:if>
                  </ul>
                </div><!-- End .pull-right -->
                <%--PAGINATION--%>

                <div class="pull-right view-count-box hidden-xs">
                  <span class="separator">view:</span>
                  <div class="btn-group select-dropdown">
                    <button type="button" class="btn select-btn">10</button>
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-angle-down"></i>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#">15</a></li>
                      <li><a href="#">30</a></li>
                    </ul>
                  </div>
                </div>
              </div><!-- End pagination-container -->


            </div><!-- End .col-md-9 -->

            <aside class="col-md-3 col-sm-4 col-xs-12 sidebar">
              <div class="widget">
                <div class="panel-group custom-accordion sm-accordion" id="category-filter">
                  <div class="panel">
                    <div class="accordion-header">
                      <div class="accordion-title"><span>Category</span></div><!-- End .accordion-title -->
                      <a class="accordion-btn opened"  data-toggle="collapse" data-target="#category-list-1"></a>
                    </div><!-- End .accordion-header -->

                    <div id="category-list-1" class="collapse in">
                      <div class="panel-body">
                        <ul class="category-filter-list jscrollpane">
                          <li><a href="#">All (40)</a></li>
                          <c:forEach items="${productCategoryEnum}" var="category" varStatus="index">
                            <c:if test="${index.index != 0}">
                              <li><a href="#">${category.label} (10)</a></li>
                            </c:if>
                          </c:forEach>
                        </ul>
                      </div><!-- End .panel-body -->
                    </div><!-- #collapse -->
                  </div><!-- End .panel -->

                  <div class="panel">
                    <div class="accordion-header">
                      <div class="accordion-title"><span>Brand</span></div><!-- End .accordion-title -->
                      <a class="accordion-btn opened"  data-toggle="collapse" data-target="#category-list-2"></a>
                    </div><!-- End .accordion-header -->

                    <div id="category-list-2" class="collapse in">
                      <div class="panel-body">
                        <ul class="category-filter-list jscrollpane">
                          <li><a href="#">Salcam (50)</a></li>
                          <li><a href="#">Poliflora (80)</a></li>
                          <li><a href="#">Tei (20)</a></li>
                          <li><a href="#">Rapita (20)</a></li>
                          <li><a href="#">Mana (11)</a></li>
                          <li><a href="#">Coriandru (11)</a></li>
                        </ul>
                      </div><!-- End .panel-body -->
                    </div><!-- #collapse -->
                  </div><!-- End .panel -->

                  <div class="panel">
                    <div class="accordion-header">
                      <div class="accordion-title"><span>Price</span></div><!-- End .accordion-title -->
                      <a class="accordion-btn opened"  data-toggle="collapse" data-target="#category-list-3"></a>
                    </div><!-- End .accordion-header -->
                    <div id="category-list-3" class="collapse in">
                      <div class="panel-body">
                        <div id="price-range">

                        </div><!-- End #price-range -->
                        <div id="price-range-details">
                          <span class="sm-separator">from</span>
                          <input type="text" id="price-range-low" class="separator">
                          <span class="sm-separator">to</span>
                          <input type="text" id="price-range-high">
                        </div>
                        <div id="price-range-btns">
                          <a href="#" class="btn btn-custom-2 btn-sm">Ok</a>
                          <a href="#" class="btn btn-custom-2 btn-sm">Clear</a>
                        </div>

                      </div><!-- End .panel-body -->
                    </div><!-- #collapse -->
                  </div><!-- End .panel -->

                  <%--<div class="panel">
                    <div class="accordion-header">
                      <div class="accordion-title"><span>Color</span></div><!-- End .accordion-title -->
                      <a class="accordion-btn opened"  data-toggle="collapse" data-target="#category-list-4"></a>
                    </div><!-- End .accordion-header -->

                    <div id="category-list-4" class="collapse in">
                      <div class="panel-body">
                        <ul class="filter-color-list clearfix">
                          <li><a href="#" data-bgcolor="#fff" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#ffff33" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#ff9900" class="filter-color-box"></a></li>
                          <li class="last-md"><a href="#" data-bgcolor="#ff9999" class="filter-color-box"></a></li>
                          <li class="last-lg"><a href="#" data-bgcolor="#99cc33" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#339933" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#ff0000" class="filter-color-box"></a></li>
                          <li class="last-md"><a href="#" data-bgcolor="#ff3366" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#cc33ff" class="filter-color-box"></a></li>
                          <li class="last-lg"><a href="#" data-bgcolor="#9966cc" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#99ccff" class="filter-color-box"></a></li>
                          <li  class="last-md"><a href="#" data-bgcolor="#3333cc" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#999999" class="filter-color-box"></a></li>
                          <li><a href="#" data-bgcolor="#663300" class="filter-color-box"></a></li>
                          <li class="last-lg"><a href="#" data-bgcolor="#000" class="filter-color-box"></a></li>
                        </ul>
                      </div><!-- End .panel-body -->
                    </div><!-- #collapse -->
                  </div><!-- End .panel -->--%>
                </div><!-- .panel-group -->
              </div><!-- End .widget -->

              <%--<div class="widget featured">
                <h3>Featured</h3>

                <div class="featured-slider flexslider sidebarslider">
                  <ul class="featured-list clearfix">
                    <li>
                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item5">
                        </figure>
                        <h5><a href="#">Jacket Suiting Blazer</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="84"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$40</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->

                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item1">
                        </figure>
                        <h5><a href="#">Gap Graphic Cuffed</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="84"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$18</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->

                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item2">
                        </figure>
                        <h5><a href="#">Women's Lauren Dress</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="84"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$30</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->
                    </li>
                    <li>
                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item3">
                        </figure>
                        <h5><a href="#">Swiss Mobile Phone</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="64"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$39</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->

                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item4">
                        </figure>
                        <h5><a href="#">Zwinzed HeadPhones</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="94"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$18.99</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->

                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item7">
                        </figure>
                        <h5><a href="#">Kless Man Suit</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="74"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$99</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->
                    </li>
                    <li>

                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item4">
                        </figure>
                        <h5><a href="#">Gap Graphic Cuffed</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="84"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$17</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->

                      <div class="featured-product clearfix">
                        <figure>
                          <img src="images/products/miere.jpg" alt="item6">
                        </figure>
                        <h5><a href="#">Women's Lauren Dress</a></h5>
                        <div class="ratings-container">
                          <div class="ratings">
                            <div class="ratings-result" data-result="84"></div>
                          </div><!-- End .ratings -->
                        </div><!-- End .rating-container -->
                        <div class="featured-price">$30</div><!-- End .featured-price -->
                      </div><!-- End .featured-product -->
                    </li>
                  </ul>
                </div><!-- End .featured-slider -->
              </div><!-- End .widget -->--%>

              <div class="widget banner-slider-container">
                <div class="banner-slider flexslider">
                  <ul class="banner-slider-list clearfix">
                    <li><a href="#"><img src="/images/banner1.jpg" alt="Banner 1"></a></li>
                    <li><a href="#"><img src="/images/banner2.jpg" alt="Banner 2"></a></li>
                    <li><a href="#"><img src="/images/banner3.jpg" alt="Banner 3"></a></li>
                  </ul>
                </div>
              </div><!-- End .widget -->

            </aside><!-- End .col-md-3 -->
          </div><!-- End .row -->


        </div><!-- End .col-md-12 -->
      </div><!-- End .row -->
    </div><!-- End .container -->

  </section><!-- End #content -->
</div>
<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp"%>