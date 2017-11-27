<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuitRecord.aspx.cs" Inherits="zx270.Web.ChangeMoney.QuitRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        tState = 'false';
        tUrl = 'ChangeMoney/Handler/QuitRecord.ashx';
        SearchByCondition();
        function shQuit(id) {
            layer.open({
                title: '审核',
                type: 2,
                content: ['/ChangeMoney/QuitSH.aspx?id=' + id],
                area: ['800px', '500px'],
                btn: ['确认', '关闭'],
                yes: function (index, layero) {
                    var result = layer.getChildFrame('body', index);
                    var ddl = result.find('#ddlTo').val();
                    var txtRemark = result.find('#txtRemark').val();
                    var data = RunAjaxGetKey("QuitSH", id + "@" + ddl + "@" + txtRemark);
                    PageLoad();
                    layer.alert(data, {
                        skin: 'layer-ext-moon',
                        btn: '关闭',
                        yes: function (index, layero) {
                            layer.closeAll();
                        }
                    });
                },
                cancel: function (index, layero) {
                    layer.close(index);
                }
            });
        }
    </script>
</head>
<body>
    <div id="mempay">
        <div class="control">
            <div class="search" id="DivSearch" runat="server">
                <input type="button" value="查询" class="ssubmit" onclick="SearchByCondition()" />
                <input name="txtKey" data-name="txtKey" id="mKey" placeholder="请输入会员账号" type="text" class="sinput" />
                <input type="text" name="txtKey" data-name="txtKey" id="endDate" placeholder="截止日期" onfocus="if (value =='截止日期'){value =''}"
                    class="daycash_input" style="width: 120px;" onclick="WdatePicker({minDate:'#F{$dp.$D(\'startDate\')}'})" />
                <input type="text" name="txtKey" data-name="txtKey" id="startDate" placeholder="开始日期" onfocus="if (value =='开始日期'){value =''}"
                    class="daycash_input" style="width: 120px;" onclick="WdatePicker({maxDate:'#F{$dp.$D(\'endDate\')}'})" /></div>
        </div>
        <div class="ui_table">
            <table cellpadding="0" cellspacing="0" id="Result" class="tabcolor">
                <tr>
                    <th width="50px">
                        全选
                    </th>
                    <th>
                        序号
                    </th>
                    <th>
                        会员账号
                    </th>
                    <th>
                        申请时间
                    </th>
                    <th>
                        进入系统时间
                    </th>
                    <th>
                        已提现金额
                    </th>
                    <th>
                        总投资额
                    </th>
                    <th>
                        状态
                    </th>
                    <th>
                        审核时间
                    </th>
                    <th>
                        备注
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
            </table>
            <div class="ui_table_control">
                <em style="vertical-align: middle;">
                    <input type="checkbox" id="chkAll" onclick="SelectChk(this);" /></em>
                <div class="pn" id="DivDelete" runat="server">
                </div>
                <div class="pagebar">
                    <div id="Pagination">
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
