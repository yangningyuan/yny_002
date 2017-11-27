<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RobDraw.aspx.cs" Inherits="zx270.Web.LotteryDraw.RobDraw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
    <title></title>
    <link href="LotteryDraw/css/LotteryDraw.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $(".red").click(function () {
                verifypsd(function () {
                    var data = RunAjaxGetKey("robDraw", "", null, null, '/LotteryDraw/Handler/Ajax.ashx');
                    if (data[0] != '0') {
                        $(".windows .text").html(data.substring(1));
                        $(".red").addClass("shake");
                        setTimeout(function () {
                            $(".red").removeClass("shake");
                            $(".windows").fadeIn();
                            $(".opacity").fadeIn();
                        }, 2000);
                    }
                    else {
                        v5.alert(data.substring(1), '1', 'true');
                    }
                });
            });
            $(".close").click(function () { $(this).parent().fadeOut(); $(".opacity").fadeOut() })
        });
    </script>
</head>
<body>
    <div id="mempay">
        <div id="finance">
            <div class="opacity">
            </div>
            <div class="red">
                <img src="LotteryDraw/images/asd23.png" alt="" style="border-radius: 12px;" />
                <p style="color: white;">
                    当前剩余红包数量：<span><%=zx270.BLL.LotteryDraw.GetReaminCount(TModel.MID)%></span>。拆红包需支付：<span><%=zx270.BLL.Configuration.Model.DrawMoney %></span>。</p>
            </div>
            <div class="windows">
                <div class="text">
                    恭喜抽中棒棒糖一枚！</div>
                <div class="close">
                    <img src="LotteryDraw/images/close.png" alt="" /></div>
            </div>
            <div style="text-align: center; margin: 220px 0; color: white;">
            </div>
        </div>
    </div>
</body>
</html>
