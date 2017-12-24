<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>首页 工作人员端 物流信息管理平台</title>

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
</head>
<body>
<jsp:include page="staff_around.jsp"></jsp:include>
<div class="px-content" style="padding-bottom: 210px;">
   <div class="page-header">
      <div class="row">
        <div class="col-md-4 text-xs-center text-md-left text-nowrap">
          <h1><i class="page-header-icon ion-ios-pulse-strong"></i>首页</h1>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-8">

        <div class="box bg-warning">
          <div class="box-row">
            <div class="box-cell p-a-2">
              <div class="font-weight-semibold font-size-17">这里是</div>
              <div class="font-size-24 text-xs-center"><strong>${station.name }</strong></div>
              <div class="font-size-12 text-xs-right">${station.address }</div>
              <div class="font-size-12 text-xs-right">${station.intro }</div>
              <div class="font-size-12 text-xs-right">${station.phone }</div>
            </div>
          </div>
          <div class="box-row">
            <div class="box-cell p-x-2 p-b-1 valign-bottom text-xs-center">
              <span id="sparkline-2"><canvas width="298" height="42" style="display: inline-block; width: 298px; height: 42px; vertical-align: top;"></canvas></span>
            </div>
          </div>
        </div>

        <!-- Pie charts -->

       

        <!-- / Pie charts -->

      </div>
    
      <div class="col-md-4">

        <!-- Stats -->
		<div class="panel box">
          <div class="box-row">
            <div class="box-cell text-xs-center bg-info font-size-52">
              <i class="fa fa-clock-o"></i>
            </div>
          </div>
          <div class="box-row">
            <div class="box-cell p-y-2 text-xs-center font-size-20">
              <span id="clock" class="m-x-auto"></span>
            </div>
          </div>
        </div>
        <a href="/staff_person.html" class="box bg-danger">
          <div class="box-cell p-a-3 valign-middle">
            <i class="box-bg-icon middle right fa fa-cog"></i>

            <span class="font-size-24"><strong>个人设置</strong></span><br>
            
          </div>
        </a>
		<a href="#" class="box bg-success darken">
          <div class="box-cell p-a-3 valign-middle">
            <i class="box-bg-icon middle right fa fa-search"></i>

            <span class="font-size-24"><strong>邮件搜索</strong></span><br>
          </div>
        </a>
       



        <!-- / Stats -->

      </div>
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
	    url:'/staff_indexInfo.html',    
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
