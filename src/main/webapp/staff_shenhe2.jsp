<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>审核2 工作人员端 物流信息管理平台</title>

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
      <h1>寄件信息管理-详细信息</h1>
    </div>
    

    <form action="" class="panel form-horizontal">
      <div class="panel-heading">
        <span class="panel-title">寄件人信息</span>
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-md-4">
            <input type="hidden" name="GoodsId" class="form-control form-group-margin">
          </div>
          <div class="col-md-4">
            <label class="control-label">订单编号</label>
            <input type="text" name="GoodsNum" value="11223344"  class="form-control form-group-margin" readonly="true">
          </div>

        </div><!-- row -->       
      </div>

      <div class="panel-heading">
        <span class="panel-title">寄件人信息</span>
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-md-4">
            <label class="control-label">寄件人姓名</label>
            <input type="text" name="name" placeholder="寄件人姓名" class="form-control form-group-margin">
          </div>
          <div class="col-md-4">
            <label class="control-label">手机号</label>
            <input type="text" name="phone" placeholder="手机号" class="form-control form-group-margin">
          </div>
          <div class="col-md-4">
            <label class="control-label">地址</label>
            <input type="text" name="address" placeholder="详细地址" class="form-control form-group-margin">
          </div>
        </div><!-- row -->       
      </div>
    
      <div class="panel-heading">
        <span class="panel-title">物品信息</span>
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-md-4">
            <label class="control-label">名字</label>
            <input type="text" name="weight" placeholder="物品名称" class="form-control form-group-margin">
          </div>
          <div  class="col-md-4">
          <label  class="col-sm-2 control-label">类型</label>
              <div class="col-sm-10">
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" class="px" checked="">
                    <span class="lbl">服饰</span>
                  </label>
                </div> <!-- / .radio -->
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" class="px">
                    <span class="lbl">电子产品</span>
                  </label>
                </div> <!-- / .radio -->
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" class="px">
                    <span class="lbl">食品</span>
                  </label>
                </div> <!-- / .radio -->
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios4" value="option4" class="px">
                    <span class="lbl">书籍</span>
                  </label>
                </div> <!-- / .radio -->
              </div> 
          </div>
          <div class="col-md-4">
            <label class="control-label">重量</label>
            <input type="text" name="weight" placeholder="预估重量" class="form-control form-group-margin">
          </div>
        </div><!-- row -->
        <label class="control-label">备注</label>
        <textarea class="form-control" rows="5" name="intro" placeholder="Message"></textarea>
      </div>
      
      <div class="panel-heading">
        <span class="panel-title">收件人信息</span>
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-md-4">
            <label class="control-label">收件人姓名</label>
            <input type="text" name="s_user_id" placeholder="收件人姓名" class="form-control form-group-margin">
          </div>
          <div class="col-md-4">
            <label class="control-label">手机号</label>
            <input type="text" name="sphone" placeholder="手机号" class="form-control form-group-margin">
          </div>
          <div class="col-md-4">
            <label class="control-label">地址</label>
            <input type="text" name="e_address" placeholder="详细地址" class="form-control form-group-margin">
          </div>
        </div><!-- row -->
      </div>
      <div class="panel-footer text-right">
        <button class="btn btn-primary">提交订单</button>
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
</body>
</html>
