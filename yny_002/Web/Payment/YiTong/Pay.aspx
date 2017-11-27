<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pay.aspx.cs" Inherits="Pay" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>支付请求处理demo</title>
</head>
<body>
    <form name="payForm" id="payForm" action="<%=payUrl %>" method="post">
    <input type='hidden' name='version' value='<%=version%>' /><br />
    <input type='hidden' name='transCode' value='<%=transCode%>' /><br />
    <input type='hidden' name='merchantId' value='<%=merchantId%>' /><br />
    <input type='hidden' name='merOrderNum' value='<%=merOrderNum%>' /><br />
    <input type='hidden' name='bussId' value='<%=bussId%>' /><br />
    <input type='hidden' name='tranAmt' value='<%=tranAmt%>' /><br />
    <input type='hidden' name='sysTraceNum' id="sysTraceNum" value='<%=sysTraceNum%>' /><br />
    <input type='hidden' name='tranDateTime' id="tranDateTime" value='<%=tranDateTime%>' /><br />
    <input type='hidden' name='currencyType' value='<%=currencyType%>' /><br />
    <input type='hidden' name='merURL' value='<%=merUrl%>' /><br />
    <input type='hidden' name='orderInfo' value='<%=orderInfo%>' /><br />
    <input type='hidden' name='bankId' value='' /><br />
    <input type='hidden' name='stlmId' value='' /><br />
    <input type='hidden' name='userId' value="" /><br />
    <input type='hidden' name='userIp' value="" /><br />
    <input type='hidden' name='backURL' value='<%=backUrl%>' /><br />
    <input type='hidden' name='reserver1' value="" /><br />
    <input type='hidden' name='reserver2' value="" /><br />
    <input type='hidden' name='reserver3' value="" /><br />
    <input type='hidden' name='reserver4' value="" /><br />
    <input type='hidden' name='signValue' value='<%=signValue%>' />
    </form>
</body>
<script type="text/javascript">
    document.payForm.submit();
</script>
</html>
