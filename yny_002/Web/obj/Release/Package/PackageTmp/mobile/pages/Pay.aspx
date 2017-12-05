<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay.aspx.cs" Inherits="yny_002.Web.mobile.pages.Pay" %>

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
		<div class="warp" id="recharge">
			<header id="header">
				<h3><span class="iconfont goback">&#xe614;</span>充值</h3>
			</header>
			<section>
				<ul class="mui-table-view payType">
					<li class="mui-table-view-cell title">
				        支付方式
				    </li>
				    <li class="mui-table-view-cell" onclick="chooseType(this)">
				        微信支付<span class="iconfont  active">&#xe604;</span>
				    </li>
				    
				</ul>
				<div class='userInput'><input type="text" value="" /></div>
				<ul class="numList chooseIt">
					<li class="active">5</li>
					<li>10</li>
					<li class="noMargin">50</li>
					<li>100</li>
				</ul>
				<div>
					<button class="myButton">充值</button>
					<p class="tips">点击确定表示已阅读并同意<a href="">充值说明</a></p>
				</div>
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

