using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using zx326.Model;

namespace zx326.Web.Payment.YiTong
{
    public partial class redirect : PayConfig
    {

        private HKModel HKModel
        {
            get
            {
                int type = 1;

                HKModel model = new HKModel();
                model.HKCreateDate = DateTime.Now;
                model.BankName = "";
                model.FromBank = Request.Form["paytype"];
                model.MID = Request.Form["tmid"];
                model.RealMoney = decimal.Parse(Request.Form["txtValidMoney"]);
                model.ValidMoney = decimal.Parse(Request.Form["txtValidMoney"]);
                model.HKDate = DateTime.Now;
                model.HKState = false;
                model.HKType = type;
                model.ToBank = "";
                model.IsAuto = true;
                model.Sign = false;
                return model;
            }
        }

        protected string tranAmt = ""; //_POST['tranAmt'];
        protected string merOrderNum = "";//_POST['merOrderNum'];
        protected string orderInfo = "";//public tring _POST['orderInfo'];
        protected string tranDateTime = "";//date('YmdHis');
        protected string sysTraceNum = "";//public tring tranDateTime.floor(microtime()*1000); //请求流水号，需要保持唯一
        protected string userId = "";//; //易通支付会员ID代码，可为空
        protected string signValue = "";
        protected string postForm = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string bussId = "";
            if (!IsPostBack)
            {
                HKModel hkModel = HKModel;
                BLL.HKModel.Insert(hkModel);

                tranAmt = (hkModel.RealMoney*100).ToString().Trim();//交易金额
                merOrderNum =hkModel.HKCode.Trim();//订单号
                orderInfo = "";
                tranDateTime = hkModel.HKCreateDate.ToString("yyyyMMddHHmmss");//date('YmdHis');
                sysTraceNum = hkModel.HKCreateDate.ToFileTime().ToString().Substring(0,15);//tranDateTime.floor(microtime()*1000); //请求流水号，需要保持唯一


                if (hkModel.FromBank == "yh")
                    bussId = "888219";
                else if (hkModel.FromBank == "sm")
                    bussId = "888220";
                else
                    bussId = "888317";

                userId = ""; //易通支付会员ID代码，可为空
                if (orderInfo != "")
                    orderInfo = PayUtils.StringToHexString(orderInfo);
                string txnString = version + "|" + transCode + "|" + merchantId + "|" + merOrderNum + "|" + bussId + "|" + tranAmt + "|" + sysTraceNum
                     + "|" + tranDateTime + "|" + currencyType + "|" + merUrl + "|" + backUrl + "|" + orderInfo + "|" + userId;
                signValue = PayUtils.md5(txnString + datakey);


                postForm = "<form name=\"payForm\" id=\"payForm\" method=\"post\" action=\"" + payUrl + "\">";
                postForm += "<input type=\"hidden\" name=\"version\" value=\"" + version + "\" />";
                postForm += "<input type=\"hidden\" name=\"transCode\" value=\"" + transCode + "\" />";
                postForm += "<input type=\"hidden\" name=\"merchantId\" value=\"" + merchantId + "\" />";
                postForm += "<input type=\"hidden\" name=\"merOrderNum\" value=\"" + merOrderNum + "\" />";
                postForm += "<input type=\"hidden\" name=\"bussId\" value=\"" + bussId + "\" />";
                postForm += "<input type=\"hidden\" name=\"tranAmt\" value=\"" + tranAmt + "\" />";
                postForm += "<input type=\"hidden\" name=\"sysTraceNum\" id=\"sysTraceNum\" value=\"" + sysTraceNum + "\" />";
                postForm += "<input type=\"hidden\" name=\"tranDateTime\" id=\"tranDateTime\" value=\"" + tranDateTime + "\" />";
                postForm += "<input type=\"hidden\" name=\"currencyType\" value=\"" + currencyType + "\" />";
                postForm += "<input type=\"hidden\" name=\"merURL\" value=\"" + merUrl + "\" />";
                postForm += "<input type=\"hidden\" name=\"orderInfo\" value=\"" + orderInfo + "\" />";
                postForm += "<input type=\"hidden\" name=\"bankId\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"stlmId\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"userId\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"userIp\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"backURL\" value=\"" + backUrl + "\" />";
                postForm += "<input type=\"hidden\" name=\"reserver1\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"reserver2\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"reserver3\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"reserver4\" value=\"" + "" + "\" />";
                postForm += "<input type=\"hidden\" name=\"entryType\" value=\"" + "1" + "\" />";
                postForm += "<input type=\"hidden\" name=\"signValue\" value=\"" + signValue + "\" />";
                postForm += "</form>";

                //自动提交该表单到测试网关
                postForm += "<script type=\"text/javascript\" language=\"javascript\">setTimeout(\"document.getElementById('payForm').submit();\",100);</script>";

                Response.Write(postForm);
            }
        }
    }
}