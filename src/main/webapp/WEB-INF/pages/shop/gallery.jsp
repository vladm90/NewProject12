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
          <header class="content-title">
            <h1 class="title">Portfolio</h1>
            <p class="title-desc">Look at all works of out authors.</p>
          </header>

          <ul id="portfolio-filter" class="clearfix">
            <li><a href="#" class="active" data-filter="*">All</a></li>
            <li><a href="#" data-filter=".photography">Photography</a></li>
            <li><a href="#" data-filter=".fashion">Fashion</a></li>
            <li><a href="#" data-filter=".video">Video</a></li>
            <li><a href="#" data-filter=".design">Design</a></li>
            <li><a href="#" data-filter=".wordpress">Wordpress</a></li>
          </ul><!-- End .portfolio-filter -->

          <div class="row portfolio-item-container" data-max-col="2">
            <div class="col-md-6 col-sm-6 col-xs-6 portfolio-item photography">
              <figure>
                <img src="/images/portfolio/portfolio1.jpg" alt="Portfolio item 1">
                <figcaption>
                  <a href="/images/portfolio/portfolio1.jpg" title="Portfolio item 1" data-rel="prettyPhoto" class="zoom-button"></a>
                  <a href="single-portfolio.html" class="link-button"></a>
                  <a href="#" class="like-button"><i class="fa fa-heart"></i><span>15</span></a>
                </figcaption>
              </figure>
              <h2><a href="#">Lorem ipsum dolor</a></h2>
              <p><a href="#">Photography</a></p>
            </div><!-- End .portfolio-item -->
            <div class="col-md-6 col-sm-6 col-xs-6 portfolio-item wordpress">
              <figure>
                <img src="/images/portfolio/portfolio2.jpg" alt="Portfolio item 2">
                <figcaption>
                  <a href="/images/portfolio/portfolio2.jpg" title="Portfolio item 2" data-rel="prettyPhoto" class="zoom-button"></a>
                  <a href="single-portfolio.html" class="link-button"></a>
                  <a href="#" class="like-button"><i class="fa fa-heart"></i><span>19</span></a>
                </figcaption>
              </figure>
              <h2><a href="#">Lorem ipsum dolor</a></h2>
              <p><a href="#">Design</a>, <a href="#">Wordpress</a></p>
            </div><!-- End .portfolio-item -->
            <div class="col-md-6 col-sm-6 col-xs-6 portfolio-item photography video">
              <figure>
                <img src="/images/portfolio/portfolio3.jpg" alt="Portfolio item 3">
                <figcaption>
                  <a href="http://www.youtube.com/watch?v=vEkwlqsdbyk" title="Portfolio Video Example" data-rel="prettyPhoto" class="zoom-button"></a>
                  <a href="single-portfolio.html" class="link-button"></a>
                  <a href="#" class="like-button"><i class="fa fa-heart"></i><span>7</span></a>
                </figcaption>
              </figure>
              <h2><a href="#">Lorem ipsum dolor</a></h2>
              <p><a href="#">Photography</a>, <a href="#">Video</a></p>
            </div><!-- End .portfolio-item -->
            <div class="col-md-6 col-sm-6 col-xs-6 portfolio-item photography">
              <figure>
                <img src="/images/portfolio/portfolio4.jpg" alt="Portfolio item 4">
                <figcaption>
                  <a href="/images/portfolio/portfolio4.jpg" title="Portfolio item 4" data-rel="prettyPhoto" class="zoom-button"></a>
                  <a href="single-portfolio.html" class="link-button"></a>
                  <a href="#" class="like-button"><i class="fa fa-heart"></i><span>5</span></a>
                </figcaption>
              </figure>
              <h2><a href="#">Lorem ipsum dolor</a></h2>
              <p><a href="#">Design</a>, <a href="#">Wordpress</a>, <a href="#">Video</a></p>
            </div><!-- End .portfolio-item -->
            <div class="col-md-6 col-sm-6 col-xs-6 portfolio-item fashion photography">
              <figure>
                <img src="/images/portfolio/portfolio5.jpg" alt="Portfolio item 5">
                <figcaption>
                  <a href="/images/portfolio/portfolio5.jpg" title="Portfolio item 5" data-rel="prettyPhoto" class="zoom-button"></a>
                  <a href="single-portfolio.html" class="link-button"></a>
                  <a href="#" class="like-button"><i class="fa fa-heart"></i><span>18</span></a>
                </figcaption>
              </figure>
              <h2><a href="#">Lorem ipsum dolor</a></h2>
              <p><a href="#">Fashion</a>, <a href="#">Photography</a></p>
            </div><!-- End .portfolio-item -->
            <div class="col-md-6 col-sm-6 col-xs-6 portfolio-item design wordpress">
              <figure>
                <img src="/images/portfolio/portfolio6.jpg" alt="Portfolio item 6">
                <figcaption>
                  <a href="/images/portfolio/portfolio6.jpg" title="Portfolio item 6" data-rel="prettyPhoto" class="zoom-button"></a>
                  <a href="single-portfolio.html" class="link-button"></a>
                  <a href="#" class="like-button"><i class="fa fa-heart"></i><span>41</span></a>
                </figcaption>
              </figure>
              <h2><a href="#">Lorem ipsum dolor</a></h2>
              <p><a href="#">Design</a>, <a href="#">Wordpress</a></p>
            </div><!-- End .portfolio-item -->

          </div><!-- .portfolio-item-container -->

          <div class="pagination-container clear-border clearfix">

            <div class="pull-right">
              <ul class="pagination">
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
              </ul>
            </div><!-- End .pull-right -->
          </div><!-- End pagination-container -->


        </div><!-- End .col-md-12 -->
      </div><!-- End .row -->


    </div><!-- End #container -->
  </section><!-- End #content -->
</div>




<%@ include file="/WEB-INF/pages/fragments/footer_shop.jsp"%>