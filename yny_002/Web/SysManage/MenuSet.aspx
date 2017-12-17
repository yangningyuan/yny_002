<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuSet.aspx.cs" Inherits="yny_002.Web.SysManage.MenuSet" %>

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
                        <td>例</td>
                        <td>{
     "button":[
      {
           "name":"菜单",
           "sub_button":[
           {	
               "type":"view",
               "name":"测试",
               "url":"http://wx.bzq1688.com/Login.aspx"
            }
           ]
       }]
 }</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span>添加菜单字符：</span>
                        </td>
                        <td>
                            <textarea class="normal_input" name="strmenu" id="strmenu" style="width: 80%; height: 300px;" runat="server" />

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input class="normal_btnok" id="Button1" type="button" runat="server" value="创建菜单"
                                onclick="checkChange();" />
                        </td>
                    </tr>

                </table>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function checkChange() {
            if ($('#strmenu').val().Trim() == "") {
                v5.error('菜单字符不能为空', '1', 'true');
            } else {
                layer.confirm('确定添加此菜单？', {
                    btn: ['确定', '取消'], //按钮
                    shade: false //不显示遮罩
                }, function (index) {
                    ActionModel("SysManage/MenuSet.aspx?Action=Add", $('#form1').serialize());
                    layer.close(index);
                });


            }
        }
    </script>
</body>
</html>
