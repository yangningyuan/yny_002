<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuitSys.aspx.cs" Inherits="zx270.Web.ChangeMoney.QuitSys" %>

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
                    <td width="35%" align="right">
                        <span>会员ID：</span>
                    </td>
                    <td>
                        <%=TModel.MID %>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>投资金额：</span>
                    </td>
                    <td>
                        <%=TModel.MConfig.SHMoney %>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>已提现金额:</span>
                    </td>
                    <td>
                        <%=money %>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>退出提醒:</span>
                    </td>
                    <td>
                        <span>退出平台管理员将根据您的投资金额及提现金额来确定返还给您的金额，一旦审核通过您的帐号将永久封号，请慎重考虑。</span>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <input class="btn btn-success" id="btnOK" type="button" runat="server" value="提交"
                            onclick="checkChange();" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function checkChange() {
            ActionModel("ChangeMoney/QuitSys.aspx?Action=add", $('#form1').serialize());
        }
    </script>
</body>
</html>
