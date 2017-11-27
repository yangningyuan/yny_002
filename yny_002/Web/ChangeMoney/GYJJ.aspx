<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GYJJ.aspx.cs" Inherits="zx270.Web.ChangeMoney.GYJJ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <div id="mempay">
        <div id="finance">
            <form id="form1">
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td width="15%" align="right">
                        <span>会员ID：</span>
                    </td>
                    <td width="35%">
                        <%=TModel.MID %>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        您捐献的每一个莱特币都将进入公益基金钱包,该钱包向所有人公开
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>捐款金额：</span>
                    </td>
                    <td>
                        <input name="txtMHB" id="txtMHB" class="normal_input" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input name="重置" type="reset" class="pay_reset" value="重置" style="display: none;" />
                    </td>
                    <td>
                        <input class="normal_btnok" id="Button1" type="button" runat="server" value="提交"
                            onclick="checkChange();" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function checkChange() {
            if ($('#txtMHB').val().Trim() == "") {
                v5.error('捐款金额不能为空', '1', 'true');
            } else if (!$('#txtMHB').val().TryInt()) {
                v5.error('捐款金额应该为整数', '1', 'true');
            } else {
                ActionModel("ChangeMoney/GYJJ.aspx?Action=Add", $('#form1').serialize());
            }
        }
    </script>
</body>
</html>
