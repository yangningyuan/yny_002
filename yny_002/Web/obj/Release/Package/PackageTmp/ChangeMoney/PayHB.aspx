﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayHB.aspx.cs" Inherits="yny_002.Web.ChangeMoney.PayHB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        #finance table tr {
            vertical-align: middle;
            text-align: center;
            height: 50px;
        }

            #finance table tr td {
                padding: 0px;
                vertical-align: middle;
            }

        .bank table tr td img {
            width: 154px;
        }

        .recharge {
            background: #FD6F0D;
            background: rgba(253, 111, 13, 0.35);
            padding: 20px 0px;
            color: white;
            font-size: 24px;
            text-align: center;
            margin: 20px 0px;
        }

            .recharge b {
                margin: 0px 20px;
            }

        .sel {
            display: inline-block;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $(":radio").click(function () {
                if ($(this).val() == '4') {
                    callhtml('ChangeMoney/HKChangeFlow.aspx', '银行汇款');
                }
            });
        });

        function checkJe() {
            if ($('#txtValidMoney').val().Trim() == "") {
                v5.error('充值金额不能为空', '1', 'true');
                return false;
                //} else if (!$('#txtValidMoney').val().TryMoney()) {
                //    v5.error('充值金额错误', '1', 'true');
                //    return false;
            } else {
                return true;
            }
        }

        function Redirect() {
            if ($('#txtValidMoney').val().Trim() == "") {
                v5.error('充值金额不能为空', '1', 'true');
            } else {
                var ss = $("input:radio:checked").val();
                if (ss == '1') {
                    document.forms[0].action = "Payment/GuoFuBao/Redirect.aspx";
                }
                else if (ss == '2') {
                    document.forms[0].action = "Payment/ShouXinyi/Redirect.aspx";
                }
                else if (ss == '3') {
                    document.forms[0].action = "Payment/ShouXinyi/WeiXin.aspx";
                }
                else {
                    if ($('#txtValidMoney').val() > 500) {
                        layer.msg("支付宝单笔充值最高500，可以分多笔支付");
                        return;
                    }
                    document.forms[0].action = "Payment/ShouXinyi/ZhiFuBao.aspx";
                }
                document.forms[0].submit();
            }
        }
    </script>
</head>
<body>
    <div id="mempay">
        <div id="finance" class="bank">
            <form id="form1" method="post" target="_blank" action="Payment/GuoFuBao/Redirect.aspx">
                <span class="remak">温馨提示：请在新打开的页面中完成支付，汇率为1：<%=yny_002.BLL.Configuration.Model.B_InFloat%> </span>
                <input type="hidden" id="bankauto" runat="server" />
                <input type="hidden" id="tmid" runat="server" />
                <div class="recharge">
                    <b>请选择支付方式</b>
                    <%--<div class="sel">
                        <input name="zf" type="radio" value="1" checked="checked" />&nbsp;&nbsp;在线支付一&nbsp;&nbsp;
                    </div>--%>
                    <%--<div class="sel">
                        <input name="zf" type="radio" value="2" checked="checked" />&nbsp;&nbsp;在线支付&nbsp;&nbsp;
                    </div>--%>
                    <%-- <div class="sel">
                        <input name="zf" type="radio" value="3" />&nbsp;&nbsp;微信支付&nbsp;&nbsp;
                    </div>--%>
                      <div class="sel">
                        <input name="zf" type="radio" value="5"  onclick="v5.show('ChangeMoney/HKChangeFlow.aspx', '支付宝快充', 'url', 680, 330)"/>&nbsp;&nbsp;支付宝快充</div>
                     <div class="sel">
                        <input name="zf" type="radio" value="6"  onclick="v5.show('ChangeMoney/HKChangeWY.aspx', '网银汇款', 'url', 680, 330)"/>&nbsp;&nbsp;网银汇款</div>
                    <%--    <div class="sel">
                        <input name="zf" type="radio" value="4" />&nbsp;&nbsp;支付宝汇款
                    </div>--%>
                </div>
                <table cellpadding="0" cellspacing="0" style=" display:none;">
                    <tr>
                        <td style="text-align: right; font-size: 24px;">
                            <span style="font-size: 2rem;">充值金额：</span>
                        </td>
                        <td colspan="3" style="padding-left: 20px; text-align: left;">
                            <input id="txtValidMoney" runat="server" class="normal_input" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3" align="center" style="padding-left: 20px; text-align: left;">
                            <input type="button" name="Submit" value="确定" id="Submit2" class="normal_btnok" onclick="Redirect()" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>

<%--<body>
    <div id="mempay">
        <div id="finance" class="bank">
            <input type="hidden" id="bankauto"  runat="server" />
            <form id="form1" method="post" target="_blank" action="Payment/YiTong/redirect.aspx">
                <input type="hidden" id="tmid"  runat="server" />    
                <span class="remak">温馨提示：请在新打开的页面中完成支付，汇率为1：<%=yny_002.BLL.Configuration.Model.B_InFloat%> </span>
                <div class="recharge">
                    <b>请选择支付方式</b>
            
                </div>
                <table cellpadding="0" cellspacing="0">
                      <tr>
                        <td style="text-align: right; font-size: 24px;">
                            <span style="font-size: 2rem;">充值类型：</span>
                        </td>
                        <td colspan="3" style="padding-left: 20px; text-align: left;">
                        
                            <input  type="radio" value="yh" name="paytype" checked="checked">网银支付
                            <input  type="radio" value="sm" name="paytype">电脑扫码支付
                            <input  type="radio" value="sjsm" name="paytype">手机扫码支付
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: 24px;">
                            <span style="font-size: 2rem;">充值金额：</span>
                        </td>
                        <td colspan="3" style="padding-left: 20px; text-align: left;">
                            <input id="txtValidMoney" runat="server" class="normal_input" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3" align="center" style="padding-left: 20px; text-align: left;">
                            <input type="button" name="Submit" value="确定" id="Submit2" class="normal_btnok" onclick="Redirect()" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>--%>
