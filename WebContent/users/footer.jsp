<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="g-footer">
	<div class="copyrightbox">
		<div class="copyright">
			<p class="rights"></p>
			<p class="rights">
				版权所有 &copy; <a href="admin/index.action" target="_blank">后台管理员入口</a>
			</p>
		</div>
	</div>
</div>
<div class="blank"></div>