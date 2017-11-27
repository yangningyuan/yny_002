<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="zx270.Web.Payment.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table
        {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div id="mempay">
        <div id="finance">
            <form id="form1">
            <asp:Repeater ID="rep_List" runat="server">
                <ItemTemplate>
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="20%" align="right">
                                充值银行:
                            </td>
                            <td width="30%">
                                <%#GetBankByCode(Eval("Bank")).Name%>
                                <img src="../Attachment/<%#GetBankByCode(Eval("Bank")).PicUrl%>" />
                                <a href="<%#GetBankByCode(Eval("Bank")).LinkUrl%>" target="_blank">点此进入
                                    <%#GetBankByCode(Eval("Bank")).Name%></a>
                            </td>
                        </tr>
                        <tr>
                            <td width="20%" align="right">
                                收款账户名:
                            </td>
                            <td width="30%">
                                <span>冯霞</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="20%" align="right">
                                收款账号:
                            </td>
                            <td width="30%">
                                <span>
                                    <%#Eval("BankNumber") %></span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                附言（充值编号）:
                            </td>
                            <td>
                                <span>
                                    <%=TModel.MID %></span>，<span style="color: Red;">务必将充值编号正确填写到汇款附言里</span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                充值说明:
                            </td>
                            <td>
                                <p>
                                    务必将[充值编号]正确填写到银行汇款页面的[附言]栏中(复制->粘帖[CTRL+V])，否则充值将无法到账。</p>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
            </form>
        </div>
    </div>
    <script type="text/javascript">
    </script>
</body>
</html>
