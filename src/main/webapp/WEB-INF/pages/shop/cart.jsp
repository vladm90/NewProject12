<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 03.05.2016
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/pages/fragments/header_shop.jsp"%>


<div id="wrapper">


  <section id="content">
    <div class="md-margin"></div><!-- .space -->
    <div class="container">
      <div class="row">
        <c:choose>
          <c:when test="${fn:length(cart) == 0}">
            <header class="content-title">
              <h1 class="title">Shopping Cart</h1>
              <p class="title-desc">Just this week, you can use the free premium delivery.</p>
              <div class="woocommerce">
                <p class="cart-empty alert alert-warning">Your cart is currently empty.</p>
              </div>
              <a href="/shop/products" class="btn btn-custom-2">Return to shop</a>
            </header>
          </c:when>
          <c:otherwise>
            <div class="col-md-12">
              <header class="content-title">
                <h1 class="title">Shopping Cart</h1>
                <p class="title-desc">Just this week, you can use the free premium delivery.</p>
              </header>
              <div class="xs-margin"></div><!-- space -->
              <div class="row">

                <div class="col-md-12 table-responsive">
                  <c:set var="totalPrice" value="0"/>
                  <table class="table cart-table">
                    <thead>
                    <tr>
                      <th class="table-title">Product Name</th>
                      <th class="table-title">Product Code</th>
                      <th class="table-title">Unit Price</th>
                      <th class="table-title">Quantity</th>
                      <th class="table-title">SubTotal</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${cart}" var="cart" varStatus="index">
                      <c:set var="totalPrice" value="${totalPrice + (cart.quantity * cart.product.price)}"/>
                      <tr>
                        <td class="item-name-col">
                          <figure>
                            <a href="#"><img src="${cart.product.picture}" alt="${cart.product.name}"></a>
                          </figure>
                          <header class="item-name"><a href="#">${cart.product.name}</a></header>
                          <ul>
                            <li>Weight: ${cart.product.weight}</li>
                          </ul>
                        </td>
                        <td class="item-code">${cart.product.id}</td>
                          <%--PRET--%>
                        <td class="item-price-col">
                        <span class="item-price-special">
                         <input type="text" name="price${cart.product.id}" id="price${cart.product.id}" disabled value="${cart.product.price}">  Lei
                        </span>
                        </td>
                          <%--CANTITATE--%>
                        <td>
                          <div class="custom-quantity-input">
                            <input type="text" name="quantity${cart.product.id}" id="quantity${cart.product.id}" value="${cart.quantity}">
                            <a onclick="incrementQuantity(${cart.product.id})" class="quantity-btn quantity-input-up"><i class="fa fa-angle-up"></i></a>
                            <a onclick="decrementQuantity(${cart.product.id})" class="quantity-btn quantity-input-down"><i class="fa fa-angle-down"></i></a>
                          </div>
                        </td>
                          <%--SUBTOTAL--%>
                        <td class="item-total-col">
                        <span class="item-price-special">
                          <input type="text" id="subtotal${cart.product.id}" name="subtotal${cart.product.id}" value="${cart.product.price * cart.quantity}"> Lei
                        </span>
                          </span>
                          <a href="/shop/cart/delete?productId=${cart.product.id}" class="close-button"></a>
                        </td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                  <a name="anchor"></a>

                </div><!-- End .col-md-12 -->

              </div><!-- End .row -->
              <div class="lg-margin"></div><!-- End .space -->

              <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12">

                  <div class="tab-container left clearfix">
                    <ul class="nav-tabs">
                      <li class="active"><a href="#shippingTab" data-toggle="tab">Shipping &amp; Taxes</a></li>
                      <li><a href="#discount" data-toggle="tab">Discount Code</a></li>
                      <li><a href="#gift" data-toggle="tab">Gift voucher </a></li>

                    </ul>
                    <div class="tab-content clearfix">
                      <div class="tab-pane active" id="shippingTab">

                        <form action="#" id="shipping-form">
                          <p>Enter your destination to get a shipping estimate.</p>
                          <div class="xs-margin"></div>
                          <div class="form-group">
                            <label for="county" class="control-label">County&#42;</label>
                            <div class="input-container">
                                <%-- <select name="county" class="form-control" id="county" onChange="window.location.href='/shop/cart?countyName='+this.value+'#anchor'">--%>
                              <select name="county" class="form-control" id="county" onChange="countySelected('#county')">
                                <c:if test="${countyName != null}">
                                  <option value="${countyName}">${countyName}</option>
                                </c:if>
                                <option value="-">-</option>
                                <c:forEach items="${county}" var="county" varStatus="index">
                                  <option value="${county.county}">${county.county}</option>
                                </c:forEach>

                              </select>
                            </div><!-- End .select-container -->
                          </div><!-- End .form-group -->
                          <div class="sm-margin"></div>

                          <div class="form-group">
                            <label for="locality" class="control-label">Locality&#42;</label>
                            <div class="input-container">
                              <select name="locality" class="form-control" id="locality">
                                <option value="-">Select County</option>
                                <c:if test="${locality != null}">
                                  <c:forEach items="${locality}" var="locality"  varStatus="index">
                                    <option value="${locality.locality}">${locality.locality}</option>
                                  </c:forEach>
                                </c:if>
                              </select>
                            </div><!-- End .select-container -->
                          </div><!-- End .form-group -->
                          <div class="sm-margin"></div>
                          <p class="text-right">
                            <input type="submit" class="btn btn-custom-2" value="CALCULATE">
                          </p>
                        </form>

                      </div><!-- End .tab-pane -->

                      <div class="tab-pane" id="discount">
                        <p>Enter your discount coupon code here.</p>
                        <form action="#">
                          <div class="input-group">
                            <input type="text" required class="form-control" placeholder="Coupon code">

                          </div><!-- End .input-group -->
                          <input type="submit" class="btn btn-custom-2" value="APPLY COUPON">
                        </form>
                      </div><!-- End .tab-pane -->

                      <div class="tab-pane" id="gift">
                        <p>Lorem ipsum dolor sit amet.</p>
                      </div><!-- End .tab-pane -->

                    </div><!-- End .tab-content -->
                  </div><!-- End .tab-container -->

                </div><!-- End .col-md-8 -->
                <div class="lg-margin visible-sm visible-xs"></div><!-- space -->
                <div class="col-md-4 col-sm-12 col-xs-12">

                  <table class="table total-table">
                    <tbody>
                    <tr>
                      <td class="total-table-title">Subtotal:</td>
                      <td><input type="text" id="subtotalsec" name="subtotalsec" value="${totalPrice}"> Lei</td>
                    </tr>
                    <tr>
                      <td class="total-table-title">Shipping:</td>
                      <c:choose>
                        <c:when test="${shipping eq null}">
                          <td>Enter destination</td>
                        </c:when>
                        <c:otherwise>
                          <td><input type="text" id="shipping" name="shipping" value="${shipping}"> Lei</td>
                        </c:otherwise>
                      </c:choose>


                    </tr>
                      <%-- <tr>
                         <td class="total-table-title">TAX (0%):</td>
                         <td>${totalPrice} Lei</td>
                       </tr>--%>
                    </tbody>
                    <tfoot>
                    <tr>
                      <td>Total:</td>
                      <td><input type="text" id="subtotal" name="subtotal" value="${totalPrice}"> Lei</td>
                    </tr>
                    </tfoot>
                  </table>
                  <div class="md-margin"></div><!-- End .space -->
                  <a href="#" class="btn btn-custom-2">CONTINUE SHOPPING</a>
                  <a href="#" class="btn btn-custom">CHECKOUT</a>
                </div><!-- End .col-md-4 -->
              </div><!-- End .row -->
              <div class="lg-margin2x"></div><!-- Space -->

              <div class="similiar-items-container carousel-wrapper">
                <header class="content-title">
                  <div class="title-bg">
                    <h2 class="title">Similiar Products</h2>
                  </div><!-- End .title-bg -->
                  <p class="title-desc">Note the similar products - after buying for more than $500 you can get a discount.</p>
                </header>

                <div class="carousel-controls">
                  <div id="similiar-items-slider-prev" class="carousel-btn carousel-btn-prev"></div><!-- End .carousel-prev -->
                  <div id="similiar-items-slider-next" class="carousel-btn carousel-btn-next carousel-space"></div><!-- End .carousel-next -->
                </div><!-- End .carousel-controls -->
                <div class="similiar-items-slider owl-carousel">
                  <c:forEach items="${newProductsList}" var="product" varStatus="index">
                    <div class="item">
                      <div class="item-image-container">
                        <figure>
                          <a href="/shop/productDetail?product_id=${product.id}">
                            <img src="${product.picture}" alt="item3" class="item-image">
                            <img src="${product.picture}" alt="item3 Hover" class="item-image-hover">
                          </a>
                        </figure>
                        <div class="item-price-container">
                          <span class="item-price">${product.price} Lei</span>
                        </div>
                        <span class="new-rect">New</span>
                        <span class="discount-rect">-10%</span>
                      </div><!-- End .item-image -->
                      <div class="item-meta-container">
                        <div class="ratings-container">
                          <div class="ratings">
                            <fieldset class="rating">
                              <input type="radio" id="star5${product.id}" name="rating" value="5" /><label class = "full" for="star5${product.id}" title="Awesome - 5 stars"></label>
                              <input type="radio" id="star4${product.id}" name="rating" value="4" /><label class = "full" for="star4${product.id}" title="Pretty good - 4 stars"></label>
                              <input type="radio" id="star3${product.id}" name="rating" value="3" /><label class = "full" for="star3${product.id}" title="Meh - 3 stars"></label>
                              <input type="radio" id="star2${product.id}" name="rating" value="2" /><label class = "full" for="star2${product.id}" title="Kinda bad - 2 stars"></label>
                              <input type="radio" id="star1${product.id}" name="rating" value="1" /><label class = "full" for="star1${product.id}" title="Sucks big time - 1 star"></label>
                            </fieldset>
                            <div class="ratings-result" data-result="95"></div>
                          </div><!-- End .ratings -->
                          <span class="ratings-amount">0 Reviews</span>
                        </div><!-- End .rating-container -->
                        <h3 class="item-name"><a href="/shop/productDetail?product_id=${product.id}">${product.name}</a></h3>
                        <div class="item-action">
                          <a href="/shop/addProductCart?product_id=${product.id}" class="item-add-btn">
                            <span class="icon-cart-text">Add to Cart</span>
                          </a>
                          <div class="item-action-inner">
                            <a href="#" class="icon-button icon-like">Favourite</a>
                            <a href="#" class="icon-button icon-compare">Checkout</a>
                          </div><!-- End .item-action-inner -->
                        </div><!-- End .item-action -->
                      </div><!-- End .item-meta-container -->
                    </div><!-- End .item -->
                  </c:forEach>
                </div><!--purchased-items-slider -->
              </div><!-- End .purchased-items-container -->
            </div><!-- End .col-md-12 -->
          </c:otherwise>
        </c:choose>

      </div><!-- End .row -->

      <div class="xlg-margin"></div><!-- Space -->
    </div><!-- End .container -->
  </section><!-- End #content -->
</div>



<script type="text/javascript">
  function incrementQuantity(id){
    var value =  parseInt($('#quantity'+id).val())+1;
    $('#quantity'+id).val(value);
    $('#subtotal'+id).val(parseInt($('#price'+id).val())* value);
    $('#subtotalsec').val(parseInt($('#subtotalsec').val()) + parseInt($('#price'+id).val()));
    $('#subtotal').val(parseInt($('#subtotal').val()) + parseInt($('#price'+id).val()));

  }

  function decrementQuantity(id){
    var value = parseInt($('#quantity'+id).val());
    if(value > 1) {
      $('#quantity'+id).val(value-1);
      $('#subtotal'+id).val(parseInt($('#price'+id).val())* (value-1));
      $('#subtotalsec').val(parseInt($('#subtotalsec').val()) - parseInt($('#price'+id).val()));
      $('#subtotal').val(parseInt($('#subtotal').val()) - parseInt($('#price'+id).val()));
    }else{
      $('#quantity'+id).val(1);
    }
  }


</script>
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