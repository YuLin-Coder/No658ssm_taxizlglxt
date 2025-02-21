<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
<link href="themes/ecmoban_dangdang/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="themes/ecmoban_dangdang/js/index.js" charset="utf-8"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="block clearfix">
		<div class="f_l" style="width: 1200px;">

			<div class="container" id="idTransformView">
				<ul class="slider" id="idSlider">
					<li><img src="pic/001.jpg" /></li>
					<li><img src="pic/002.jpg" /></li>
					<li><img src="pic/003.jpg" /></li>
					<li><img src="pic/004.jpg" /></li>
				</ul>
				<ul class="num" id="idNum">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
		<div class="blank"></div>
		<div class="blank"></div>
		<div class="goodsBox_1">
			<c:forEach items="${frontList}" var="cate" varStatus="status">
				<div class="xm-box">
					<h4 class="title">
						<span>${cate.catename}</span> <a class="more" href="index/cate.action?id=${cate.cateid }">更多</a>
					</h4>
					<div class="blank"></div>
					<div id="show_new_area" class="clearfix">
						<c:forEach items="${cate.carsList}" var="cars">
							<div class="goodsItem">
								<a href="index/detail.action?id=${cars.carsid }"><img src="${cars.image }" alt="${cars.carsno }" class="goodsimg" /></a><br />
								<p class="f1">
									<a href="index/detail.action?id=${cars.carsid }" title="${cars.carsno }">${cars.carsno }</a>
								</p>
								租金：<font class="f1"> ￥${cars.price }元/天 </font>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="blank"></div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
