<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
  
  <title> 登录 用户端 物流信息管理平台</title>

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
  </script>

  <!-- DEMO ONLY: Load theme -->
  <script>
    function _pxDemo_loadTheme(a){var b=decodeURIComponent((new RegExp(";\\s*"+encodeURIComponent("px-demo-theme")+"\\s*=\\s*([^;]+)\\s*;","g").exec(";"+document.cookie+";")||[])[1]||"clean");_pxDemo_loadStylesheet(a+b+".min.css","px-demo-stylesheet-theme",b)}
    _pxDemo_loadTheme('assets/css/themes/');
  </script>

  <!-- Demo assets -->
  <script>_pxDemo_loadStylesheet('assets/demo/demo.css');</script>
  <!-- / Demo assets -->

  <!-- Pace.js -->
  <script src="assets/pace/pace.min.js"></script>

  <script src="assets/demo/demo.js"></script>

  <!-- Custom styling -->
  <style>
    .page-signin-modal {
      position: relative;
      top: auto;
      right: auto;
      bottom: auto;
      left: auto;
      z-index: 1;
      display: block;
    }

    .page-signin-form-group { position: relative; }

    .page-signin-icon {
      position: absolute;
      line-height: 21px;
      width: 36px;
      border-color: rgba(0, 0, 0, .14);
      border-right-width: 1px;
      border-right-style: solid;
      left: 1px;
      top: 9px;
      text-align: center;
      font-size: 15px;
    }

    html[dir="rtl"] .page-signin-icon {
      border-right: 0;
      border-left-width: 1px;
      border-left-style: solid;
      left: auto;
      right: 1px;
    }

    html:not([dir="rtl"]) .page-signin-icon + .page-signin-form-control { padding-left: 50px; }
    html[dir="rtl"] .page-signin-icon + .page-signin-form-control { padding-right: 50px; }

    #page-signin-forgot-form {
      display: none;
    }

    /* Margins */

    .page-signin-modal > .modal-dialog { margin: 30px 10px; }

    @media (min-width: 544px) {
      .page-signin-modal > .modal-dialog { margin: 60px auto; }
    }
  </style>
  <!-- / Custom styling -->
</head>
<body>
  <div class="page-signin-modal modal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="box m-a-0">
          <div class="box-row">

            <div class="box-cell col-md-5 bg-primary p-a-4">
              <div class="text-xs-center text-md-left">
                <a class="px-demo-brand px-demo-brand-lg" href="index.html"><span class="px-demo-logo bg-primary m-t-0"><span class="px-demo-logo-1"></span><span class="px-demo-logo-2"></span><span class="px-demo-logo-3"></span><span class="px-demo-logo-4"></span><span class="px-demo-logo-5"></span><span class="px-demo-logo-6"></span><span class="px-demo-logo-7"></span><span class="px-demo-logo-8"></span><span class="px-demo-logo-9"></span></span><span class="font-size-18 line-height-1">物流信息管理平台</span></a>
                <div class="font-size-15 m-t-1 line-height-1">用户端</div>
              </div>
              <ul class="list-group m-t-3 m-b-0 visible-md visible-lg visible-xl">
                <li class="list-group-item p-x-0 p-b-0 b-a-0"><i class="list-group-icon fa fa-sitemap text-white"></i>用户登录(<strong>当前</strong>)</li>
                <li class="list-group-item p-x-0 p-b-0 b-a-0"><i class="list-group-icon fa fa-file-text-o text-white"></i><a href="staff_signin.html">工作人员登录</a></li>
              </ul>
            </div>

            <div class="box-cell col-md-7">

              <!-- Sign In form -->

              <form action="/loginCheck.html" class="p-a-4" id="page-signin-form">
                <h4 class="m-t-0 m-b-4 text-xs-center font-weight-semibold">登录</h4>
				<small><c:if test ="${!empty error}" ><font color="red"><c:out value="${error}"></c:out></font></c:if></small>
                <fieldset class="page-signin-form-group form-group form-group-lg">
                  <div class="page-signin-icon text-muted"><i class="ion-person"></i></div>
                  <input type="text" class="page-signin-form-control form-control" placeholder="你的邮箱" name="email">
                </fieldset>

                <fieldset class="page-signin-form-group form-group form-group-lg">
                  <div class="page-signin-icon text-muted"><i class="ion-asterisk"></i></div>
                  <input type="password" class="page-signin-form-control form-control" placeholder="密码" name="password">
                </fieldset>

                <div class="clearfix">
                  <label class="custom-control custom-checkbox pull-xs-left">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    记住我
                  </label>
                  <a href="#" class="font-size-12 text-muted pull-xs-right" id="page-signin-forgot-link">忘记密码?</a>
                </div>

                <button type="submit" class="btn btn-block btn-lg btn-primary m-t-3">Sign In</button>
              </form>
				
              <div class="p-y-3 p-x-4 b-t-1 bg-white" id="page-signin-social">
                  <div class="text-xs-center m-t-2 font-weight-bold font-size-14" id="px-demo-signup-link text-black">还未有账号? <a href="user_signup.html"><u>现在注册</u></a>
              </div>

              <!-- / Sign In form -->

              <!-- Reset form -->

             <form action="index.html" class="p-a-4" id="page-signin-forgot-form">
                <h4 class="m-t-0 m-b-4 text-xs-center font-weight-semibold">Password reset</h4>

                <fieldset class="page-signin-form-group form-group form-group-lg">
                  <div class="page-signin-icon text-muted"><i class="ion-at"></i></div>
                  <input type="email" class="page-signin-form-control form-control" placeholder="Your Email">
                </fieldset>

                <button type="submit" class="btn btn-block btn-lg btn-primary m-t-3">Send password reset link</button>
                <div class="m-t-2 text-muted">
                  <a href="#" id="page-signin-forgot-back">&larr; Back</a>
                </div>
              </form>

              <!-- / Reset form -->

            </div>
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

  <script>
    // -------------------------------------------------------------------------
    // Initialize page components

    $(function() {
      pxDemo.initializeBgsDemo('body', 1, '#000', function(isBgSet) {
        $('#px-demo-signup-link, #px-demo-signup-link a')
          .addClass(isBgSet ? 'text-white' : 'text-muted')
          .removeClass(isBgSet ? 'text-muted' : 'text-white');
      });

      $('#page-signin-forgot-link').on('click', function(e) {
        e.preventDefault();

        $('#page-signin-form, #page-signin-social')
          .css({ opacity: '1' })
          .animate({ opacity: '0' }, 200, function() {
            $(this).hide();

            $('#page-signin-forgot-form')
              .css({ opacity: '0', display: 'block' })
              .animate({ opacity: '1' }, 200)
              .find('.form-control').first().focus();

            $(window).trigger('resize');
          });
      });

      $('#page-signin-forgot-back').on('click', function(e) {
        e.preventDefault();

        $('#page-signin-forgot-form')
          .animate({ opacity: '0' }, 200, function() {
            $(this).css({ display: 'none' });

            $('#page-signin-form, #page-signin-social')
              .show()
              .animate({ opacity: '1' }, 200)
              .find('.form-control').first().focus();

            $(window).trigger('resize');
          });
      });
    });
  </script>
</body>
</html>
