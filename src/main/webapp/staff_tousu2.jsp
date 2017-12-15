<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>投诉2 工作人员端 物流信息管理平台</title>

  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">
  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <!-- DEMO ONLY: Function for the proper stylesheet loading according to the demo settings -->
  <script>function _pxDemo_loadStylesheet(a,b,c){var c=c||decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"Default"),d="rtl"===document.getElementsByTagName("html")[0].getAttribute("dir");document.write(a.replace(/^(.*?)((?:\.min)?\.css)$/,'<link href="$1'+(c.indexOf("dark")!==-1&&a.indexOf("/css/")!==-1&&a.indexOf("/themes/")===-1?"-dark":"")+(!d||0!==a.indexOf("assets/css")&&0!==a.indexOf("assets/demo")?"":".rtl")+'$2" rel="stylesheet" type="text/css"'+(b?'class="'+b+'"':"")+">"))}</script>

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
    function _pxDemo_loadTheme(a){var b=decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"Default");_pxDemo_loadStylesheet(a+b+".min.css","px-demo-stylesheet-theme",b)}
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
  <style>

    /* Common styles */

    .box, .box-row, .box-cell { overflow: visible !important; -webkit-mask-image: none !important; }
    .page-messages-container > .box-row > .box-cell { display: block !important; }

    .page-messages-label {
      width: 8px;
      height: 8px;
      display: block;
      border-radius: 999px;
      float: left;
      margin-top: 6px;
      margin-right: 12px;
    }

    html[dir="rtl"] .page-messages-label {
      float: right;
      margin-left: 12px;
      margin-right: 0;
    }

    #page-messages-aside-nav {
      max-height: 0;
      overflow: hidden;
      -webkit-transition: max-height .3s;
      transition: max-height .3s;
    }

    #page-messages-aside-nav.show { max-height: 2000px; }

    @media (min-width: 768px) {
      .page-messages-container > .box-row > .box-cell {
        display: table-cell !important;
        padding-top: 15px;
      }
      .page-messages-aside { width: 200px; }
      .page-messages-content { padding-left: 20px; }

      html[dir="rtl"] .page-messages-content {
        padding-left: 0;
        padding-right: 20px;
      }

      #page-messages-aside-nav { max-height: none !important; }

      .page-messages-wide-buttons .btn { width: 60px; }
    }

    /* Special styles */

    .page-messages-item-label {
      vertical-align: text-bottom;
    }
  </style>
</head>
<body>
<jsp:include page="staff_around.jsp"></jsp:include>
  <div class="px-content">
    <div class="page-header">
      <h1>投诉具体内容</h1>
    </div>
      <!-- Content -->

        <div class="page-messages-content box-cell valign-top">
          

        
            <!-- Info -->

            <div class="panel-body p-y-1 clearfix">
              <div class="box m-a-0 valign-middle">
                <div class="box-cell col-md-8">
                  <div class="box-container">
                    <div class="box-row">
                      <div class="box-cell" style="width: 40px;">
                        <img src="assets/demo/avatars/3.jpg" alt="" class="border-round" style="width: 100%;">
                      </div>
                      <div class="box-cell p-l-2">
                        <div class="font-size-14">物品编号</div>
                        <div class="font-size-12 text-muted">投诉人</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="box-cell text-muted col-md-4 text-md-right">
                  <!-- Spacer -->
                  <div class="m-t-2 visible-xs visible-sm"></div>

                  August 11 (3 days ago)
                </div>
              </div>
            </div>

            <!-- / Info -->

            <hr class="m-y-0">

            <!-- Message -->

            <div class="panel-body font-size-14">
              <p>Hi John,</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
              <blockquote>
                <div class="widget-products-item col-xs-12 col-sm-6 col-xl-4">
                  <a href="#" class="widget-products-image">
                    <img src="assets/demo/thumbs/1.jpg">
                    <span class="widget-products-overlay"></span>
                  </a>
                  </div>
              </blockquote>
             
            </div>

            <!-- / Message -->


            <!-- Form -->

            <div class="panel-body">
              <form action="" class="expanding-input" id="page-messages-item-form">
                <textarea class="form-control expanding-input-control" rows="4" placeholder="回复"></textarea>

                <div>
                  <button type="submit" class="btn btn-primary ">Send message</button>
                </div>
              </form>
            </div>

            <!-- / Form -->

          </div>
        </div>

        <!-- / Content -->
      
    
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
</body>
</html>
