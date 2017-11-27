<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjSubList.aspx.cs" Inherits="qxjSoft.Web.OJ.ObjSubList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
        var matchId = '<%=matchid %>';
        $("#matchid").val(matchId);
        
        tState = '';
        tUrl = "OJ/Handler/ObjSubList.ashx";
        SearchByCondition();

        function zhichu(subid)
        {
            var money= $("#txtZCMoney" + subid).val();
            ActionModel("OJ/ObjSubList.aspx?Action=Modify&subid=" + subid + "&money=" + money , "查看详情",$('#form1').serialize(), "OJ/ObjSubList.aspx?id=<%=matchid %>");
        }

    </script>
</head>
<body>
    <div id="mempay">
        <div class="control">
            <div class="select">
              
            </div>
            <div class="pay" onclick="UpDateByID('OJ/EditObjSub.aspx?','修改项目子项',900,470);">
                修改项目子项</div>
            <div class="pay" onclick="javascript:callhtml('OJ/AddObjSub.aspx?id=<%=matchid %>','新增项目子项');">
                新增项目子项</div>
            <div class="search" id="DivSearch" runat="server">
                 <input type="hidden"  data-name="txtKey" id="matchid"  name="txtKey" />
            </div>
        </div>
        <div class="ui_table">
            <table cellpadding="0" cellspacing="0" class="tabcolor" id="Result">
                <tr>
                    <th width="50px">
                        全选
                    </th>
                    <th>
                        序号
                    </th>
                   <%-- <th width="10%">
                        项目子项名称
                    </th>--%>
                    <th>
                        负责人
                    </th>
                    <th>
                        子项类别
                    </th>
                    <th>
                        经费额
                    </th>
                    <th>
                        已支出
                    </th>
                    <th>
                        超支比例
                    </th>
                    <th>
                        支出封顶
                    </th>
                    <th>
                        创建时间
                    </th>
                    <th>
                        支出金额
                    </th>
                    <th>
                        操作支出
                    </th>
                </tr>
            </table>
            <div class="ui_table_control">
                <em style="vertical-align: middle;">
                    <input type="checkbox" id="chkAll" onclick="SelectChk(this);" /></em>
                <div class="pn">
                    <a href="javascript:void(0);" title="" onclick="RunAjaxByList('','Del_ObjSub',',');">
                                删除</a>
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
