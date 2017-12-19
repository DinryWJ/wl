<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>Blank - Pages - PixelAdmin: Responsive Bootstrap Template</title>

  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">
  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <!-- DEMO ONLY: Function for the proper stylesheet loading according to the demo settings -->
  <script>function _pxDemo_loadStylesheet(a,b,c){var c=c||decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"clean"),d="rtl"===document.getElementsByTagName("html")[0].getAttribute("dir");document.write(a.replace(/^(.*?)((?:\.min)?\.css)$/,'<link href="$1'+(c.indexOf("dark")!==-1&&a.indexOf("/css/")!==-1&&a.indexOf("/themes/")===-1?"-dark":"")+(!d||0!==a.indexOf("assets/css")&&0!==a.indexOf("assets/demo")?"":".rtl")+'$2" rel="stylesheet" type="text/css"'+(b?'class="'+b+'"':"")+">"))}</script>

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
    function _pxDemo_loadTheme(a){var b=decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"clean");_pxDemo_loadStylesheet(a+b+".min.css","px-demo-stylesheet-theme",b)}
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
  <div class="px-content">
    <div class="page-header">
      <h1>查找用户</h1>
    </div>
    
    <!-- Header -->

    <div class="page-header panel m-b-0 p-y-0 b-a-0 border-radius-0">
      <form action="staff_seachyh1.html?page=1" method="POST" class="input-group input-group-lg p-y-3">
        <input type="text" name="findby" class="form-control" placeholder="Search for...">
        <span class="input-group-btn">
          <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
        </span>
      </form>

      <hr class="page-wide-block m-y-0">

      <ul class="search-nav nav nav-tabs nav-tabs-simple nav-sm page-block b-b-0">
        <li class="active"><a href="#results-pages" data-toggle="tab">FIND</a></li>           
      </ul>
    </div>

    <hr class="page-wide-block m-t-0 b-t-2">

    <!-- / Header -->
    <div class="tab-content p-y-0">

      <!-- Pages -->

      <div class="tab-pane fade in active" id="results-pages">
<c:forEach var="u" items="${user}"> 
        <div class="panel">
          <div class="panel-body">
            <div class="font-weight-semibold font-size-16">
            <a href="staff_getyh.html?email=${u.email}">
            	<c:out value="${u.email}"/>&nbsp;&nbsp;
            	<c:out value="${u.name}"/>
            </a></div>
          </div>
        </div>
</c:forEach>

       
        <nav class="pagination pagination-sm m-a-0">
           <c:forEach var="p" items="${pageall}" varStatus="stat">
            <c:if test="${stat.first}" >
          <li><a href="staff_seachyh1.html?page=${p}&findby=${email}" onclick="changactive()">«</a></li>
          </c:if>
          </c:forEach>
           <c:forEach var="p" items="${pageall}">
          <li><a href="staff_seachyh1.html?page=${p}&findby=${email}" onclick="changactive()">${p}</a></li>
          </c:forEach>
         <c:forEach var="p" items="${pageall}" varStatus="stat">
           <c:if test="${stat.last}" >
          <li><a href="staff_seachyh1.html?page=${p}&findby=${email}" onclick="changactive()">»</a></li>
          </c:if>
          </c:forEach>
        </nav>

      </div>

      <!-- / Pages -->
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
  $(function() {
  $("a").click(function(){
	  $("a").parent().removeClass("active");
	  $(this).parent().addClass("active");
  });
  });
  </script>
</body>
</html>