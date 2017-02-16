<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 12.05.2016
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/pages/fragments/header_shop.jsp" %>


<div id="wrapper">
    <section id="content">
        <div class="md-margin"></div>
        <!-- .space -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <header class="content-title">
                        <h1 class="title">Contact Us</h1>

                        <p class="title-desc">We love to here from you. Lets get in touch.</p>
                    </header>
                    <div class="xs-margin"></div>
                    <!-- space -->
                    <div class="row">

                        <div class="col-md-12">
                            <div id="map">
                                <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3568.5161245253007!2d25.683761415965478!3d45.15107887909853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40b30105fa725bbb%3A0x4da84d3ccde5a2fa!2sStrada+Colinei%2C+Breaza+de+Jos!5e1!3m2!1sro!2sro!4v1463064464526" width="1000" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
                                <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d203426.92426598666!2d25.738255523737358!3d45.16712346151582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40b303f96a37e805%3A0x61765eee85e7543f!2sBreaza!5e1!3m2!1sro!2sro!4v1463064711592" width="1130" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
                            </div>
                            <!-- End #map -->
                        </div>
                        <!-- End .col-md-12 -->

                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <h2 class="sub-title">LEAVE COMMENT</h2>

                            <div class="row">
                                <form action="#" id="contact-form">
                                    <div class="col-md-6 col-sm-12 col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><span class="input-icon input-icon-user"></span><span class="input-text">Name&#42;</span></span>
                                            <input type="text" name="contact-name" id="contact-name" required class="form-control input-lg" placeholder="Your Name">
                                        </div>
                                        <!-- End .input-group -->
                                        <div class="input-group">
                                            <span class="input-group-addon"><span class="input-icon input-icon-email"></span><span class="input-text">Email&#42;</span></span>
                                            <input type="email" name="contact-email" id="contact-email" required class="form-control input-lg" placeholder="Your Email">
                                        </div>
                                        <!-- End .input-group -->
                                        <div class="input-group">
                                            <span class="input-group-addon"><span class="input-icon input-icon-subject"></span><span class="input-text">Subject&#42;</span></span>
                                            <input type="text" name="contact-subject" id="contact-subject" required class="form-control input-lg" placeholder="Subject">
                                        </div>
                                        <!-- End .input-group -->
                                        <p class="item-desc">Your email address will not be published. Required
                                            fields are marked *</p>
                                    </div>
                                    <!-- End .col-md-6 -->

                                    <div class="col-md-6 col-sm-12 col-xs-12">
                                        <div class="input-group textarea-container">
                                            <span class="input-group-addon"><span class="input-icon input-icon-message"></span><span class="input-text">Your Comment</span></span>
                                            <textarea name="contact-message" id="contact-message" class="form-control" cols="30" rows="6" placeholder="Your Message"></textarea>
                                        </div>
                                        <!-- End .input-group -->
                                        <input type="submit" value="SUBMIT" class="btn btn-custom-2 md-margin">
                                    </div>
                                    <!-- End .col-md-6 -->
                                </form>
                            </div>
                            <!-- End .row -->

                        </div>
                        <!-- End .col-md-8 -->

                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <h2 class="sub-title">CONTACT DETAILS</h2>
                            <ul class="contact-details-list">
                                <li>
                                    <span class="contact-icon contact-icon-phone"></span>
                                    <ul>
                                        <li>0203 280 3703</li>
                                        <li>0203 281 3704</li>
                                    </ul>
                                </li>
                                <li>
                                    <span class="contact-icon contact-icon-mobile"></span>
                                    <ul>
                                        <li>445-115-747-38</li>
                                        <li>445-170-029-32</li>
                                    </ul>
                                </li>
                                <li>
                                    <span class="contact-icon contact-icon-email"></span>
                                    <ul>
                                        <li>Venedor@gmail.com</li>
                                        <li>Venedor@aol.com</li>
                                    </ul>
                                </li>
                                <li>
                                    <span class="contact-icon contact-icon-skype"></span>
                                    <ul>
                                        <li>Venedor_store</li>
                                        <li>Venedor_support</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- End .col-md-4 -->
                    </div>
                    <!-- End .row -->
                </div>
            </div>
        </div>
        <!-- End #container -->
    </section>
    <!-- End #content -->
</div>
<!-- Google map javascript api v3 -->
<%--<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyARh_zzXKCSjKclLueAD1nd4W3pvmHdxzQp;sensor=false"></script>--%>

<script>
    // This example displays a map with the language and region set
    // to Japan. These settings are specified in the HTML script element
    // when loading the Google Maps JavaScript API.
    // Setting the language shows the map in the language of your choice.
    // Setting the region biases the geocoding results to that region.
    /*function initMap() {
     var map = new google.maps.Map(document.getElementById('map'), {
     zoom: 8,
     center: {lat: 45.1872211, lng: 25.6534672}
     });
     }*/
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDVCYTekK2q3p8_Gr4QLcm5LdyUP_9Rz3s&callback=initMap&language=ro&region=RO"
        async defer>
</script>

<%--AIzaSyARh_zzXKCSjKclLueAD1nd4W3pvmHdxzQ--%>

<%--AIzaSyDVCYTekK2q3p8_Gr4QLcm5LdyUP_9Rz3s--%>

<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp" %>
