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
 
  <div class="px-content">
    <!-- Header -->

    <div class="page-header panel m-b-0 p-y-0 b-a-0 border-radius-0">
      <form action="" method="GET" class="input-group input-group-lg p-y-3">
        <input type="text" name="s" class="form-control input-group-lg p-y-3"  placeholder="输入邮件编号">
        <span class="input-group-btn">
          <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
        </span>
      </form>

      <hr class="page-wide-block m-y-0">

      <ul class="search-nav nav nav-tabs nav-tabs-simple nav-sm page-block b-b-0">
        <li class="active"><a href="#results-pages" data-toggle="tab">结果</a></li>
      </ul>
    </div>

    <hr class="page-wide-block m-t-0 b-t-2">

    <!-- / Header -->

    <div class="tab-content p-y-0">

      <!-- Pages -->

      <div class="tab-pane fade in active" id="results-pages">
      
      <!--                -->
    <div class="panel">

      <div class="panel-body p-a-4 b-b-4 bg-white darken">
        <div class="box m-a-0 border-radius-0 bg-white darken">
          <div class="box-row valign-middle">

            <div class="box-cell col-md-8">
              <div class="display-inline-block px-demo-brand px-demo-brand-lg valign-middle">
                <span class="px-demo-logo m-y-0 m-r-2 bg-primary"><span class="px-demo-logo-1"></span><span class="px-demo-logo-2"></span><span class="px-demo-logo-3"></span><span class="px-demo-logo-4"></span><span class="px-demo-logo-5"></span><span class="px-demo-logo-6"></span><span class="px-demo-logo-7"></span><span class="px-demo-logo-8"></span><span class="px-demo-logo-9"></span></span>
              </div>

              <div class="display-inline-block m-r-3 valign-middle">
                <div class="text-muted"><strong>订单</strong></div>
                <div class="font-size-18 font-weight-bold line-height-1">编号 #${goods.code}</div>
              </div>

              <!-- Spacer -->
              <div class="m-t-3 visible-xs visible-sm"></div>

              <div class="display-inline-block p-l-1 b-l-3 valign-middle font-size-12 text-muted">
                <div>${goods.rUserName}<STRONG>(发货人)</STRONG></div>
                <div>${goods.rUserAddress}<STRONG>(发货地址)</STRONG></div>
                <div>${goods.rUserPhone}<STRONG>(手机号)</STRONG></div>
              </div>
            </div>

            <!-- Spacer -->
            <div class="m-t-3 visible-xs visible-sm"></div>

            <div class="box-cell col-md-4">
              <div class="pull-md-right font-size-15">
                <div class="text-muted font-size-13 line-height-1"><strong>Date</strong></div>
                <strong>${goods.createtime}</strong>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="panel-body p-a-4 bg-white b-b-2">
        <div class="box m-a-0 border-radius-0">
          <div class="box-row valign-middle">
            <div class="box-cell col-md-6 font-size-14">
              <div><strong>${goods.rUserName}</strong><STRONG>(收货人)</STRONG></div>
              <div>${goods.rUserAddress}<STRONG>(收货地址)</STRONG></div>
              <div>${goods.rUserPhone}<STRONG>(手机号)</STRONG></div>
            </div>

            <!-- Spacer -->
            <div class="m-t-3 visible-xs visible-sm"></div>

            <div class="box-cell col-md-6 bg-white darken p-x-3 p-y-2">
              <div class="pull-xs-left m-y-1 font-size-12 text-muted"><strong>当前状态</strong></div>
              <div class="pull-xs-right font-size-24"><strong>
              	<c:if test="${goods.status == 'false' }">  
					正在运输
				</c:if>  
				<c:if test="${goods.status == 'true' }">  
					已完成
				</c:if>  
              </strong></div>
            </div>
          </div>
        </div>
      </div>

      <div class="panel-body p-a-4">
        <div class="table-responsive">
          <table class="table m-a-0">
            <thead>
              <tr class="bg-white darken">
                <th class="p-x-2">
                  物流信息
                </th>
                <th class="p-x-2">
                  时间
                </th>

              </tr>
            </thead>
            <tbody class="font-size-14" id="tbd">
              <!-- js 填充 -->

            </tbody>
          </table>

        </div>
      </div>

    </div>
       


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
    <script>
    // -------------------------------------------------------------------------
    // Initialize page components

    $(function() {
      $('.nav-tabs').pxTabResize();
    });
  </script>
    <script>

  	var a = "${logistics.mAddress}";
  	var b ="${logistics.mTime}";
  	var aa = a.split(",");
  	var bb = b.split(",");


  	for(var i=0;i<aa.length;i++){
  		var a2 =aa[i];
  		var b2 = bb[i];
  		$("#tbd").append('<tr><td class="p-a-2"><div class="font-weight-semibold">'+a2+'</div><div class="font-size-12 text-muted"></div></td><td class="p-a-2"><strong>'+b2+'</strong></td></tr>');
  	}
  	
  	
  </script>
</body>
</html>
