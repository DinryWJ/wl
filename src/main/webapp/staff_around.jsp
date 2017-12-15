<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
  </head>
<body>
  <nav class="px-nav px-nav-left">
    <button type="button" class="px-nav-toggle" data-toggle="px-nav">
      <span class="px-nav-toggle-arrow"></span>
      <span class="navbar-toggle-icon"></span>
      <span class="px-nav-toggle-label font-size-11">HIDE MENU</span>
    </button>
        <ul class="px-nav-content">
      <li class="px-nav-box p-a-3 b-b-1" id="demo-px-nav-box">
        <button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <img src="assets/demo/avatars/1.jpg" alt="" class="pull-xs-left m-r-2 border-round" style="width: 54px; height: 54px;">
        <div class="font-size-16"><span class="font-weight-light"></span><strong>${sessionScope.staff.name}</strong></div>
        <div class="btn-group" style="margin-top: 4px;">
          <a href="#" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-envelope"></i></a>
          <a href="#" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-user"></i></a>
          <a href="#" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-cog"></i></a>
          <a href="/stafftoLogin.html" class="btn btn-xs btn-danger btn-outline"><i class="fa fa-power-off"></i></a>
        </div>
      </li>
      <li class="px-nav-item">
        <a href="staff_index.html"><i class="px-nav-icon ion-ios-pulse-strong"></i><span class="px-nav-label">首页</span></a>
      </li>
      <li class="px-nav-item px-nav-dropdown">
        <a href="shenhe.html"><i class="px-nav-icon fa fa-archive"></i><span class="px-nav-label">寄件信息管理</span></a>
        <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="staff_shenhe.html"><span class="px-nav-label">查看所有</span></a></li>
          <li class="px-nav-item"><a href="staff_shenhe2.html"><span class="px-nav-label">修改</span></a></li>
        </ul>
      </li>
      <li class="px-nav-item">
        <a href="staff_tongzhi.html"><i class="px-nav-icon fa fa-bell-o"></i><span class="px-nav-label">通知上门取件</span></a>
      </li>
      <li class="px-nav-item">
        <a href="staff_zhongzhuan.html"><i class="px-nav-icon fa fa-map-marker"></i><span class="px-nav-label">中转信息录入</span></a>
      </li>
      <li class="px-nav-item px-nav-dropdown">
        <a href="staff_tousu.html"><i class="px-nav-icon fa fa-times-circle-o"></i><span class="px-nav-label">投诉管理</span></a>
         <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="staff_tousu.html"><span class="px-nav-label">查看所有</span></a></li>
          <li class="px-nav-item"><a href="staff_tousu2.html"><span class="px-nav-label">反馈</span></a></li>
        </ul>
      </li>
    </ul>
  </nav>

  <nav class="navbar px-navbar">
    <!-- Header -->
    <div class="navbar-header">
      <a class="navbar-brand px-demo-brand" href="staff_index.html"><span class="px-demo-logo bg-primary"><span class="px-demo-logo-1"></span><span class="px-demo-logo-2"></span><span class="px-demo-logo-3"></span><span class="px-demo-logo-4"></span><span class="px-demo-logo-5"></span><span class="px-demo-logo-6"></span><span class="px-demo-logo-7"></span><span class="px-demo-logo-8"></span><span class="px-demo-logo-9"></span></span>工作人员界面</a>
    </div>

    <!-- Navbar togglers -->
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#px-demo-navbar-collapse" aria-expanded="false"><i class="navbar-toggle-icon"></i></button>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="px-demo-navbar-collapse">
        </div><!-- /.navbar-collapse -->
  </nav>
  </body>
</html>
  