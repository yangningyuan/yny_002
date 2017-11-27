using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using zx270.Model;

namespace zx270.Web.Payment.HuiChao
{
    public partial class Payment : BasePage
    {
        private HKModel HKModel
        {
            get
            {
                int type = 1;//现金币
                HKModel model = new HKModel();
                model.HKCreateDate = DateTime.Now;
                //银行名称
                model.BankName = "";
                //会员
                model.FromBank = Request.Form["yh"];
                //汇款会员
                model.MID = Request.Form["txtMID"];
                //实际付款
                model.RealMoney = int.Parse(Request.Form["txtValidMoney"]);
                //有效金额
                model.ValidMoney = int.Parse(Request.Form["txtValidMoney"]);
                //汇款时间
                model.HKDate = DateTime.Now;
                model.HKState = false;
                //汇款类型
                model.HKType = type;
                model.ToBank = "";
                model.IsAuto = true;
                return model;
            }
        }

        protected new void Page_Load(object sender, EventArgs e)
        {
            HKModel hkModel = HKModel;
            BLL.HKModel.Insert(hkModel);
            //提交地址
            string form_url = "http://pay.gecan.top/payment.aspx";
            //md5key
            string MD5key = "mAofJ^gJ";
            //商户号
            string MerNo = "30765";
            //[]商户网店订单号
            string BillNo = hkModel.HKCode;//订单编号
            //交易金额
            string Amount = hkModel.RealMoney.ToString("F2");
            //[ѡ]
            string OrderDesc = "";
            //[]返回地址
            string url = "http://" + HttpContext.Current.Request.Url.Authority.ToString();
            string Merchanturl = url + "/Payment/HuiChao/PayResult.aspx";
            //string ReturnURL = "http://localhost/PayResult.aspx";
            string ReturnURL = Merchanturl;
            // '[必填]支付完成后，后台接收支付结果，可用来更新数据库值
            string AdviceURL = Merchanturl;
            //加密
            string md5src = MerNo + "&" + BillNo + "&" + Amount + "&" + ReturnURL + "&" + MD5key;
            //[]MD5ܺ
            string SignInfo = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(md5src, "MD5");
            //备注
            string Remark = "";
            ///'------------------物品信息
            string products = hkModel.HKCode;
            //'[选填]银行代码
            string defaultBankNumber = "";
            //'[必填]交易时间yyyyMMddHHmmss
            string orderTime = hkModel.HKCreateDate.ToString("yyyyMMddHHmmss");

            string postForm = "<form name=\"pay\" id=\"pay1\" method=\"post\" action=\"" + form_url + "\">";
            postForm += "<input type=\"hidden\" name=\"OrderDesc\" value=\"" + OrderDesc + "\" />";
            postForm += "<input type=\"hidden\" name=\"Remark\" value=\"" + Remark + "\" />";
            postForm += "<input type=\"hidden\" name=\"AdviceURL\" value=\"" + AdviceURL + "\" />";
            postForm += "<input type=\"hidden\" name=\"ReturnURL\" value=\"" + ReturnURL + "\" />";
            postForm += "<input type=\"hidden\" name=\"BillNo\" value=\"" + BillNo + "\" />";
            postForm += "<input type=\"hidden\" name=\"MerNo\" value=\"" + MerNo + "\" />";
            postForm += "<input type=\"hidden\" name=\"Amount\" value=\"" + Amount + "\" />";
            postForm += "<input type=\"hidden\" name=\"SignInfo\" value=\"" + SignInfo + "\" />";
            postForm += "<input type=\"hidden\" name=\"defaultBankNumber\" value=\"" + defaultBankNumber + "\" />";
            postForm += "<input type=\"hidden\" name=\"orderTime\" value=\"" + orderTime + "\" />";
            postForm += "<input type=\"hidden\" name=\"products\" value=\"" + products + "\" />";
            postForm += "</form>";

            //自动提交该表单到测试网关
            postForm += "<script type=\"text/javascript\" language=\"javascript\">setTimeout(\"document.getElementById('pay1').submit();\",100);</script>";

            Response.Write(postForm);

        }
    }
}