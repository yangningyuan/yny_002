using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.IO;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace zx270.Web.Payment.cai1pay
{
    public partial class OrderReturn : System.Web.UI.Page
    {
        private void Page_Load(object sender, System.EventArgs e)
        {
            try
            {
                //接收数据
                string billno = Request.QueryString["MerOrderNo"];
                string amount = Request.QueryString["Amount"];
                string currency_type = Request["Currency"];
                string mydate = Request.QueryString["OrderDate"];
                string succ = Request.QueryString["Succ"];
                string msg = Request.QueryString["Msg"];
                string attach = Request.QueryString["GoodsInfo"];
                string ipsbillno = Request.QueryString["SysOrderNo"];
                string retEncodeType = Request.QueryString["RetencodeType"];
                string signature = Request.QueryString["Signature"];

                //签名原文
                string content = billno + amount + mydate + succ + ipsbillno + currency_type;

                //签名是否正确
                Boolean verify = false;

                //验证方式：12-md5
                if (retEncodeType == "12")
                {
                    //Md5摘要（商户证书在商户后台可下载）
                    string merchant_key = "2dVDWsHKYv7qxntM8TfACoIvtsxL1gRcS9wcn59PS0PpneUJUVKVd3xnuAuDUVtR44xNRr9duqHmz3hoxER5wVZzmiHDkVUXhXLIHhSCwHBNLlOR2gqqeN585YBIAVTz";
                    string signature1 = FormsAuthentication.HashPasswordForStoringInConfigFile(content + merchant_key, "MD5").ToLower();

                    if (signature1 == signature)
                    {
                        verify = true;
                    }
                }

                //判断签名验证是否通过
                if (verify == true)
                {
                    //判断交易是否成功
                    if (succ != "Y")
                    {
                        Response.Write("交易失败！");
                        Response.End();

                        //#############################################################
                        //以上代码仅作参考，此处可增加商户逻辑
                        //#############################################################
                    }
                    else
                    {
                        if (!BLL.HKModel.tempList.Contains(billno))
                        {
                            BLL.HKModel.tempList.Add(billno);
                            try
                            {
                                if (zx270.BLL.Member.ManageMember.SHPayHB(billno))
                                {
                                    Response.Write("交易成功！");
                                    Response.End();
                                }
                                else
                                {
                                    Response.Write("交易失败！");
                                    Response.End();
                                }
                            }
                            finally
                            {
                                if (BLL.HKModel.tempList.Contains(billno))
                                    BLL.HKModel.tempList.Remove(billno);
                            }
                        }
                        Response.Write("交易成功！");
                        Response.End();
                    }
                }
                else
                {
                    Response.Write("签名不正确！");
                }
            }
            catch (Exception ex)
            {
                BLL.Task.SendManage(BLL.Member.ManageMember.TModel, "", ex.Source);
            }
        }
    }
}