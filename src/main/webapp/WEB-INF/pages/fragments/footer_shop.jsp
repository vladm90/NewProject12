<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 22.04.2016
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>

    <div id="wrapper">
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
                <h3>CONTACT INFORMATION</h3>

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
    <script src="/js/jquery.jscrollpane.min.js"></script>
    <script src="/js/jquery.nouislider.min.js"></script>
    <script src="/js/jquery.sequence-min.js"></script>
    <script src="/js/colpick.js"></script>
    <script src="/js/main.js"></script>

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
