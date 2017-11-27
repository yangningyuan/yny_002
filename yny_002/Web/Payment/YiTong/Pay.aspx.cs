using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pay : PayConfig
{
    protected string tranAmt= ""; //_POST['tranAmt'];
	protected string merOrderNum = "";//_POST['merOrderNum'];
	protected string orderInfo = "";//public tring _POST['orderInfo'];
	protected string tranDateTime = "";//date('YmdHis');
	protected string sysTraceNum = "";//public tring tranDateTime.floor(microtime()*1000); //请求流水号，需要保持唯一
	protected string userId ="";//; //易通支付会员ID代码，可为空
    protected string signValue = "";
    //if(!empty(public tring orderInfo)){
    //    public string orderInfo = strToHex(public tring orderInfo);
    //}
    //public tring txnString = public tring version."|".public tring transCode."|".public tring merchantId."|".public tring merOrderNum."|".public tring bussId."|".public tring tranAmt."|".public tring sysTraceNum
    //    ."|".public tring tranDateTime."|".public tring currencyType."|".public tring merUrl."|".public tring backUrl."|".public tring orderInfo."|".public tring userId;
    //public tring signValue = md5(public tring txnString.public tring datakey);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tranAmt = this.Request.Form["tranAmt"].ToString().Trim();
            merOrderNum = this.Request.Form["merOrderNum"].ToString().Trim();
            orderInfo = this.Request.Form["orderInfo"].ToString().Trim();
            tranDateTime = DateTime.Now.ToString("yyyyMMddHHmmss");//date('YmdHis');
            sysTraceNum = DateTime.Now.ToFileTime().ToString();//tranDateTime.floor(microtime()*1000); //请求流水号，需要保持唯一



            userId = ""; //易通支付会员ID代码，可为空
            if (orderInfo != "")
                orderInfo = PayUtils.StringToHexString(orderInfo);
            string txnString = version + "|" + transCode + "|" + merchantId + "|" + merOrderNum + "|" + bussId + "|" + tranAmt + "|" + sysTraceNum
                 + "|" + tranDateTime + "|" + currencyType + "|" + merUrl + "|" + backUrl + "|" + orderInfo + "|" + userId;
            signValue = PayUtils.md5(txnString + datakey);
        }
    }
}