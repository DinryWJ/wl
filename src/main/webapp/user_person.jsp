<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>


<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <title>个人 用户端 物流信息管理平台</title>

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
	<jsp:include page="user_around.jsp"></jsp:include>
  <div class="px-content">
    <div class="page-header m-b-0 p-b-0 b-b-0">
      <h1>Account <span class="text-muted font-weight-light">Settings</span></h1>

      <ul class="nav nav-tabs page-block m-t-4" id="account-tabs">
        <li class="active">
          <a href="#account-profile" data-toggle="tab">
            Profile
          </a>
        </li>
       <!--  <li>
          <a href="#account-social" data-toggle="tab">
            Social profiles
          </a>
        </li> -->
        <li>
          <a href="#account-password" data-toggle="tab">
            Password
          </a>
        </li>
        <!-- <li>
          <a href="#account-notifications" data-toggle="tab">
            Notifications
          </a>
        </li> -->
      </ul>
    </div>

    <div class="tab-content p-y-4">

      <!-- Profile tab -->

      <div class="tab-pane fade in active" id="account-profile">
        <div class="row">
          <form action="updateperson.html" class="col-md-8 col-lg-9">
            <div class="p-x-1">
              <fieldset class="form-group form-group-lg">
                <label for="account-name">Name</label>
                <input type="text" class="form-control" id="account-name" value="${sessionScope.user.name}" name="name" >
              </fieldset>
              <fieldset class="form-group form-group-lg">
                <label for="account-gender">gender</label>
                <label for="switcher-icon" class="switcher">
                  <input type="checkbox" id="switcher-icon" checked="" name="gender">
                  <div class="switcher-indicator">
                    <div class="switcher-yes"><i class="fa fa-mars"></i></div>
                    <div class="switcher-no"><i class="fa fa-venus"></i></div>
                  </div>
                  <small class="text-muted"><i class="fa fa-mars"></i><strong>男</strong>|<i class="fa fa-venus"></i><strong>女</strong></small>
                </label>
              </fieldset>
              <fieldset class="form-group form-group-lg">
                <label for="account-email">E-mail</label>
                <input type="email" class="form-control" id="account-email" value="${sessionScope.user.email}" readonly="readonly" name="email">
                <small class="text-muted">注册邮箱无法修改</small>
              </fieldset>
              <fieldset class="form-group form-group-lg">
                <label for="account-phone">phone</label>
                <input type="text" class="form-control" id="account-phone" value="${sessionScope.user.phone}" name="phone">
              </fieldset>
              <fieldset class="form-group form-group-lg">
                <label for="account-address">Address</label>
                <input type="text" class="form-control" id="account-address" value="${sessionScope.user.address}" name="address">
              </fieldset>
              <fieldset class="form-group form-group-lg">
                <label for="account-type">type</label>
                <input type="text" class="form-control" id="account-type" value="${sessionScope.user.type}" disabled="disabled" name="type">
               <!--  <small class="text-muted">Your home page, blog or company site, e.g. <strong>http://website.com</strong></small> -->
              </fieldset>
              <fieldset class="form-group form-group-lg">
                <label for="account-createtime">注册时间</label>
                <input type="text" class="form-control" id="account-createtime" value="${sessionScope.user.createtime}" disabled="disabled" name="createtime">
              </fieldset>
              <button type="submit" class="btn btn-lg btn-primary m-t-3">Update profile</button>
              <a href="#" class="pull-xs-right text-muted p-t-4">Deactivate account</a>
            </div>
          </form>

          <!-- Spacer -->
          <div class="m-t-4 visible-xs visible-sm"></div>

          <!-- Avatar -->
          <div class="col-md-4 col-lg-3">
            <div class="panel bg-transparent">
              <div class="panel-body text-xs-center">
                <img src="assets/demo/avatars/1.jpg" alt="" class="" style="max-width: 100%;">
              </div>
              <hr class="m-y-0">
              <div class="panel-body text-xs-center">
                <button type="button" class="btn btn-primary">Change</button>&nbsp;
                <button type="button" class="btn"><i class="fa fa-trash"></i></button>
                <div class="m-t-2 text-muted font-size-12">JPG, GIF or PNG. Max size of 1MB</div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- / Profile tab -->

      <!-- Social tab -->

   <!--    <div class="tab-pane fade" id="account-social">
        <form action="" class="p-x-1">
          <fieldset class="form-group form-group-lg">
            <label for="account-social-facebook">Facebook</label>
            <div class="form-group form-group-lg">
              <button type="button" class="btn btn-success"><span class="btn-label-icon left fa fa-facebook"></span>Connect to Facebook</button>
            </div>
          </fieldset>
          <fieldset class="form-group form-group-lg">
            <label for="account-social-twitter">Twitter&nbsp;&nbsp;&nbsp;&nbsp;<small class="text-success font-weight-normal"><i class="fa fa-check"></i>&nbsp;Connected</small></label>
            <div class="input-group input-group-lg">
              <input type="text" class="form-control" id="account-social-twitter" value="@jdoe" disabled>
              <a href="#" class="input-group-addon text-muted"><i class="fa fa-times"></i></a>
            </div>
          </fieldset>
          <fieldset class="form-group form-group-lg">
            <label for="account-social-instagram">Instagram</label>
            <input type="text" class="form-control" id="account-social-instagram">
          </fieldset>
          <fieldset class="form-group form-group-lg">
            <label for="account-social-pinterest">Pinterest</label>
            <input type="text" class="form-control" id="account-social-pinterest" value="@jdoe">
          </fieldset>
          <fieldset class="form-group form-group-lg">
            <label for="account-social-github">Github</label>
            <input type="text" class="form-control" id="account-social-github">
          </fieldset>
          <fieldset class="form-group form-group-lg">
            <label for="account-social-linkedin">LinkedIn</label>
            <input type="text" class="form-control" id="account-social-linkedin">
          </fieldset>
          <button type="submit" class="btn btn-lg btn-primary m-t-3">Save changes</button>
        </form>
      </div> -->

      <!-- / Social tab -->

      <!-- Password tab -->

      <div class="tab-pane fade" id="account-password">
        <form action="updatepassword.html" class="p-x-1">
          <fieldset class="form-group form-group-lg">
            <label for="account-password">Old password</label>
            <input type="password" class="form-control" id="account-password" name="oldPassword">
          </fieldset>
          <fieldset class="form-group form-group-lg">
            <label for="account-new-password">New password</label>
            <input type="password" class="form-control" id="account-new-password" name="newPassword">
            <small class="text-muted">Minimum 6 characters</small>
          </fieldset>
          <fieldset class="form-group form-group-lg">
            <label for="account-new-password-repeat">Verify password</label>
            <input type="password" class="form-control" id="account-new-password-repeat" name="reNewPassword">
          </fieldset>
          <button type="submit" class="btn btn-lg btn-primary m-t-3">Change password</button>
        </form>
      </div>

      <!-- / Password tab -->

      <!-- Notifications tab -->

     <!--  <div class="tab-pane fade" id="account-notifications">
        <form action="" class="row">
          <div class="col-md-6">
            <div class="panel bg-transparent">
              <div class="panel-title"><strong>Activity Notifications</strong></div>
              <hr class="m-y-0">
              <div class="panel-body">
                <p>Email me when:</p>

                <label class="custom-control custom-checkbox m-t-2">
                  <input type="checkbox" class="custom-control-input">
                  <span class="custom-control-indicator"></span>
                  Someone comments on my article
                </label>

                <label class="custom-control custom-checkbox m-t-2">
                  <input type="checkbox" class="custom-control-input">
                  <span class="custom-control-indicator"></span>
                  Someone answers on my forum thread
                </label>

                <label class="custom-control custom-checkbox m-t-2">
                  <input type="checkbox" class="custom-control-input">
                  <span class="custom-control-indicator"></span>
                  Someone follows me
                </label>

              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel bg-transparent">
              <div class="panel-title"><strong>PixelAdmin Emails</strong></div>
              <hr class="m-y-0">
              <div class="panel-body">
                <label class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input">
                  <span class="custom-control-indicator"></span>
                  News
                </label>
                <small class="text-muted">Periodic news and announcements</small>

                <label class="custom-control custom-checkbox m-t-2">
                  <input type="checkbox" class="custom-control-input">
                  <span class="custom-control-indicator"></span>
                  Weekly product updates
                </label>

                <label class="custom-control custom-checkbox m-t-2">
                  <input type="checkbox" class="custom-control-input">
                  <span class="custom-control-indicator"></span>
                  Blog digest
                </label>
                <small class="text-muted">Get weekly blog digest emails</small>
              </div>
            </div>
          </div>

          <div class="col-xs-12"><button type="submit" class="btn btn-lg btn-primary m-t-3">Update notifications</button></div>
        </form>
      </div> -->

      <!-- / Notifications tab -->

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
      $('#account-bio').pxCharLimit();
    });
  </script>
</body>
</html>
