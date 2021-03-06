﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GTypeList.aspx.cs" Inherits="yny_002.Web.CDZ.GTypeList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        tUrl = "CDZ/Handler/GTypeList.ashx";
        tState = "";
        SearchByCondition();
    </script>
</head>
<body>
    <div id="mempay">
        <div class="control">
            <%--<div class="select">
                <a href="javascript:void(0);" onclick="SearchByState('',this);" class="btn btn-danger">
                    全部</a><a href="javascript:void(0);" onclick="SearchByState('true',this);" class="btn btn-success">
                        有效</a><a href="javascript:void(0)" onclick="SearchByState('false',this);" class="btn btn-success">无效</a></div>--%>
            <div class="search" id="DivSearch" runat="server">
                <input type="button" value="查询" class="ssubmit" onclick="SearchByCondition()" />
                <input name="txtKey" data-name="txtKey" id="mKey"  type="text" class="sinput" />
               <%-- <input type="text" name="txtKey" data-name="txtKey" id="endDate" value="截止日期" onfocus="if (value =='截止日期'){value =''}"
                    class="daycash_input" style="width: 120px;" onclick="WdatePicker({minDate:'#F{$dp.$D(\'startDate\')}'})" />
                <input type="text" name="txtKey" data-name="txtKey" id="startDate" value="开始日期" onfocus="if (value =='开始日期'){value =''}"
                    class="daycash_input" style="width: 120px;" onclick="WdatePicker({maxDate:'#F{$dp.$D(\'endDate\')}'})" />--%>
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
                        组名
                    </th>
                    <th>
                        负责人
                    </th>
                   
                </tr>
            </table>
            <div class="ui_table_control">
                <em style="vertical-align: middle;">
                    <input type="checkbox" id="chkAll" onclick="SelectChk(this);" /></em>
                <div class="pn">
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