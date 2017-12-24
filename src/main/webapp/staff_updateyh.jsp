<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

 <title>修改用户 工作人员端 物流信息管理平台</title>

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
  <div class="px-content">
    <div class="page-header">
      <h1>修改用户</h1>
    </div>

    <form action="staff_updateyh.html" class="panel form-horizontal"  method="post">
    <div class="col-md-8">
    <div class="panel">
      <div class="panel-heading">
        <span class="panel-title">基本信息</span>
      </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-3">
              <label class="control-label">邮箱</label>
              <input type="text" value="${user.email}" name="email" placeholder="" readonly="readonly" class="form-control form-group-margin">
            </div>
            <div class="col-md-3">
              <label class="control-label">用户名</label>
              <input type="text" value="${user.name}" name="name" placeholder="" class="form-control form-group-margin">
            </div>
            <div class="col-md-3">
              <label class="control-label">密码</label>
              <input type="text" value="${user.password}" name="password" placeholder="" class="form-control form-group-margin">
            </div>
          </div><!-- row -->
        </div>
      </div>
      </div>
    
     <div class="col-md-8">
     <div class="panel">
      <div class="panel-heading">
        <span class="panel-title">详细信息</span>
      </div>
      <div class="panel-body">
        <div class="col-md-12 row">
           <div class="col-md-6">
            <label class="control-label">手机号</label>
            <input type="text" value="${user.phone}" name="phone" placeholder="" class="form-control form-group-margin">
          </div>
          <div class="col-md-6">
            <label class="control-label">地址</label>
            <input type="text" value="${user.address}" name="address" placeholder="" class="form-control form-group-margin">
          </div>

           <div class="col-md-6">
            <label class="control-label">注册日期</label>
            <input type="text" value="${user.createtime}" name="createtime" placeholder="" class="form-control form-group-margin">
          </div>
           <div class="col-md-6">
            <label class="control-label">更新日期</label>
            <input type="text" value="${user.updatetime}" name="updatetime" placeholder="" class="form-control form-group-margin">
          </div>
           <div class="col-md-12 row">
           <label for="account-gender">gender</label>
				<select class="form-control m-b-2" id="select" name="gender">
               
                	<option>男</option>
                	<option>女</option>           
              	</select>
          </div>
        </div>
        </div>

        <!-- row -->
      </div>
      </div>
      <div class="col-md-8">
      <div class="panel">
      <div class="panel-heading">
        <span class="panel-title">权限信息</span>
      </div>
      <div class="panel-body">
        <div class="row">
          
            <div class="form-group">
            <label class="col-md-3 control-label">是否封号</label>
            <div class="col-md-9">
             
              <label class="widget-messages-checkbox custom-control custom-checkbox custom-control-blank">
            
    <c:choose>    
    <c:when test="${!user.status}">
    			<input type="checkbox" class="custom-control-input">
                <input type="checkbox"  value="${user.status}"  name="status" class="custom-control-input">
    </c:when>
    <c:otherwise>  
     			<input type="checkbox"  value="${user.status}"  checked name="status" class="custom-control-input">
    </c:otherwise> 
 	</c:choose>
                <span class="custom-control-indicator"></span>
               
              </label>
            </div>
          </div>
         
        </div><!-- row -->
      </div>
      
       <div class="panel-footer text-right">
    <button class="bootbox-confirm btn btn-xl btn-success btn-3d" >提交</button>
      </div></div>
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
  <script type="text/javascript"> 
  var x =${user.gender};
  if(true==x){
	  $("#select").val("男");
  }else{
	  $("#select").val("女");
  }</script>
</body>
</html>