<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGType.aspx.cs" Inherits="yny_002.Web.CDZ.AddGType" %>

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
                        <span>添加组名：</span>
                    </td>
                    <td>
                        <input name="txtName" id="txtName"  class="normal_input" type="text" />
                    </td>
                </tr>
                  <tr>
                    <td align="right">
                        <span>添加负责人：</span>
                    </td>
                    <td>
                        <input name="txtPenson" id="txtPenson"  class="normal_input" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <input class="normal_btnok" id="Button1" type="button" runat="server" value="创建组"
                            onclick="checkChange();" />
                    </td>
                </tr>
               
            </table>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function checkChange() {
            if ($('#txtName').val().Trim() == "") {
                v5.error('组名不能为空', '1', 'true');
            } else if ($('#txtPenson').val().Trim()=="") {
                v5.error('组负责人不能为空', '1', 'true');
            } else {
                layer.confirm('确定添加组？', {
                    btn: ['确定', '取消'], //按钮
                    shade: false //不显示遮罩
                }, function (index) {
                    ActionModel("CDZ/AddGType.aspx?Action=Add", $('#form1').serialize());
                    layer.close(index);
                });
                
               
            }
        }
    </script>
</body>
</html>
