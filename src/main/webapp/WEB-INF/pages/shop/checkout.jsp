<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 26.04.2016
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/pages/fragments/header_shop.jsp" %>


<div id="wrapper">
    <section id="content">
        <div class="md-margin"></div>
        <!-- .space -->
        <div class="container">
            <div class="row">
                <div id="columns" class="container">
                    <div class="row">
                        <div id="center_column" class="center_column col-xs-12 col-sm-12">
                            <header class="content-title">
                                <h1 class="title">Checkout</h1>

                                <p class="title-desc">Quisque elementum nibh at dolor pellentesque, a eleifend libero
                                    pharetra.</p>
                            </header>
                            <ul class="step clearfix" id="order_step">
                                <li class="
                                    <c:choose>
                                        <c:when test="${code eq 'login'}">step_current first</c:when>
                                        <c:otherwise>step_todo first</c:otherwise>
                                    </c:choose>"><span><em>01.</em> Login</span></li>
                                <li class="
                                    <c:choose>
                                        <c:when test="${code eq 'deliveryDetails'}">step_current second</c:when>
                                        <c:otherwise>step_todo second</c:otherwise>
                                    </c:choose>"><span><em>02.</em> Delivery details</span></li>
                                <li class="
                                    <c:choose>
                                        <c:when test="${code eq 'deliveryMethod'}">step_current third</c:when>
                                        <c:otherwise>step_todo third</c:otherwise>
                                    </c:choose>"><span><em>03.</em> Delivery method</span></li>
                                <li class="
                                     <c:choose>
                                        <c:when test="${code eq 'confirmOrder'}">step_current four</c:when>
                                        <c:otherwise>step_todo four</c:otherwise>
                                    </c:choose>"><span><em>04.</em> Confirm order</span></li>
                            </ul>
                            <%--<p class="alert alert-warning">Your shopping cart is empty.</p></div>
--%>
                            <c:if test="${code eq 'login'}">
                            <div id="checkout-option" class="collapse in">
                                <div class="panel-body">
                                    <div class="row">

                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <h2 class="checkout-title">New Customer</h2>

                                            <p>Register with us for future convenience:</p>

                                            <div class="xs-margin"></div>
                                            <div class="input-group custom-checkbox sm-margin">
                                                <input type="checkbox" data-toggle="collapse" data-target="#billing"> <span class="checbox-container">
											 	<i class="fa fa-check"></i>
											    </span>
                                                Checkout as Guest

                                            </div>

                                                <%--START SELECT BOX--%>

                                                <%--END SELECT BOX--%>
                                            <!-- End .input-group -->
                                            <div class="input-group custom-checkbox sm-margin">
                                                <input type="checkbox"> <span class="checbox-container">
											 	<i class="fa fa-check"></i>
											     </span>
                                                Register

                                            </div>
                                            <!-- End .input-group -->
                                            <p>By creating an account with our store, you will be able to move
                                                through the checkout process faster, store multiple shipping
                                                addresses, view and track your orders in your account and more.</p>

                                            <div class="md-margin"></div>

                                        </div>
                                        <!-- End .col-md-6 -->

                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <h2 class="checkout-title">Registered Customers</h2>

                                            <p>If you have an account with us, please log in.</p>


                                            <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-email"></span><span
                                                            class="input-text">Email&#42;</span></span>
                                                <input type="text" required class="form-control input-lg"
                                                       placeholder="Your Email">
                                            </div>
                                            <!-- End .input-group -->
                                            <div class="input-group xs-margin">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-password"></span><span
                                                            class="input-text">Password&#42;</span></span>
                                                <input type="text" required class="form-control input-lg"
                                                       placeholder="Your Password">
                                            </div>
                                            <!-- End .input-group -->
                                                <span class="help-block text-right"><a href="#">Forgot your
                                                    password?</a></span>

                                            <div class="input-group custom-checkbox sm-margin top-10px">
                                                <input type="checkbox"> <span class="checbox-container">
											 	<i class="fa fa-check"></i>
											    </span>
                                                Remember my password

                                                <div class="xs-margin"></div>
                                                <a href="/shop/checkout?code=deliveryDetails" class="btn btn-custom-2">CONTINUE 1</a>
                                            </div>
                                            <!-- End .input-group -->
                                        </div>
                                        <!-- End .col-md-6 -->

                                    </div>
                                    <!-- End.row -->


                                </div>
                                <!-- End .panel-body -->

                                </c:if>

                                <c:if test="${code eq 'deliveryDetails'}">

                                    <a href="/shop/checkout?code=deliveryMethod" class="btn btn-custom-2">CONTINUE 2</a>
                                </c:if>

                                <c:if test="${code eq 'deliveryMethod'}">

                                    <a href="/shop/checkout?code=confirmOrder" class="btn btn-custom-2">CONTINUE 3</a>
                                </c:if>

                                <c:if test="${code eq 'confirmOrder'}">

                                    <a href="/shop/checkout?code=login" class="btn btn-custom-2">CONTINUE 4</a>
                                </c:if>
                            </div>
                        </div>

                        <div class="col-md-12">

                            <div class="xs-margin"></div>
                            <!-- space -->
                            <form action="#" id="checkout-form">
                                <div class="panel-group custom-accordion" id="checkout">


                                    <div class="panel">
                                        <div class="accordion-header">
                                            <div class="accordion-title">2 Step: <span>Billing Information</span></div>
                                            <!-- End .accordion-title -->
                                            <a class="accordion-btn" data-toggle="collapse" data-target="#billing"></a>
                                        </div>
                                        <!-- End .accordion-header -->

                                        <div id="billing" class="collapse">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-6 col-xs-12">

                                                        <h2 class="checkout-title">Your personal details</h2>

                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-user"></span><span
                                                            class="input-text">First Name&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your First Name">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-user"></span><span
                                                            class="input-text">Last Name&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your Last Lame">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-email"></span><span
                                                            class="input-text">Email&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your Email">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-phone"></span><span
                                                            class="input-text">Telephone&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your Telephone">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-fax"></span><span
                                                            class="input-text">Fax</span></span>
                                                            <input type="text" class="form-control input-lg"
                                                                   placeholder="Your Fax">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group xlg-margin">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-company"></span><span
                                                            class="input-text">Company&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your Company">
                                                        </div>
                                                        <!-- End .input-group -->

                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-password"></span><span
                                                            class="input-text">Password&#42;</span></span>
                                                            <input type="password" required class="form-control input-lg"
                                                                   placeholder="Your Password">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group xlg-margin">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-password"></span><span
                                                            class="input-text">Password&#42;</span></span>
                                                            <input type="password" required class="form-control input-lg"
                                                                   placeholder="Your Password">
                                                        </div>
                                                        <!-- End .input-group -->

                                                        <div class="input-group custom-checkbox sm-margin">
                                                            <input type="checkbox"> <span class="checbox-container">
											 	<i class="fa fa-check"></i>
											 </span>
                                                            I wish to subscribe to the Venedor newsletter.

                                                        </div>
                                                        <!-- End .input-group -->

                                                        <div class="input-group custom-checkbox sm-margin">
                                                            <input type="checkbox"> <span class="checbox-container">
											 	<i class="fa fa-check"></i>
											 </span>
                                                            My delivery and billing addresses are the same.

                                                        </div>
                                                        <!-- End .input-group -->

                                                    </div>
                                                    <!-- End .col-md-6 -->

                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <h2 class="checkout-title">Your Address</h2>

                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-address"></span><span
                                                            class="input-text">Address 1&#42;</span></span>
                                                            <input type="text" class="form-control input-lg"
                                                                   placeholder="Your Address">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-address"></span><span
                                                            class="input-text">Address 2&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your Address">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-city"></span><span
                                                            class="input-text">City&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your City">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-postcode"></span><span
                                                            class="input-text">Post Code&#42;</span></span>
                                                            <input type="text" required class="form-control input-lg"
                                                                   placeholder="Your Post Code">
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-country"></span><span
                                                            class="input-text">Country&#42;</span></span>
                                                            <select name="select-country" class="form-control input-lg"
                                                                    id="select-country">
                                                                <option value=" "></option>
                                                                <option value="America">America</option>
                                                                <option value="Italy">Italy</option>
                                                                <option value="France">France</option>
                                                                <option value="Spain">Spain</option>
                                                                <option value="Brazil">Brazil</option>
                                                            </select>
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group lg-margin">
                                                    <span class="input-group-addon"><span
                                                            class="input-icon input-icon-region"></span><span
                                                            class="input-text">Region / State&#42;</span></span>
                                                            <select name="select-state" class="form-control input-lg"
                                                                    id="select-state">
                                                                <option value=" "></option>
                                                                <option value="California">California</option>
                                                                <option value="Narnia">Narnia</option>
                                                            </select>
                                                        </div>
                                                        <!-- End .input-group -->
                                                        <div class="input-group custom-checkbox md-margin">
                                                            <input type="checkbox"> <span class="checbox-container">
											 	<i class="fa fa-check"></i>
											 </span>
                                                            I have reed and agree to the <a href="#">Privacy Policy</a>.

                                                        </div>
                                                        <!-- End .input-group -->
                                                        <a href="#" class="btn btn-custom-2">CONTINUE</a>
                                                    </div>
                                                    <!-- End .col-md-6 -->

                                                </div>
                                                <!-- End .row -->
                                            </div>
                                            <!-- End .panel-body -->
                                        </div>
                                        <!-- End .panel-collapse -->

                                    </div>
                                    <!-- End .panel -->

                                    <div class="panel">
                                        <div class="accordion-header">
                                            <div class="accordion-title">3 Step: <span>Delivery Details</span></div>
                                            <!-- End .accordion-title -->
                                            <a class="accordion-btn" data-toggle="collapse" data-target="#delivery-details"></a>
                                        </div>
                                        <!-- End .accordion-header -->

                                        <div id="delivery-details" class="collapse">
                                            <div class="panel-body">
                                                <p>Details about delivery</p>
                                            </div>
                                            <!-- End .panel-body -->
                                        </div>
                                        <!-- End .panel-collapse -->

                                    </div>
                                    <!-- End .panel -->


                                    <div class="panel">
                                        <div class="accordion-header">
                                            <div class="accordion-title">6 Step: <span>Confirm Order</span></div>
                                            <!-- End .accordion-title -->
                                            <a class="accordion-btn opened" data-toggle="collapse" data-target="#confirm"></a>
                                        </div>
                                        <!-- End .accordion-header -->

                                        <div id="confirm" class="collapse in">
                                            <div class="panel-body">

                                                <div class="table-responsive">
                                                    <c:set var="totalPrice" value="0"/>
                                                    <table class="table checkout-table">
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
                                                                        <a href="#"><img src="${cart.product.picture}"
                                                                                         alt="${cart.product.name}"></a>
                                                                    </figure>
                                                                    <header class="item-name"><a
                                                                            href="#">${cart.product.name}</a></header>
                                                                    <ul>
                                                                        <li>Weight: ${cart.product.weight}</li>
                                                                    </ul>
                                                                </td>
                                                                <td class="item-code">${cart.product.id}</td>
                                                                    <%--PRET--%>
                                                                <td class="item-price-col">
                        <span class="item-price-special">
                         <input type="text" name="price${cart.product.id}" id="price${cart.product.id}" disabled
                                value="${cart.product.price}">  Lei
                        </span>
                                                                </td>
                                                                    <%--CANTITATE--%>
                                                                <td>
                                                                    <div class="custom-quantity-input">
                                                                        <input type="text" name="quantity${cart.product.id}"
                                                                               id="quantity${cart.product.id}"
                                                                               value="${cart.quantity}">
                                                                        <a onclick="incrementQuantity(${cart.product.id})"
                                                                           class="quantity-btn quantity-input-up"><i
                                                                                class="fa fa-angle-up"></i></a>
                                                                        <a onclick="decrementQuantity(${cart.product.id})"
                                                                           class="quantity-btn quantity-input-down"><i
                                                                                class="fa fa-angle-down"></i></a>
                                                                    </div>
                                                                </td>
                                                                    <%--SUBTOTAL--%>
                                                                <td class="item-total-col">
                        <span class="item-price-special">
                          <input type="text" id="subtotal${cart.product.id}" name="subtotal${cart.product.id}"
                                 value="${cart.product.price * cart.quantity}"> Lei
                        </span>
                                                                    </span>
                                                                    <a href="/shop/cart/delete?productId=${cart.product.id}"
                                                                       class="close-button"></a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>

                                                </div>
                                                <!-- End .table-reponsive -->
                                                <div class="xs-margin"></div>
                                                <!-- End .space -->
                                                <div class="row">
                                                    <div class="col-md-8 col-sm-12 col-xs-12">
                                                        <div class="xs-margin"></div>
                                                        <!-- space -->
                                                    </div>

                                                    <div class="col-md-4 col-sm-12 col-xs-12" align="right">

                                                        <table class="table total-table">
                                                            <tbody>
                                                            <tr>
                                                                <td class="total-table-title">Subtotal:</td>
                                                                <td><input type="text" id="subtotalsec" name="subtotalsec"
                                                                           value="${totalPrice}"> Lei
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="total-table-title">Shipping:</td>
                                                                <c:choose>
                                                                    <c:when test="${shipping eq null}">
                                                                        <td>Enter destination</td>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <td><input type="text" id="shipping" name="shipping" value="${shipping}"> Lei
                                                                        </td>
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
                                                                <td><input type="text" id="subtotal" name="subtotal" value="${totalPrice}"> Lei
                                                                </td>
                                                            </tr>
                                                            </tfoot>
                                                        </table>
                                                    </div>
                                                    <!-- End .col-md-4 -->
                                                </div>
                                                <!-- End .row -->
                                                <div class="xs-margin"></div>
                                                <!-- End .space -->
                                                <div class="text-right">
                                                    <input type="submit" class="btn btn-custom-2" value="CONFIRM ORDER">
                                                </div>
                                            </div>
                                            <!-- End .panel-body -->
                                        </div>
                                        <!-- End .panel-collapse -->

                                    </div>
                                    <!-- End .panel -->
                                </div>
                                <!-- End .panel-group #checkout -->
                            </form>
                            <div class="xlg-margin"></div>
                            <!-- space -->
                        </div>
                        <!-- End .col-md-12 -->
                    </div>
                    <!-- End .row -->
                </div>
                <!-- End #container -->
            </div>
            <!-- End .row -->
        </div>
        <!-- End #container -->
    </section>
    <!-- End #content -->
</div>


<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp" %>

<script type="text/javascript">
    function incrementQuantity(id) {
        var value = parseInt($('#quantity' + id).val()) + 1;
        $('#quantity' + id).val(value);
        $('#subtotal' + id).val(parseInt($('#price' + id).val()) * value);
        $('#subtotalsec').val(parseInt($('#subtotalsec').val()) + parseInt($('#price' + id).val()));
        $('#subtotal').val(parseInt($('#subtotal').val()) + parseInt($('#price' + id).val()));

        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");
        $(document).ajaxSend(function (e, xhr, options) {
            xhr.setRequestHeader(header, token);
        });

        $.ajax({
            type: "GET",
            url: "/shop/addProductCart",
            data: {product_id: id}

        });

    }

    function decrementQuantity(id) {
        var value = parseInt($('#quantity' + id).val());
        if (value > 1) {
            $('#quantity' + id).val(value - 1);
            $('#subtotal' + id).val(parseInt($('#price' + id).val()) * (value - 1));
            $('#subtotalsec').val(parseInt($('#subtotalsec').val()) - parseInt($('#price' + id).val()));
            $('#subtotal').val(parseInt($('#subtotal').val()) - parseInt($('#price' + id).val()));

            var token = $("meta[name='_csrf']").attr("content");
            var header = $("meta[name='_csrf_header']").attr("content");
            $(document).ajaxSend(function (e, xhr, options) {
                xhr.setRequestHeader(header, token);
            });

            $.ajax({
                type: "GET",
                url: "/shop/addProductCart",
                data: {product_id: id, decrement: true}

            });
        } else {
            $('#quantity' + id).val(1);
        }


    }


</script>
<script type="text/javascript">
    function countySelected(aaa) {
        var value = $(aaa).val();

        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");
        $(document).ajaxSend(function (e, xhr, options) {
            xhr.setRequestHeader(header, token);
        });

        <%--console.log(value);--%>
        $.ajax({
            type: "POST",
            url: "/shop/cart/getLocality",
            data: {countyName: value},
            success: function (response) {
                var text = '<option value="-">-</option>\n';
                for (var i = 0; i < response.length; i++) {
                    text = text + '<option value="' + response[i] + '">' + response[i] + '</option>' + '\n';
                }
                $('#locality').html(text);
            }
        });

    }
</script>
