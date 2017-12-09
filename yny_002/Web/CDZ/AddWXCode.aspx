<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddWXCode.aspx.cs" Inherits="yny_002.Web.CDZ.AddWXCode" %>

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
                            <span>分组：</span>
                        </td>
                        <td>
                            <select id="gtype" runat="server"></select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span>ID编码：</span>
                        </td>
                        <td>
                            <input name="C_CodeID" id="C_CodeID" readonly="readonly"  runat="server" class="normal_input" type="text" />
                        </td>
                    </tr>
                      <tr>
                        <td align="right">
                            <span>厂家ID编码：</span>
                        </td>
                        <td>
                            <input name="C_CJCodeID" runat="server" id="C_CJCodeID" class="normal_input" type="text" />
                        </td>
                    </tr>
                      
                    <tr>
                        <td></td>
                        <td>
                            <input class="normal_btnok" id="Button1" type="button" runat="server" value="创建充电桩"
                                onclick="checkChange();" />
                        </td>
                    </tr>

                </table>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function checkChange() {
            if ($('#C_CodeID').val().Trim() == "") {
                v5.error('ID不能为空', '1', 'true');
            } else if ($('#C_CJCodeID').val().Trim() == "") {
                v5.error('厂家ID编码不能为空', '1', 'true');
            } else {
                layer.confirm('确定添加充电桩？', {
                    btn: ['确定', '取消'], //按钮
                    shade: false //不显示遮罩
                }, function (index) {
                    ActionModel("CDZ/AddWXCode.aspx?Action=Add", $('#form1').serialize());
                    layer.close(index);
                });
            }
        }
    </script>
</body>
</html>
