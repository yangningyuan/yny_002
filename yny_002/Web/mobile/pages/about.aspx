<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="yny_002.Web.mobile.pages.about" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
		<link rel="stylesheet" href="/mobile/css/mui.min.css" />
		<link rel="stylesheet" href="/mobile/plugins/iconfont/iconfont.css" />
		<link rel="stylesheet" href="/mobile/css/style.css" /> 
		<title>关于我们</title>
	</head>
	<body>
		<div class="warp" id="aboutUs">
			<header id="header">
				<h3><span class="iconfont goback">&#xe614;</span>关于我们</h3>
			</header>
			<section>
				<div class="ourInfo">
					<img src="/mobile/img/perImg.png" class="logo" alt="" />
					<p class="version">充电：V1.0</p>
				</div>
				<ul class="mui-table-view">
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">版权声明</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">免责声明</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">全国热线服务电话：123213132</a>
				    </li>
				</ul>
			</section>
			<footer id="footer">
				<ul>
					<li><a href="javascript:alert('功能暂未开发')"><span class="iconfont">&#xe605;</span><p>电站</p></a></li>
					<li><a href="/mobile/pages/smcd.aspx"><span class="iconfont">&#xe602;</span><p>扫插座</p></a></li>
					<li><a href="/mobile/pages/personCenter.aspx" class="active"><span class="iconfont">&#xe609;</span><p>我的</p></a></li>
				</ul>
			</footer>
		</div>
		<script type="text/javascript" src="/mobile/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="/mobile/js/main.js"></script>
	</body>
</html>