using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class PayResult : PayConfig
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string transCode = this.Request["transCode"];
        string merchantId = this.Request["merchantId"];
        string respCode = this.Request["respCode"];
        string sysTraceNum = this.Request["sysTraceNum"];
        string merOrderNum = this.Request["merOrderNum"];
        string orderId = this.Request["orderId"];
        string bussId = this.Request["bussId"];
        string tranAmt = this.Request["tranAmt"];
        string orderAmt = this.Request["orderAmt"];
        string bankFeeAmt = this.Request["bankFeeAmt"];
        string integralAmt = this.Request["integralAmt"];
        string vaAmt = this.Request["vaAmt"];
        string bankAmt = this.Request["bankAmt"];
        string bankId = this.Request["bankId"];
        string integralSeq = this.Request["integralSeq"];
        string vaSeq = this.Request["vaSeq"];
        string bankSeq = this.Request["bankSeq"];
        string tranDateTime = this.Request["tranDateTime"];
        string payMentTime = this.Request["payMentTime"];
        string settleDate = this.Request["settleDate"];
        string currencyType = this.Request["currencyType"];
        string orderInfo = this.Request["orderInfo"];
        string userId = this.Request["userId"];
        string userIp = this.Request["userIp"];
        string reserver1 = this.Request["reserver1"];
        string reserver2 = this.Request["reserver2"];
        string reserver3 = this.Request["reserver3"];
        string reserver4 = this.Request["reserver4"];
        string signValue = this.Request["signValue"];

        StringBuilder sb = new StringBuilder("");
        sb.Append("transCode:" + transCode + "<br/>");
        sb.Append("merchantId:" + merchantId + "<br/>");
        sb.Append("respCode:" + respCode + "<br/>");
        sb.Append("sysTraceNum:" + sysTraceNum + "<br/>");
        sb.Append("merOrderNum:" + merOrderNum + "<br/>");
        sb.Append("orderId:" + orderId + "<br/>");
        sb.Append("bussId:" + bussId + "<br/>");
        sb.Append("tranAmt:" + tranAmt + "<br/>");
        sb.Append("orderAmt:" + orderAmt + "<br/>");
        sb.Append("integralAmt:" + integralAmt + "<br/>");
        sb.Append("vaAmt:" + vaAmt + "<br/>");
        sb.Append("bankAmt:" + bankAmt + "<br/>");
        sb.Append("bankId:" + bankId + "<br/>");
        sb.Append("sysTraceNum:" + sysTraceNum + "<br/>");
        sb.Append("integralSeq:" + integralSeq + "<br/>");
        sb.Append("vaSeq:" + vaSeq + "<br/>");
        sb.Append("bankSeq:" + bankSeq + "<br/>");
        sb.Append("tranDateTime:" + tranDateTime + "<br/>");
        sb.Append("payMentTime:" + payMentTime + "<br/>");
        sb.Append("settleDate:" + settleDate + "<br/>");
        sb.Append("currencyType:" + currencyType + "<br/>");
        sb.Append("orderInfo:" + orderInfo + "<br/>");
        sb.Append("userId:" + userId + "<br/>");
        sb.Append("userIp:" + userIp + "<br/>");
        sb.Append("reserver1:" + reserver1 + "<br/>");
        sb.Append("reserver2:" + reserver2 + "<br/>");
        sb.Append("reserver3:" + reserver3 + "<br/>");
        sb.Append("reserver4:" + reserver4 + "<br/>");
        sb.Append("signValue:" + signValue + "<br/>");

        string txnString = transCode + "|" + merchantId + "|" + respCode + "|" + sysTraceNum + "|" + merOrderNum + "|"
             + orderId + "|" + bussId + "|" + tranAmt + "|" + orderAmt + "|" + bankFeeAmt + "|" + integralAmt + "|"
             + vaAmt + "|" + bankAmt + "|" + bankId + "|" + integralSeq + "|" + vaSeq + "|"
             + bankSeq + "|" + tranDateTime + "|" + payMentTime + "|" + settleDate + "|" + currencyType + "|" + orderInfo + "|" + userId;

        String md5 = PayUtils.md5(txnString + datakey);

        string verifySign = (md5 == signValue) ? "成功" : "失败";

        sb.Append("<br>");
        sb.Append("success");
        sb.Append("<br>");
        sb.Append("支付结果：" + respCode);
        sb.Append("<br>");
        sb.Append("签名验证结果：" + verifySign);
        sb.Append("<br>");

        this.Response.Write(sb.ToString());
    }
}