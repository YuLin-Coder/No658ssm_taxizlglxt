<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="index.jsp">首页</a>
			<code> &gt; </code>
			行业热点
		</div>
	</div>
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="AreaL">
			<div id="category_tree">
				<div class="tit">所有车辆分类</div>
				<dl class="clearfix">
					<div class="box1 cate" id="cate">
						<c:forEach items="${cateList}" var="cate" varStatus="xh">
							<h1 style="border-top: none">
								<span class="f_l"></span> <a href="index/cate.action?id=${cate.cateid }" class="  f_l">${cate.catename }</a>
							</h1>
							<div style="clear: both"></div>
						</c:forEach>
					</div>
					<div style="clear: both"></div>
			</div>
			<div class="blank"></div>
			<div class="box" id='history_div'>
				<div class="box_1">
					<h3>
						<span>猜你喜欢</span>
					</h3>
					<div class="boxCenterList clearfix" id='history_list'>
						<c:forEach items="${hotList}" var="cars">
							<ul class="clearfix">
								<li class="goodsimg"><a href="index/detail.action?id=${cars.carsid }" target="_blank"><img src="${cars.image }"
										alt="${cars.carsno }" class="B_blue" /></a></li>
								<li><a href="index/detail.action?id=${cars.carsid }" target="_blank" title="${cars.carsno }">${cars.carsno }</a><br />售价：<font
									class="f1">￥${cars.price}元/天</font><br /></li>
							</ul>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="blank5"></div>
		</div>
		<div class="AreaR">
			<div>
				<div class="art_cat_box">
					<table width="100%" border="0" cellpadding="5" cellspacing="0">
						<tr>
							<th style="background: #e5e5e5">文章标题</th>
							<th style="background: #e5e5e5">作者</th>
							<th style="background: #e5e5e5">添加日期</th>
						</tr>
						<c:forEach items="${articleList}" var="article">
							<tr>
								<td><a title="${article.title }" href="index/read.action?id=${article.articleid }" style="text-decoration: none" class="f6">${article.title }</a></td>
								<td align="center">管理员</td>
								<td align="center">${article.addtime }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="blank5"></div>
			<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
				<tr>
					<td align="center" bgcolor="#ffffff">${html}</td>
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
