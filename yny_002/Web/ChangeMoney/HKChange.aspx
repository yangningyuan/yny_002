<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HKChange.aspx.cs" Inherits="zx270.Web.ChangeMoney.HKChange"
    EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div id="mempay">
        <div id="finance">
            <form id="form1">
            <span class="remak">温馨提示：请选择您要充值的类型，确认后并向公司收款账户汇款，等待公司财务审核通过后，生效 </span>
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td width="35%" align="right">
                        <span>公司收款银行：</span>
                    </td>
                    <td>
                        <%=adminBank%>
                    </td>
                </tr>
                <tr>
                    <td width="35%" align="right">
                        <span>公司收款支行：</span>
                    </td>
                    <td>
                        <%=adminBranch%>
                    </td>
                </tr>
                <tr>
                    <td width="35%" align="right">
                        <span>公司收款帐号：</span>
                    </td>
                    <td>
                        <%=adminBankNumber%>
                    </td>
                </tr>
                <tr>
                    <td width="35%" align="right">
                        <span>公司收款人：</span>
                    </td>
                    <td>
                        <%=adminBankCardName%>
                    </td>
                </tr>
                <tr>
                    <td width="35%" align="right">
                        <span>公司微信：</span>
                    </td>
                    <td>
                        <%=weixin%>
                    </td>
                </tr>
                <tr>
                    <td width="35%" align="right">
                        <span>公司支付宝：</span>
                    </td>
                    <td>
                        <%=alipay%>
                    </td>
                </tr>
                <tr>
                    <td width="35%" align="right">
                        <span>充值币种：</span>
                    </td>
                    <td>
                        <input id="RioMJB" type="radio" value="1" name="RioHK" runat="server" /><%=ListReward["MJB"].RewardName%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>会员账号：</span>
                    </td>
                    <td>
                        <%=TModel.MID %>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>姓名：</span>
                    </td>
                    <td>
                        <input id="txtBankName" maxlength="10" class="normal_input" runat="server" type="text" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>汇款日期：</span>
                    </td>
                    <td>
                        <input id="txtHKDate" maxlength="9" class="normal_input" runat="server" type="text"
                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm',maxDate:'%y-%M-%d'})" readonly="readonly" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>人民币充值金额：</span>
                    </td>
                    <td>
                        <input id="txtRealMoney" runat="server" class="normal_input" type="text" onblur="setValidMoney(this,$('#txtValidMoney'));" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>到账<%=ListReward["MJB"].RewardName%>：</span>
                    </td>
                    <td>
                        <input id="txtValidMoney" runat="server" class="normal_input" type="text" readonly="readonly" />
                    </td>
                </tr>
                <tr>
                    <td style="display: none;">
                        <span>汇款信息：</span>从
                        <input id="txtFromBank" runat="server" class="normal_input" style="width: 140px;"
                            type="text" />
                    </td>
                </tr>
                <tr>
                    <td style="display: none;">
                        <span>汇到:</span>
                        <select id="ddlToBank" runat="server">
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <input class="normal_btnok" id="btnOK" type="button" runat="server" value="提交" onclick="checkChange();" />
                    </td>
                </tr>
            </table>
            <span class="remak">
                <%=WebModel.HKInfo %></span>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function setValidMoney(realobj, validobj) {
            $(validobj).val($(realobj).val() / <%=zx270.BLL.Configuration.Model.B_InFloat %>);
        }
        function checkChange() {
            if ($('#txtHKDate').val().Trim() == "") {
                v5.error('汇款日期不能为空', '1', 'true');
            } else if ($('#txtBankName').val().Trim() == '') {
                v5.error('汇款人姓名不能为空', '1', 'true');
            } else {
                ActionModel("ChangeMoney/HKChange.aspx?Action=add", $('#form1').serialize());
            }
        }
    </script>
</body>
</html>
