<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personCenter.aspx.cs" Inherits="yny_002.Web.mobile.pages.personCenter" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="/mobile/css/mui.min.css" />
    <link rel="stylesheet" href="/mobile/plugins/iconfont/iconfont.css" />
    <link rel="stylesheet" href="/mobile/css/style.css" />
    <title>个人中心</title>
</head>
<body>
    <div class="warp" id="perCenter">
        <header id="header">
            <h3><span class="iconfont goback">&#xe614;</span>闪开·来电</h3>
        </header>
        <section>
            <ul class="mui-table-view perInfo">
                <li class="mui-table-view-cell mui-media">
                    <a href="bindPhone.html">
                        <img class="mui-media-object mui-pull-left perImg" src="/mobile/img/perImg.png">
                        <div class="mui-media-body">
                            <p class="perName">昵称	</p>
                            <p class='mui-ellipsis toBindPh'><span class="iconfont">&#xe69f;</span>绑定手机号</p>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view perlist">
                <li class="mui-table-view-cell perlist1">
                    <a class="mui-navigate-right" href="recharge.html"><span class="iconfont">&#xe635;</span>我要充值（余额：0.00）</a>
                </li>

            </ul>
            <ul class="mui-table-view perlist">
                <li class="mui-table-view-cell perlist2">
                    <a class="mui-navigate-right" href="electricize.html"><span class="iconfont">&#xe65e;</span>正在充电</a>
                </li>
                <li class="mui-table-view-cell perlist3">
                    <a class="mui-navigate-right"><span class="iconfont">&#xe673;</span>常用电站</a>
                </li>
                <li class="mui-table-view-cell perlist4">
                    <a class="mui-navigate-right" href="rechargeList.html"><span class="iconfont">&#xe60a;</span>充值记录</a>
                </li>
                <li class="mui-table-view-cell perlist5">
                    <a class="mui-navigate-right" href="rechargeElectricityList.html"><span class="iconfont">&#xe610;</span>充电记录</a>
                </li>
            </ul>
        </section>
        <footer id="footer">
        </footer>
    </div>
    <script type="text/javascript" src="/mobile/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="/mobile/js/main.js"></script>
    <script>
        activeFooter(2);
    </script>
</body>
</html>
