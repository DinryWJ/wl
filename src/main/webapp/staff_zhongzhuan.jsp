<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>中转 工作人员端 物流信息管理平台</title>

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
    .box,
    .box-cell {
      overflow: visible !important;
      -webkit-mask-image: none !important;
    }

    .page-forum-thread-title .label {
      vertical-align: text-bottom;
      font-weight: bold;
    }

    .page-forum-thread-actions .btn.btn-outline {
      opacity: .4;
    }

    .page-forum-thread-actions .btn.btn-outline:hover,
    .page-forum-thread-actions .btn.btn-outline:focus,
    .page-forum-thread-actions .btn.btn-outline:active,
    .page-forum-thread-actions .btn.btn-outline.active {
      opacity: 1;
    }

    #summernote-forum-thread-reply + .note-editor {
      border-radius: 0;
      border: none;
      margin: 0;
    }

    @media (min-width: 768px) {
      .page-forum-thread-counters {
        border-left-style: solid;
        border-left-width: 1px;
      }

      html[dir="rtl"] .page-forum-thread-counters {
        border-left: 0;
        border-right-style: solid;
        border-right-width: 1px;
      }
    }
  </style>
</head>
<body>
<jsp:include page="staff_around.jsp"></jsp:include>
  <div class="px-content">
    <div class="page-header">
      <h1>中转站</h1>
    </div>
    <div class="page-header p-y-4">
      <div class="box m-a-0 bg-transparent">
        <div class="box-cell col-md-7 col-lg-8 col-xl-9">
          <div class="font-size-12 text-muted  font-weight-bold"><a href="pages-forum-forums-list.html">FORUMS</a> /</div>
          <h1 class="font-weight-bold text-default"><a href="pages-forum-topics.html">General Web Design</a></h1>
        </div>

        <!-- Spacer -->
        <hr class="visible-xs visible-sm">

        <div class="box-cell col-md-5 col-lg-4 col-xl-3 valign-middle">
          <form action="" method="GET" class="input-group">
            <input type="text" name="s" class="form-control" placeholder="Search">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
            </span>
          </form>
        </div>

      </div>
    </div>
    <div class="panel">
      <div class="panel-heading">
        <div class="panel-title">物品信息</div>
      </div>
      <div class="panel-body">
        <form class="form-inline">
          <div class="form-group">
            <label for="form-inline-input-1">Name</label>
            <input name="" type="text" class="form-control" id="form-inline-input-1" placeholder="物品名称">
          </div>
          <div class="form-group">
            <label for="form-inline-input-2">&nbsp;&nbsp;num</label>
            <input name="goods_num" type="text" class="form-control" id="form-inline-input-2" placeholder="编号">
          </div>
          <div class="form-group">
            <label for="form-inline-input-2">&nbsp;&nbsp;address</label>
            <input name="address" type="text" class="form-control" id="form-inline-input-2" placeholder="现在地址">
          </div>
          
        </form>

        <hr class="page-wide-block">
        
        <form class="form-inline">
          
            <div class="input-group">   
              <input name="address" type="text" class="form-control" id="form-inline-input-8" placeholder="更新地址">
            </div>
          
          <button type="submit" class="btn btn-primary">确定</button>
        </form>
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
</body>
</html>
