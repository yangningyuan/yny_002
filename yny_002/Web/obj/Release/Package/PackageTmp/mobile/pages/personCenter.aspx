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
                    <a href="#">
                        <img class="mui-media-object mui-pull-left perImg" src="<%=TModel.Address %>">
                        <div class="mui-media-body">
                            <p class="perName"><%=TModel.MID %>[<%=yny_002.BLL.Token.GetToken() %>]	</p>
                            <p class='mui-ellipsis toBindPh'><span class="iconfont">&#xe69f;</span><%=TModel.MName %></p>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view perlist">
                <li class="mui-table-view-cell perlist1">
                    <a class="mui-navigate-right" href="/mobile/pages/pay.aspx"><span class="iconfont">&#xe635;</span>我要充值（余额：<%=TModel.MConfig.MJB %>）</a>
                </li>

            </ul>
            <ul class="mui-table-view perlist">
                <li class="mui-table-view-cell perlist2">
                    <a class="mui-navigate-right" href="/mobile/pages/smcd.aspx"><span class="iconfont">&#xe65e;</span>正在充电</a>
                </li>
                <%--<li class="mui-table-view-cell perlist3">
                    <a class="mui-navigate-right"><span class="iconfont">&#xe673;</span>常用电站</a>
                </li>--%>
                <li class="mui-table-view-cell perlist4">
                    <a class="mui-navigate-right" href="rechargeList.html"><span class="iconfont">&#xe60a;</span>充值记录</a>
                </li>
                <li class="mui-table-view-cell perlist5">
                    <a class="mui-navigate-right" href="rechargeElectricityList.html"><span class="iconfont">&#xe610;</span>充电记录</a>
                </li>
                 <li class="mui-table-view-cell perlist6">
                    <a class="mui-navigate-right" href="/mobile/pages/help.aspx"><span class="iconfont">&#xe610;</span>使用帮助</a>
                </li>
                 <li class="mui-table-view-cell perlist7">
                    <a class="mui-navigate-right" href="/mobile/pages/about.aspx"><span class="iconfont">&#xe610;</span>关于我们</a>
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
