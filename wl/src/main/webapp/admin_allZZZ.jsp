<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<title>管理员</title>

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin"
	rel="stylesheet" type="text/css">
<link
	href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<!-- DEMO ONLY: Function for the proper stylesheet loading according to the demo settings -->
<script>
	function _pxDemo_loadStylesheet(a, b, c) {
		var c = c
				|| decodeURIComponent((new RegExp(";\\s*"
						+ encodeURIComponent("px-demo-theme")
						+ "\\s*=\\s*([^;]+)\\s*;", "g").exec(";"
						+ document.cookie + ";") || [])[1]
						|| "purple-hills"), d = "rtl" === document
				.getElementsByTagName("html")[0].getAttribute("dir");
		document.write(a.replace(/^(.*?)((?:\.min)?\.css)$/, '<link href="$1'
				+ (c.indexOf("dark") !== -1 && a.indexOf("/css/") !== -1
						&& a.indexOf("/themes/") === -1 ? "-dark" : "")
				+ (!d || 0 !== a.indexOf("assets/css")
						&& 0 !== a.indexOf("assets/demo") ? "" : ".rtl")
				+ '$2" rel="stylesheet" type="text/css"'
				+ (b ? 'class="' + b + '"' : "") + ">"))
	}
</script>

<!-- DEMO ONLY: Set RTL direction -->
<script>
	"ltr" !== document.getElementsByTagName("html")[0].getAttribute("dir")
			&& "1" === decodeURIComponent((new RegExp(";\\s*"
					+ encodeURIComponent("px-demo-rtl")
					+ "\\s*=\\s*([^;]+)\\s*;", "g").exec(";" + document.cookie
					+ ";") || [])[1]
					|| "0")
			&& document.getElementsByTagName("html")[0].setAttribute("dir",
					"rtl");
</script>

<!-- DEMO ONLY: Load PixelAdmin core stylesheets -->
<script>
	_pxDemo_loadStylesheet('assets/css/bootstrap.min.css',
			'px-demo-stylesheet-bs');
	_pxDemo_loadStylesheet('assets/css/pixeladmin.min.css',
			'px-demo-stylesheet-core');
	_pxDemo_loadStylesheet('assets/css/widgets.min.css',
			'px-demo-stylesheet-widgets');
</script>

<!-- DEMO ONLY: Load theme -->
<script>
	function _pxDemo_loadTheme(a) {
		var b = decodeURIComponent((new RegExp(
				";\\s*" + encodeURIComponent("px-demo-theme")
						+ "\\s*=\\s*([^;]+)\\s*;", "g").exec(";"
				+ document.cookie + ";") || [])[1]
				|| "purple-hills");
		_pxDemo_loadStylesheet(a + b + ".min.css", "px-demo-stylesheet-theme",
				b)
	}
	_pxDemo_loadTheme('assets/css/themes/');
</script>

<!-- Demo assets -->
<script>
	_pxDemo_loadStylesheet('assets/demo/demo.css');
</script>
<!-- / Demo assets -->

<!-- holder.js -->
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/holder/2.9.0/holder.js"></script>

<!-- Pace.js -->
<script src="assets/pace/pace.min.js"></script>

<script src="assets/demo/demo.js"></script>
</head>
<body>
	<jsp:include page="staff_around.jsp"></jsp:include>
	<div class="px-content">
		<div class="page-header">
			<h1>所有中转站</h1>
		</div>

<div class="panel-body">

        <div class="table-primary">
          <table class="table table-striped table-bordered" id="datatables" >
            <thead>
              <tr>
                <th>stationId</th>
                <th>name</th>
                <th>address</th>
                <th>intro</th>
                <th>phone</th>
                <th>*</th>
                <th>*</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="zzz" items="${zzzs}">
              <tr id="cloneTr">
                <td><c:out value="${zzz.stationId}"></c:out></td>
                <td><c:out value="${zzz.name}"></c:out></td>
                <td><c:out value="${zzz.address}"></c:out></td>
                <td><c:out value="${zzz.intro}"></c:out></td>
                <td><c:out value="${zzz.phone}"></c:out></td>
                <td><a class="btn btn-primary btn-3d"  href="/admin_modifyZZZ.html?id=<c:out value="${zzz.stationId}"></c:out>">修改</a></td>
                <td><a class="btn btn-danger btn-3d" href="/admin_delZZZ.html?id=<c:out value="${zzz.stationId}"></c:out>">删除</a></td>
              </tr>
 			</c:forEach>
            </tbody>
          </table>

        </div>
		<nav>
            <ul class="pager">
              <li class="previous" id="xg1"><a id="pre">← Preview</a></li>
              <strong id="pageNum" class="font-size-28" >${spageNum}</strong>/<strong id="total">${total }</strong><li class="next" id="xg2"><a id="nex" >Next →</a></li>
            </ul>
          </nav>
      </div>




	<!-- ==============================================================================
  |
  |  SCRIPTS
  |
  =============================================================================== -->

	<!-- jQuery -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
			$('body > .px-nav').find('.px-nav-item > a[href="' + file + '"]')
					.parent().addClass('active');

			$('body > .px-nav').pxNav();
			$('body > .px-footer').pxFooter();

			$('#navbar-notifications').perfectScrollbar();
			$('#navbar-messages').perfectScrollbar();
		});
	</script>
	<script>
		var x = $('#pageNum').text();	
		var t = Number($('#total').text());
		var p = Number(x)-Number(1);
		var n = Number(x)+Number(1);
		var a="/admin_allZZZ.html?pageNum="+p;
		var b="/admin_allZZZ.html?pageNum="+n;
		if(t==1){
			document.getElementById('xg1').setAttribute('class','previous disabled');
			document.getElementById('xg2').setAttribute('class','next disabled');
		}else if(p>0&&n<=t){
			$('#pre').attr("href",a);
			$('#nex').attr("href",b);
		}else if(p<=0){
			document.getElementById('xg1').setAttribute('class','previous disabled');
			$('#nex').attr("href",b);
		}else if(n>t){
			document.getElementById('xg2').setAttribute('class','next disabled');
			$('#pre').attr("href",a);
		}	
	</script>
</body>
</html>
