<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="yny_002.Web.mobile.pages.help" %>
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
    <div class="warp" id="help">
        <header id="header">
            <h3><span class="iconfont goback">&#xe614;</span>关于我们</h3>
        </header>
        <section>
            <div class="introduce">
                <h3>充电桩操作说明</h3>

                <div class="operates">
                    <p class="title">四种操作</p>
                    <p>1.通过微信公众号</p>
                    <p>2.扫描设备二维码</p>
                    <p>3.扫描插座二维码</p>
                    <p>4.刷卡</p>
                </div>

                <h2>通过微信公众号</h2>
                <p class="line"></p>
            </div>
        </section>
        <footer id="footer">
            <ul>
                <li><a href="javascript:alert('功能暂未开发')"><span class="iconfont">&#xe605;</span><p>电站</p>
                </a></li>
                <li><a href="/mobile/pages/smcd.aspx"><span class="iconfont">&#xe602;</span><p>扫插座</p>
                </a></li>
                <li><a href="/mobile/pages/personCenter.aspx" class="active"><span class="iconfont">&#xe609;</span><p>我的</p>
                </a></li>
            </ul>
        </footer>
    </div>
    <script type="text/javascript" src="/mobile/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="/mobile/js/main.js"></script>
</body>
</html>
