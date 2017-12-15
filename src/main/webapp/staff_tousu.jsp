<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>投诉 工作人员端 物流信息管理平台</title>

  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">
  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <!-- DEMO ONLY: Function for the proper stylesheet loading according to the demo settings -->
  <script>function _pxDemo_loadStylesheet(a,b,c){var c=c||decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"purple-hills"),d="rtl"===document.getElementsByTagName("html")[0].getAttribute("dir");document.write(a.replace(/^(.*?)((?:\.min)?\.css)$/,'<link href="$1'+(c.indexOf("dark")!==-1&&a.indexOf("/css/")!==-1&&a.indexOf("/themes/")===-1?"-dark":"")+(!d||0!==a.indexOf("assets/css")&&0!==a.indexOf("assets/demo")?"":".rtl")+'$2" rel="stylesheet" type="text/css"'+(b?'class="'+b+'"':"")+">"))}</script>

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
    function _pxDemo_loadTheme(a){var b=decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"purple-hills");_pxDemo_loadStylesheet(a+b+".min.css","px-demo-stylesheet-theme",b)}
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
  <!-- Custom styling -->
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

    .page-messages-pages { line-height: 31px; }

    .page-messages-items td {
      border: none !important;
      padding-top: 12px !important;
      padding-bottom: 12px !important;
    }

    .page-messages-item-actions {
      width: 60px;
    }

    .page-messages-item-from,
    .page-messages-item-subject {
      display: block;
    }

    .page-messages-item-date {
      display: block;
      position: absolute;
      right: 0;
      top: 0;
    }

    html[dir="rtl"] .page-messages-item-date {
      right: auto;
      left: 0;
    }

    @media (min-width: 768px) {
      .page-messages-item-from,
      .page-messages-item-subject {
        display: table-cell;
      }

      .page-messages-item-from { width: 140px; }

      .page-messages-item-date {
        display: table-cell;
        position: static;
        width: 80px;
      }
    }
  </style>
  <!-- / Custom styling -->
</head>
<body>
<jsp:include page="staff_around.jsp"></jsp:include>
  <div class="px-content">
    <div class="page-header">
      <h1>投诉管理</h1>
    </div>
    
    <!-- Content -->

        <div class="page-messages-content box-cell valign-top">
          <div class="row">
            <h3 class="p-x-3 col-xs-12 col-md-7 col-lg-8" style="margin-top: 5px;"><i class="fa fa-inbox"></i>&nbsp;&nbsp;投诉信息列表</h3>

            <div class="col-xs-12 col-md-5 col-lg-4">
              <form action="" method="GET" class="input-group">
                <input type="text" name="s" class="form-control" placeholder="Search">
                <span class="input-group-btn">
                  <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                </span>
              </form>
            </div>
          </div>

          <!-- Spacer -->
          <div class="m-t-3 visible-xs visible-sm"></div>

          <div class="panel">

            <!-- Controls -->

            <div class="panel-body p-a-1 clearfix">
              <div class="btn-toolbar page-messages-wide-buttons pull-left" role="toolbar">
                <div class="btn-group">
                  <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-check-square-o"></i>&nbsp;<i class="fa fa-caret-down"></i></button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#">Check all</a></li>
                      <li><a href="#">Check read</a></li>
                      <li><a href="#">Check unread</a></li>
                      <li class="divider"></li>
                      <li><a href="#">Uncheck all</a></li>
                      <li><a href="#">Uncheck read</a></li>
                      <li><a href="#">Uncheck unread</a></li>
                    </ul>
                  </div>
                  <button type="button" class="btn"><i class="fa fa-repeat"></i></button>
                </div>

                <div class="btn-group">
                  <button type="button" class="btn"><i class="fa fa fa-file-text-o"></i></button>
                  <button type="button" class="btn"><i class="fa fa-exclamation-circle"></i></button>
                  <button type="button" class="btn"><i class="fa fa-trash-o"></i></button>
                </div>
              </div>

              <div class="btn-toolbar pull-right" role="toolbar">
                <div class="btn-group">
                  <button type="button" class="btn"><i class="fa fa-chevron-left"></i></button>
                  <button type="button" class="btn"><i class="fa fa-chevron-right"></i></button>
                </div>
              </div>
              <div class="page-messages-pages pull-right p-r-1 text-muted">1-50 of 825</div>
            </div>
   <!-- / Controls -->

            <hr class="m-y-0">

            <!-- List -->

            <div class="panel-body p-a-1 clearfix">
              <table class="page-messages-items table table-striped m-a-0">
                <tbody>

                  <tr>
                    <td class="page-messages-item-actions">
                      <label class="custom-control custom-checkbox custom-control-blank m-a-0 pull-xs-left">
                        <input type="checkbox" class="custom-control-input"><span class="custom-control-indicator"></span>
                      </label>
                      <a href="#" class="pull-xs-left m-l-1 text-muted font-size-14"><i class="fa fa-star"></i></a>
                    </td>
                    <td>
                      <div class="box m-a-0 bg-transparent">
                        <a name="goods_num" href="#" class="page-messages-item-from box-cell text-default">物品id</a>
                        <div class="page-messages-item-subject box-cell"><a name="content" href="item.html" class="text-default font-weight-bold">内容</a></div>
                        <div name="time" class="page-messages-item-date box-cell text-muted text-xs-right">时间</div>
                      </div>
                    </td>
                  </tr>                                              
                </tbody>
              </table>
            </div>

            <!-- / List -->

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
