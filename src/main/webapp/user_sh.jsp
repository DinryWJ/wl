<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>搜索 用户端 物流信息管理平台</title>

  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">
  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <!-- DEMO ONLY: Function for the proper stylesheet loading according to the demo settings -->
  <script>function _pxDemo_loadStylesheet(a,b,c){var c=c||decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"Frost"),d="rtl"===document.getElementsByTagName("html")[0].getAttribute("dir");document.write(a.replace(/^(.*?)((?:\.min)?\.css)$/,'<link href="$1'+(c.indexOf("dark")!==-1&&a.indexOf("/css/")!==-1&&a.indexOf("/themes/")===-1?"-dark":"")+(!d||0!==a.indexOf("assets/css")&&0!==a.indexOf("assets/demo")?"":".rtl")+'$2" rel="stylesheet" type="text/css"'+(b?'class="'+b+'"':"")+">"))}</script>

  <!-- DEMO ONLY: Set RTL direction -->
  <script>"ltr"!==document.getElementsByTagName("html")[0].getAttribute("dir")&&"1"===decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-rtl")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"0")&&document.getElementsByTagName("html")[0].setAttribute("dir","rtl");</script>

  <!-- DEMO ONLY: Load PixelAdmin core stylesheets -->
  <script>
    _pxDemo_loadStylesheet('assets/css/bootstrap.min.css', 'px-demo-stylesheet-bs');
    _pxDemo_loadStylesheet('assets/css/pixeladmin.min.css', 'px-demo-stylesheet-core');
    _pxDemo_loadStylesheet('assets/css/widgets.min.css', 'px-demo-stylesheet-widgets');
  </script>

  <!-- DEMO ONLY: Load theme -->
  <script>
    function _pxDemo_loadTheme(a){var b=decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"Frost");_pxDemo_loadStylesheet(a+b+".min.css","px-demo-stylesheet-theme",b)}
    _pxDemo_loadTheme('assets/css/themes/');
  </script>

  <!-- Demo assets -->
  <script>_pxDemo_loadStylesheet('assets/demo/demo.css');</script>
  <!-- / Demo assets -->

  <!-- holder.js -->
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/holder/2.9.0/holder.js"></script>

  <!-- Pace.js -->
  <script src="assets/pace/pace.min.js"></script>

  <script src="assets/demo/demo.js"></script>
</head>
<body>
	<jsp:include page="user_around.jsp"></jsp:include>
  <div class="px-content">
    <!-- Header -->

    <div class="page-header panel m-b-0 p-y-0 b-a-0 border-radius-0">
      <form action="" method="GET" class="input-group input-group-lg p-y-3">
        <input type="text" name="s" class="form-control" placeholder="Search for...">
        <span class="input-group-btn">
          <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
        </span>
      </form>

      <hr class="page-wide-block m-y-0">

      <ul class="search-nav nav nav-tabs nav-tabs-simple nav-sm page-block b-b-0">
        <li class="active"><a href="#results-pages" data-toggle="tab">Pages</a></li>
        <li><a href="#results-products" data-toggle="tab">Products</a></li>
        <li><a href="#results-people" data-toggle="tab">People</a></li>
        <li><a href="#results-comments" data-toggle="tab">Comments</a></li>
      </ul>
    </div>

    <hr class="page-wide-block m-t-0 b-t-2">

    <!-- / Header -->

    <div class="tab-content p-y-0">

      <!-- Pages -->

      <div class="tab-pane fade in active" id="results-pages">
        <div class="m-b-3 text-muted font-size-12"><strong>125</strong> pages found (0.47 seconds)</div>

        <div class="panel">
          <div class="panel-body">
            <div class="font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>
            <div class="p-b-2 text-success"><a href="#">http://example.com/some/page</a></div>

            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat.
          </div>
          <div class="panel-footer font-size-12">
            <a href="#" class="label label-outline">Lorem</a>
            <a href="#" class="label label-outline">Ipsum</a>
            <a href="#" class="label label-outline">Dolor</a>
          </div>
        </div>

        <div class="panel">
          <div class="panel-body">
            <div class="font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>
            <div class="p-b-2 text-success"><a href="#">http://example.com/some/page</a></div>

            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat.
          </div>
        </div>

        <div class="panel">
          <div class="panel-body">
            <div class="p-b-2 font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>

            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat.
          </div>
          <div class="panel-footer font-size-12">
            <a href="#" class="label label-outline">Lorem</a>
            <a href="#" class="label label-outline">Ipsum</a>
            <a href="#" class="label label-outline">Dolor</a>
          </div>
        </div>

        <div class="panel">
          <div class="panel-body">
            <div class="p-b-2 font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>

            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat.
          </div>
        </div>

        <div class="panel">
          <div class="panel-body">
            <div class="font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>
            <div class="text-success"><a href="#">http://example.com/some/page</a></div>
          </div>
        </div>

        <div class="panel">
          <div class="panel-body">
            <div class="font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>
          </div>
        </div>

        <div class="panel">
          <div class="panel-body">
            <div class="font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>
            <div class="p-b-2 clearfix font-size-12">
              <!-- Rating widget -->
              <div class="widget-rating pull-xs-left m-r-2">
                <input type="radio" value="5" name="widget-rating-1" id="widget-rating-1_star-5" disabled>
                <label for="widget-rating-1_star-5"><i class="fa fa-star"></i></label>

                <input type="radio" value="4" name="widget-rating-1" id="widget-rating-1_star-4" disabled checked>
                <label for="widget-rating-1_star-4"><i class="fa fa-star"></i></label>

                <input type="radio" value="3" name="widget-rating-1" id="widget-rating-1_star-3" disabled>
                <label for="widget-rating-1_star-3"><i class="fa fa-star"></i></label>

                <input type="radio" value="2" name="widget-rating-1" id="widget-rating-1_star-2" disabled>
                <label for="widget-rating-1_star-2"><i class="fa fa-star"></i></label>

                <input type="radio" value="1" name="widget-rating-1" id="widget-rating-1_star-1" disabled>
                <label for="widget-rating-1_star-1"><i class="fa fa-star"></i></label>
              </div>
              <!-- / Rating widget -->

              <div class="pull-xs-left text-muted">Rating: 8.4/10 - ‎530,521 votes</div>
            </div>

            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat.
          </div>
        </div>

        <div class="panel">
          <div class="panel-body">
            <div class="p-b-2 font-weight-semibold font-size-16"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></div>

            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat.
          </div>
          <div class="panel-footer">
            <button type="button" class="btn btn-xs btn-outline"><i class="fa fa-thumbs-up text-success"></i> Like</button>
            <button type="button" class="btn btn-xs btn-outline"><i class="fa fa-link text-info"></i> Share</button>
            <button type="button" class="btn btn-xs btn-outline"><i class="fa fa-star text-warning"></i> Favorite</button>
          </div>
        </div>

        <nav class="pagination pagination-sm m-a-0">
          <li class="disabled"><a href="#">«</a></li>
          <li class="active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">»</a></li>
        </nav>

      </div>

      <!-- / Pages -->

      <!-- Products -->

      <div class="tab-pane fade" id="results-products">
        <div class="m-b-3 text-muted font-size-12"><strong>39</strong> products found (0.47 seconds)</div>
        <div class="row">
          <div class="clearfix">

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/1.jpg">
                <span class="widget-products-overlay"></span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/2.jpg">
                <span class="widget-products-overlay"></span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/3.jpg">
                <span class="widget-products-overlay"></span>
                <span class="label label-ribbon right label-danger">HOT</span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/4.jpg">
                <span class="widget-products-overlay"></span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/5.jpg">
                <span class="widget-products-overlay"></span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/6.jpg">
                <span class="widget-products-overlay"></span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/7.jpg">
                <span class="widget-products-overlay"></span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

            <div class="widget-products-item col-xs-12 col-sm-6 col-md-4 col-xl-3">
              <a href="#" class="widget-products-image">
                <img src="assets/demo/thumbs/8.jpg">
                <span class="widget-products-overlay"></span>
              </a>
              <a href="#" class="widget-products-title">
                Some product
                <span class="widget-products-price pull-xs-right label label-tag label-success">$22</span>
              </a>
              <div class="widget-products-footer text-muted">
                <i class="fa fa-shopping-cart"></i> 1,121
                <i class="fa fa-thumbs-up p-l-1"></i> 2,423
                <i class="fa fa-comments p-l-1"></i> 523
              </div>
            </div>

          </div>
          <div class="col-xs-12">
            <a href="#" class="widget-more-link p-y-3 b-a-1 font-size-14 font-weight-normal">Load more</a>
          </div>
        </div>

      </div>

      <!-- / Products -->

      <!-- People -->

      <div class="tab-pane fade" id="results-people">
        <div class="m-b-3 text-muted font-size-12"><strong>120</strong> persons found (0.47 seconds)</div>
        <div class="row">

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/2.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-success"><i class="fa fa-check"></i>&nbsp;&nbsp;Following</a></div>
              <a href="#" class="widget-followers-name">Robert Jang</a>
              <a href="#" class="widget-followers-username">@rjang</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/3.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Michelle Bortz</a>
              <a href="#" class="widget-followers-username">@mbortz</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/4.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-success"><i class="fa fa-check"></i>&nbsp;&nbsp;Following</a></div>
              <a href="#" class="widget-followers-name">Timothy Owens</a>
              <a href="#" class="widget-followers-username">@towens</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/5.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Denise Steiner</a>
              <a href="#" class="widget-followers-username">@dsteiner</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/1.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">John Doe</a>
              <a href="#" class="widget-followers-username">@jdoe</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/2.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Robert Jang</a>
              <a href="#" class="widget-followers-username">@rjang</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/3.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Michelle Bortz</a>
              <a href="#" class="widget-followers-username">@mbortz</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/4.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Timothy Owens</a>
              <a href="#" class="widget-followers-username">@towens</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/5.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Denise Steiner</a>
              <a href="#" class="widget-followers-username">@dsteiner</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/1.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">John Doe</a>
              <a href="#" class="widget-followers-username">@jdoe</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/2.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Robert Jang</a>
              <a href="#" class="widget-followers-username">@rjang</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/3.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Michelle Bortz</a>
              <a href="#" class="widget-followers-username">@mbortz</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/4.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Timothy Owens</a>
              <a href="#" class="widget-followers-username">@towens</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/5.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">Denise Steiner</a>
              <a href="#" class="widget-followers-username">@dsteiner</a>
            </div>
          </div>

          <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4">
            <div class="panel widget-followers-item bg-transparent">
              <img src="assets/demo/avatars/1.jpg" alt="" class="widget-followers-avatar">
              <div class="widget-followers-controls"><a href="#" class="btn btn-sm btn-outline">Follow</a></div>
              <a href="#" class="widget-followers-name">John Doe</a>
              <a href="#" class="widget-followers-username">@jdoe</a>
            </div>
          </div>

        </div>
        <a href="#" class="widget-more-link p-y-3 b-a-1 font-size-14 font-weight-normal">Load more</a>
      </div>

      <!-- / People -->

      <!-- Comments -->

      <div class="tab-pane fade" id="results-comments">
        <div class="m-b-3 text-muted font-size-12"><strong>368</strong> comments found (0.47 seconds)</div>
        <div class="panel">

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/5.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Denise Steiner</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/3.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Michelle Bortz</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/2.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Robert Jang</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/4.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Timothy Owens</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/5.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Denise Steiner</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/3.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Michelle Bortz</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/2.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Robert Jang</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

          <div class="widget-comments-item">
            <img src="assets/demo/avatars/4.jpg" alt="" class="widget-comments-avatar">
            <div class="widget-comments-header">
              <a href="#" title="">Timothy Owens</a> commented on <a href="#" title="">Article Name</a>
            </div>
            <div class="widget-comments-text">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.
            </div>
            <div class="widget-comments-footer">2 hours ago</div>
          </div>

        </div>
        <nav>
          <ul class="pagination pagination-sm m-a-0">
            <li class="disabled"><a href="#">«</a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">»</a></li>
          </ul>
        </nav>
      </div>

      <!-- / Comments -->

    </div>
  </div>




  <!-- ==============================================================================
  |
  |  SCRIPTS
  |
  =============================================================================== -->

  <!-- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/pixeladmin.min.js"></script>

  <script>
    // -------------------------------------------------------------------------
    // Initialize DEMO sidebar

    $(function() {
      pxDemo.initializeDemoSidebar();

      $('#px-demo-sidebar').pxSidebar();
      pxDemo.initializeDemo();
    });
  </script>

  <script type="text/javascript">
    // -------------------------------------------------------------------------
    // Initialize DEMO

    $(function() {
      var file = String(document.location).split('/').pop();

      // Remove unnecessary file parts
      file = file.replace(/(\.html).*/i, '$1');

      if (!/.html$/i.test(file)) {
        file = 'index.html';
      }

      // Activate current nav item
      $('body > .px-nav')
        .find('.px-nav-item > a[href="' + file + '"]')
        .parent()
        .addClass('active');

      $('body > .px-nav').pxNav();
      $('body > .px-footer').pxFooter();

      $('#navbar-notifications').perfectScrollbar();
      $('#navbar-messages').perfectScrollbar();
    });
  </script>
    <script>
    // -------------------------------------------------------------------------
    // Initialize page components

    $(function() {
      $('.nav-tabs').pxTabResize();
    });
  </script>
</body>
</html>
