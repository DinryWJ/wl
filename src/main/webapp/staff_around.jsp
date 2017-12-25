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

       <img src="/images/z.jpg" alt="" class="pull-xs-left m-r-2 border-round" style="width: 54px; height: 54px;">  
        <div class="font-size-16"><span class="font-weight-light"></span><strong>${sessionScope.staff.name}</strong></div>
        <div class="btn-group" style="margin-top: 4px;">
          <a href="/staff_tousu.html" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-envelope"></i></a>
          <a href="/staff_person.html" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-user"></i></a>
          <a href="/staff_person.html" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-cog"></i></a>
          <a href="/stafftoLogin.html" class="btn btn-xs btn-danger btn-outline"><i class="fa fa-power-off"></i></a>
        </div>
      </li>
      <li class="px-nav-item">
        <a href="staff_index.html"><i class="px-nav-icon ion-ios-pulse-strong"></i><span class="px-nav-label">首页</span></a>
      </li>
<c:if test="${sessionScope.staff.position!=0}">
      <li class="px-nav-item">
         <a href="staff_sh.html"><i class="px-nav-icon fa fa-search"></i><span class="px-nav-label">邮件搜索</span></a>
      </li>

       <li class="px-nav-item">
         <a href="staff_person.html"><i class="px-nav-icon fa fa-cog"></i><span class="px-nav-label">个人设置</span></a>
      </li>
</c:if>
<c:if test="${sessionScope.staff.position==2}">
      <li class="px-nav-item px-nav-dropdown">
        <a href="shenhe.html"><i class="px-nav-icon fa fa-archive"></i><span class="px-nav-label">寄件信息管理</span></a>
        <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="staff_shenhe.html"><span class="px-nav-label">查看所有</span></a></li>
          <li class="px-nav-item"><a href="staff_shenhe2.html"><span class="px-nav-label">修改</span></a></li>
        </ul>
      </li>
      <li class="px-nav-item px-nav-dropdown">
        <a href="staff_tongzhi.html"><i class="px-nav-icon fa fa-telegram"></i><span class="px-nav-label">上门取件管理</span></a>
      	 <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="staff_tongzhi.html"><span class="px-nav-label">未处理订单</span></a></li>
          <li class="px-nav-item"><a href="staff_tongzhi2.html"><span class="px-nav-label">上门取件</span></a></li>
        </ul>
      </li>  
      
</c:if>   
<c:if test="${sessionScope.staff.position==1}">
      <li class="px-nav-item">
        <a href="staff_confirm.html"><i class="px-nav-icon fa fa-check"></i><span class="px-nav-label">待确认邮件</span></a>
      </li>
      <li class="px-nav-item">
        <a href="staff_zhongzhuan.html"><i class="px-nav-icon fa fa-map-marker"></i><span class="px-nav-label">物流信息管理</span></a>
      </li>

</c:if>  
<c:if test="${sessionScope.staff.position==2}">
      <li class="px-nav-item px-nav-dropdown">
        <a href="staff_tousu.html"><i class="px-nav-icon fa fa-times-circle-o"></i><span class="px-nav-label">投诉管理</span></a>
         <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="staff_tousu.html"><span class="px-nav-label">查看所有</span></a></li>
          <li class="px-nav-item"><a href="staff_tousu2.html"><span class="px-nav-label">反馈</span></a></li>
        </ul>
      </li>
</c:if>
<c:if test="${sessionScope.staff.position==0}">
		<li class="px-nav-item px-nav-dropdown">
        <a href=""><i class="px-nav-icon fa fa-user"></i><span class="px-nav-label">用户管理</span></a>
         <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="staff_seachyh.html"><span class="px-nav-label">搜索用户</span></a></li>
          <li class="px-nav-item"><a href="staff_getyh.html"><span class="px-nav-label">修改用户信息</span></a></li>
        </ul>
      </li>

      <li class="px-nav-item px-nav-dropdown">
        <a href="admin_newZZZ.html"><i class="px-nav-icon fa fa-building"></i><span class="px-nav-label">中转站管理</span></a>
         <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="admin_allZZZ.html"><span class="px-nav-label">所有中转站</span></a></li>
          <li class="px-nav-item"><a href="admin_newZZZ.html"><span class="px-nav-label">新增中转站</span></a></li>
          <li class="px-nav-item"><a href="admin_modifyZZZ.html"><span class="px-nav-label">修改中转站信息</span></a></li>
        </ul>
      </li>
      
      <li class="px-nav-item px-nav-dropdown">
        <a href="#"><i class="px-nav-icon fa fa-building"></i><span class="px-nav-label">工作人员管理</span></a>
         <ul class="px-nav-dropdown-menu">
          <li class="px-nav-item"><a href="admin_searchyh.html"><span class="px-nav-label">所有工作人员</span></a></li>
          <li class="px-nav-item"><a href="admin_getyh.html"><span class="px-nav-label">修改工作人员</span></a></li>
         </ul>
      </li>
</c:if>
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
  