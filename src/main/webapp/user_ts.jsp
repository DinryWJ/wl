<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>投诉 用户端 物流信息管理平台</title>

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
    <div class="page-header">
      <h1>我要投诉</h1>
    </div>

    <form action="tousu.html" class="panel form-horizontal form-bordered">
          <div class="panel-heading">
            <span class="panel-title">投诉</span>
          </div>
          <div class="panel-body no-padding-hr">
            <div class="form-group no-margin-hr panel-padding-h no-padding-t no-border-t">
              <div class="row">
                <label class="col-sm-4 control-label">Name:</label>
                <div class="col-sm-8">
                  <input type="text" name="name" class="form-control">
                </div>
              </div>
            </div>
            <div class="form-group no-margin-hr panel-padding-h">
              <div class="row">
                <label class="col-sm-4 control-label">Email:</label>
                <div class="col-sm-8">
                  <input type="email" name="email" class="form-control">
                </div>
              </div>
            </div>
            <div class="form-group no-margin-hr panel-padding-h">
              <div class="row">
                <label class="col-sm-4 control-label">内容:</label>
                <div class="col-sm-8">
                   <div class="panel">
                      <div class="panel-heading">
                        <span class="panel-title">Markdown</span>
                        <div class="panel-heading-controls">
                          <label for="markdown-layout-switcher" class="panel-heading-text font-size-11 font-weight-semibold"><span class="valign-middle">BOXED&nbsp;</span></label>
                          <label for="markdown-layout-switcher" class="switcher switcher-rounded switcher-sm switcher-success switcher-blank">
                            <input type="checkbox" id="markdown-layout-switcher">
                            <div class="switcher-indicator">
                              <div class="switcher-yes">ON</div>
                              <div class="switcher-no">OFF</div>
                            </div>
                          </label>
                        </div>
                      </div>
      <div class="panel-body">
        <textarea id="markdown" name="content" class="form-control" rows="10"></textarea>
      </div>
    </div>
                </div>
              </div>
            </div>
          </div>
          <div class="panel-footer text-right">
            <button class="btn btn-primary">Submit</button>
          </div>
        </form>
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
    // Initialize Markdown

    $(function() {
      $('#markdown').markdown({
        iconlibrary: 'fa',
        footer:      '<div id="md-character-footer"></div><small id="md-character-counter" class="text-muted">100 character left</small>',

        onChange: function(e) {
          var contentLength = e.getContent().length;

          if (contentLength > 100) {
            $('#md-character-counter')
              .removeClass('text-muted')
              .addClass('text-danger')
              .html((contentLength - 100) + ' character surplus.');
          } else {
            $('#md-character-counter')
              .removeClass('text-danger')
              .addClass('text-muted')
              .html((100 - contentLength) + ' character left.');
          }
        },
      });

      // Update character counter
      $('#markdown').trigger('change');
    });
    // -------------------------------------------------------------------------
    // Initialize "Boxed" switchers

    $(function() {
      $('#markdown-layout-switcher, #summernote-layout-switcher').on('change', function() {
        var $this = $(this);
        var method = $this.is(':checked') ? 'addClass' : 'removeClass';

        $this.parents('.panel')
          .find('> .panel-body')[method]('p-a-0')
          .find('> *')[method]('m-a-0 b-a-0 border-radius-0');
      });
    });
    </script>
</body>
</html>
