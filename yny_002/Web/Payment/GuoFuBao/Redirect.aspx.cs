using System;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using zx326.Model;

namespace zx326.Web.Payment.GuoFuBao
{
    public partial class Redirect : BasePage
    {
        private HKModel HKModel
        {
            get
            {
                int type = 1;

                HKModel model = new HKModel();
                model.HKCreateDate = DateTime.Now;
                model.BankName = "";
                //model.FromBank = Request.Form["yh"];
                model.MID = TModel.MID;
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

        protected new void Page_Load(object sender, EventArgs e)
        {
            HKModel hkModel = HKModel;
            BLL.HKModel.Insert(hkModel);

            //测试地址
            string form_url = GuoFuBao.url;
            string merchantID = GuoFuBao.merchantID;
            string virCardNoIn = GuoFuBao.virCardNoIn;
            string VerficationCode = GuoFuBao.VerficationCode;

            //商户订单编号
            string Billno = hkModel.HKCode;

            //支付结果成功返回的商户URL
            string url = "http://" + HttpContext.Current.Request.Url.Authority.ToString();
            string Merchanturl = url + "/Payment/GuoFuBao/OrderReturn.aspx";

            string asyurl = url + "/Payment/GuoFuBao/OrderReturnAsy.aspx";

            //订单金额(保留2位小数)
            string Amount = hkModel.RealMoney.ToString("F2");

            //订单日期
            string BillDate = hkModel.HKCreateDate.ToString("yyyyMMddHHmmss");

            string gopayServerTime = GuoFuBao.Get_Http("https://gateway.gopay.com.cn/time.do", 10000);

            // 组织加密明文
            string plain = "version=[2.2]tranCode=[8888]merchantID=[" + merchantID + "]merOrderNum=[" + Billno + "]tranAmt=[" + Amount + "]feeAmt=[]tranDateTime=[" + BillDate + "]frontMerUrl=[" + Merchanturl + "]backgroundMerUrl=[" + asyurl + "]orderId=[]gopayOutOrderId=[]tranIP=[" + GetUserIp() + "]respCode=[]gopayServerTime=[" + gopayServerTime + "]VerficationCode=[" + VerficationCode + "]";

            string postForm = "<form name=\"frm1\" id=\"frm1\" method=\"post\" action=\"" + form_url + "\">";
            postForm += "<input type=\"hidden\" name=\"merchantID\" value=\"" + merchantID + "\" />";//商户ID
            postForm += "<input type=\"hidden\" name=\"virCardNoIn\" value=\"" + virCardNoIn + "\" />";//国付宝转入账户
            postForm += "<input type=\"hidden\" name=\"merOrderNum\" value=\"" + Billno + "\" />";//订单号
            postForm += "<input type=\"hidden\" name=\"tranAmt\" value=\"" + Amount + "\" />";//交易金额
            postForm += "<input type=\"hidden\" name=\"tranDateTime\" value=\"" + BillDate + "\" />";//交易时间
            postForm += "<input type=\"hidden\" name=\"frontMerUrl\" value=\"" + Merchanturl + "\" />";//商户返回页面地址
            postForm += "<input type=\"hidden\" name=\"backgroundMerUrl\" value=\"" + asyurl + "\" />";//商户后台通知地址
            postForm += "<input type=\"hidden\" name=\"signValue\" value=\"" + GuoFuBao.md5(plain) + "\" />";//MD5加密报文

            postForm += "<input type=\"hidden\" name=\"tranIP\" value=\"" + GetUserIp() + "\" />";//用户浏览器IP
            postForm += "<input type=\"hidden\" name=\"gopayServerTime\" value=\"" + gopayServerTime + "\" />";//国付宝服务器时间
            postForm += "<input type=\"hidden\" name=\"version\" value=\"2.2\" />";//版本号
            postForm += "<input type=\"hidden\" name=\"charset\" value=\"1\" />";//字符集1:GBK,2:UTF-8(可空)
            postForm += "<input type=\"hidden\" name=\"language\" value=\"1\" />";// 语言种类 1:ZH,2:EN
            postForm += "<input type=\"hidden\" name=\"signType\" value=\"1\" />";//加密方式1:MD5,2:SHA(可空)
            postForm += "<input type=\"hidden\" name=\"tranCode\" value=\"8888\" />";//交易代码
            postForm += "<input type=\"hidden\" name=\"currencyType\" value=\"156\" />";//币种

            postForm += "</form>";

            //自动提交该表单到测试网关
            postForm += "<script type=\"text/javascript\" language=\"javascript\">setTimeout(\"document.getElementById('frm1').submit();\",100);</script>";

            Response.Write(postForm);
        }
    }
}