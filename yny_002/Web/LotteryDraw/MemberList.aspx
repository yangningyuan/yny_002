<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberList.aspx.cs" Inherits="zx270.Web.LotteryDraw.MemberList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <%--<script src="SourceFiles/AcmeBlue/js/linkage.js" type="text/javascript"></script>--%>
    <title></title>
    <style type="text/css">
        td span
        {
            color: Red;
        }
    </style>
    <script type="text/javascript">
        tUrl = "LotteryDraw/Handler/MemberList.ashx";
        tState = "";
        SearchByCondition();
    </script>
</head>
<body>
    <div id="mempay">
        <div id="finance">
            <form id="form1">
            <div class="control">
                <div class="search" runat="server">
                    <input type="text" name="txtKey" data-name="txtKey" id="startDate" placeholder="开始日期" value="开始日期" onfocus="if (value =='开始日期'){value =''}"
                        class="daycash_input" style="width: 120px;" onclick="WdatePicker({maxDate:'#F{$dp.$D(\'endDate\')}'})" />
                    <input type="text" name="txtKey" data-name="txtKey" id="endDate" placeholder="截止日期" value="截止日期" onfocus="if (value =='截止日期'){value =''}"
                        class="daycash_input" style="width: 120px;" onclick="WdatePicker({minDate:'#F{$dp.$D(\'startDate\')}'})" />
                    <input name="txtKey" data-name="txtKey" id="mKey" placeholder="会员账号" value="会员账号" onfocus="if (value =='会员账号'){value =''}"
                        onblur="if (value ==''){value='会员账号'}" type="text" class="sinput" style="width: 120px;" />
                    <input type="button" value="查询" class="normal_btnok" onclick="SearchByCondition()" />
                </div>
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
                            红包编号
                        </th>
                        <th>
                            红包金额
                        </th>
                        <th>
                            红包状态
                        </th>
                        <th>
                            领取会员
                        </th>
                        <th>
                            领取时间
                        </th>
                        <th>
                            消耗股权
                        </th>
                    </tr>
                </table>
                <div class="ui_table_control">
                    <em style="vertical-align: middle;">
                        <input type="checkbox" id="chkAll" onclick="SelectChk(this);" /></em>
                    <div class="pn">
                        <%--<span id="DivOperation" runat="server"></span><a href="javascript:void(0);" class="btnDeleteIcon"
                            title="删除" onclick="RunAjaxByList('','LockActiveCode',',');">删除</a>--%>
                    </div>
                    <div class="pagebar">
                        <div id="Pagination">
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function checkChange() {
            if (checkForm()) {
                verifypsd(function () {
                    $.ajax({
                        type: 'post',
                        url: '/LotteryDraw/AddList.aspx?Action=add',
                        data: $('#form1').serialize(),
                        success: function (info) {
                            if (info == "1") {
                                v5.alert("生成成功", '1', 'true');
                                setTimeout(function () { v5.clearall(); callhtml('LotteryDraw/AddList.aspx', '红包管理'); }, 1000);
                            }
                            else {
                                v5.alert(info, '1', 'true');
                            }
                        }
                    });
                });
            }
        }
    </script>
</body>
</html>
