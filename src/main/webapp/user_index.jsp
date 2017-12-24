<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>首页 用户端 物流信息管理平台</title>

  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">
  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<!-- DEMO ONLY: Function for the proper stylesheet loading according to the demo settings -->
  <script>function _pxDemo_loadStylesheet(a,b,c){var c=c||decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"frost"),d="rtl"===document.getElementsByTagName("html")[0].getAttribute("dir");document.write(a.replace(/^(.*?)((?:\.min)?\.css)$/,'<link href="$1'+(c.indexOf("dark")!==-1&&a.indexOf("/css/")!==-1&&a.indexOf("/themes/")===-1?"-dark":"")+(!d||0!==a.indexOf("assets/css")&&0!==a.indexOf("assets/demo")?"":".rtl")+'$2" rel="stylesheet" type="text/css"'+(b?'class="'+b+'"':"")+">"))}</script>

   
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
    function _pxDemo_loadTheme(a){var b=decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"frost");_pxDemo_loadStylesheet(a+b+".min.css","px-demo-stylesheet-theme",b)}
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
  <div class="px-content" style="padding-bottom: 210px;">
    <div class="page-header">
      <div class="row">
        <div class="col-md-4">
          <h1><i class="page-header-icon ion-ios-pie"></i>首页</h1>
        </div>
      </div>
    </div>

    <div class="row">

      <!-- Stats -->

      <div class="col-md-3">
        <div class="box bg-info darken">
          <div class="box-cell p-x-3 p-y-1">
            <div class="font-weight-semibold font-size-12">已完成</div>
            <div class="font-weight-bold font-size-20" ><span id="yj1"></span></div>
            <i class="box-bg-icon middle right font-size-52 ion-android-cloud-done"></i>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="box bg-danger darken">
          <div class="box-cell p-x-3 p-y-1">
            <div class="font-weight-semibold font-size-12">运输中</div>
            <div class="font-weight-bold font-size-20"><span id="yj2"></span></div>
            <i class="box-bg-icon middle right font-size-52 ion-android-plane"></i>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="box bg-warning darken">
          <div class="box-cell p-x-3 p-y-1">
            <div class="font-weight-semibold font-size-12">等待取件</div>
            <div class="font-weight-bold font-size-20"><span id="yj3"></span></div>
            <i class="box-bg-icon middle right font-size-52 ion-android-walk"></i>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="box bg-success darken">
          <div class="box-cell p-x-3 p-y-1">
            <div class="font-weight-semibold font-size-12">所有邮件</div>
            <div class="font-weight-bold font-size-20"><span id="yj4"></span></div>
            <i class="box-bg-icon middle right font-size-52 ion-android-apps"></i>
          </div>
        </div>
      </div>

      <!-- / Stats -->

    </div>
<span id="clock" class="pull-xs-right"></span>
    <hr class="page-wide-block m-y-0">

    <!-- Metrics -->

    <div class="page-wide-block">
      <div class="box m-a-0 border-radius-0" id="metrics">
        <div class="box-row valign-top">

          <!-- Fast buttons -->
          <div class="box-cell col-md-4">
            <div class="box-container text-xs-center text-primary">

              <div class="box-row valign-middle">
                <a href="/user_jj.html" class="box-cell p-y-1 b-r-1 bg-white">
                  <i class="ion-android-create font-size-52 line-height-1"></i>
                  <div class="font-size-12">寄件</div>
                </a>
                <a href="/user_sh.html" class="box-cell p-y-1 bg-white">
                  <i class="fa fa-search font-size-52 line-height-1"></i>
                  <div class="font-size-12">搜索</div>
                </a>
              </div>

              <div class="box-row valign-middle">
                <a href="/user_ts.html" class="box-cell p-y-1 b-r-1 b-t-1 bg-white">
                  <i class="fa fa-times-circle-o font-size-52 line-height-1"></i>
                  <div class="font-size-12">投诉</div>
                </a>
                <a href="/user_person.html" class="box-cell p-y-1 b-t-1 bg-white">
                  <i class="fa fa-cog font-size-52 line-height-1"></i>
                  <div class="font-size-12">设置</div>
                </a>
              </div>

            </div>
          </div>
          <!-- / Fast butons -->

        </div>
	
      </div>
    </div>

    <!-- / Metrics -->






   
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
  	<script type="text/javascript">
		function displayTime(){
			var elt = document.getElementById("clock");
			var now = new Date();
			elt.innerHTML = now.toLocaleString();
			setTimeout(displayTime,1000);
		}
		window.onload=displayTime;

	</script>
     <script>
    // -------------------------------------------------------------------------
    // Initialize DataTables


	$.ajax({    
	    type: "post",    
	    url:'/user_getYJNum.html',    
	    cache: false,    
	    dataType : "json",    
	    success: function(data){     
			$('#yj1').text(data.yj1);
			$('#yj2').text(data.yj2);
			$('#yj3').text(data.yj3);
			$('#yj4').text(data.yj4);
	    }
	});
	    	</script>
</body>
</html>
