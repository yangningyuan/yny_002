<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smcd.aspx.cs" Inherits="yny_002.Web.mobile.pages.smcd" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
		<link rel="stylesheet" href="/mobile/css/mui.min.css" />
		<link rel="stylesheet" href="/mobile/plugins/iconfont/iconfont.css" />
		<link rel="stylesheet" href="/mobile/css/style.css" /> 
		<title>充值</title>
	</head>
	<body>
		<div class="warp" id="electricize">
			<header id="header">
				<h3><span class="iconfont goback">&#xe614;</span>充电中</h3>
			</header>
			<section>
				<div class="electricizeInfo">
					<div class='topIcon'>
						<a href="" class="left"><span class="iconfont">&#xe66a;</span></a>
						<a href="" class="right"><span class="iconfont">&#xe601;</span></a>
					</div>
					<div class="bottomInfo">
						<div class="left">
							<p>00:00:00</p>
							<p>剩余时长</p>
						</div>
						<div class="right">
							<p>0元/小时</p>
							<p>充电费率</p>
						</div>
					</div>
				</div>
				<p class="tips">点击左上角扫描插座二维码充电</p>
			</section>
			<footer id="footer">
				<ul>
					<li><a href="javascript:alert('功能暂未开发')"><span class="iconfont">&#xe605;</span><p>电站</p></a></li>
					<li><a href="/mobile/pages/smcd.aspx"  class="active"><span class="iconfont">&#xe602;</span><p>扫插座</p></a></li>
					<li><a href="/mobile/pages/personCenter.aspx"><span class="iconfont">&#xe609;</span><p>我的</p></a></li>
				</ul>
			</footer>
		</div>
		<script type="text/javascript" src="/mobile/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="/mobile/js/main.js"></script>
	</body>
</html>

