<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuitSH.aspx.cs" Inherits="zx270.Web.ChangeMoney.QuitSH" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div id="mempay">
        <div id="finance">
            <form id="form1">
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td align="right">
                        <span>会员帐号：</span>
                    </td>
                    <td colspan="3">
                        <%=quitModel.MID%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>申请时间：</span>
                    </td>
                    <td>
                        <%=quitModel.CreateTime %>
                    </td>
                    <td align="right">
                        <span>进入系统时间：</span>
                    </td>
                    <td>
                        <%=quitModel.EnterTime %>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>已提现金额：</span>
                    </td>
                    <td>
                        <%=quitModel.TXMoney %>
                    </td>
                    <td align="right">
                        <span>总投资金额：</span>
                    </td>
                    <td>
                        <%=quitModel.InvestMoney %>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>处理结果：</span>
                    </td>
                    <td colspan="3">
                        <select id="ddlTo">
                            <option value="1">通过</option>
                            <option value="0">拒绝</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>备注：</span>
                    </td>
                    <td colspan="3">
                        <textarea id="txtRemark" cols="5" rows="5" style="width: 500px; height: 300px"></textarea>
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</body>
</html>
