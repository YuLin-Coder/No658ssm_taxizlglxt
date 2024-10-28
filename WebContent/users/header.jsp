<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<link href="themes/ecmoban_dangdang/style.css" rel="stylesheet" type="text/css" />
<div class="top_nav">
	<div class="block">
		<ul class="top_bav_l">
		</ul>
		<div class="header_r">
			<font id="ECS_MEMBERZONE"> 欢迎来到${title }　<c:if test="${sessionScope.userid == null }">
					<a style="color: #FF6766;" href="index/preLogin.action">[会员登录]</a>
					<a style="color: #FF6766;" href="index/preReg.action">[会员注册]</a>
				</c:if> <c:if test="${sessionScope.userid != null }">
									你好
									<b>${sessionScope.username }</b>
					<a style="color: #FF6766;" href="index/usercenter.action">[用户中心]</a>
					<a style="color: #FF6766;" href="index/exit.action">[退出登录]</a>
				</c:if>
			</font>
		</div>
	</div>
</div>
<div class="clearfix">
	<div class="block header">
		<div class="top">
			<a href="index/index.action" class="logo" style="font-size: 30px;
    font-weight: bold;
    color: #3592e2;
    padding-left: 20px;
    height: 80px;
    line-height: 60px;">出租车租赁管理系统</a>
		</div>
	</div>
</div>
<div style="clear: both"></div>
<div class="menu_box clearfix">
	<div class="block">
		<div class="menu">
			<a href="index/index.action" rel="nofollow">首页</a> 
			<a href="index/article.action" rel="nofollow">行业热点</a>
			<a href="index/recommend.action" rel="nofollow">爆款租车</a>
			<a href="index/special.action" rel="nofollow">优选租车</a>
			<a href="index/all.action" rel="nofollow">全部租车</a>
		</div>
	</div>
</div>