using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace zx270.Web.Payment.HuiChao
{
    public partial class PayResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String MD5key = "mAofJ^gJ";									//MD5加密码(测试用)
            String BillNo = System.Web.HttpContext.Current.Request.Params["BillNo"].ToString();		//订单号
            String Amount = Convert.ToDecimal(System.Web.HttpContext.Current.Request.Params["Amount"]).ToString("F2");	//交易金额
            String Succeed = System.Web.HttpContext.Current.Request.Params["Succeed"].ToString();	//支付状态:该值说明见于word说明文档[商户根据该值来修改数据库中相应订单的状态]
            String Result = System.Web.HttpContext.Current.Request.Params["Result"].ToString();		//支付结果 (是支付状态的文字说明)
            String SignMD5info = System.Web.HttpContext.Current.Request.Params["SignMD5info"].ToString();	//验证返回码(调试时使用)

            String md5src = BillNo + "&" + Amount + "&" + Succeed + "&" + MD5key;				//对数据进行加密验证
            String md5sign;
            md5sign = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(md5src, "MD5");

            if (SignMD5info == md5sign)
            {
                if (Succeed == "88")
                {
                    //结果Result
                    //支付成功 
                    if (!BLL.HKModel.tempList.Contains(BillNo))
                    {
                        BLL.HKModel.tempList.Add(BillNo);
                        try
                        {
                            if (BLL.Member.ManageMember.SHPayHBIPS(BillNo))//处理交易结果
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
                            if (BLL.HKModel.tempList.Contains(BillNo))
                                BLL.HKModel.tempList.Remove(BillNo);
                        }
                    }
                }
                else
                {
                    Response.Write("支付失败！");
                    Response.End();
                }
            }
            else
            {
                Response.Write("验证失败！");
                Response.End();
            }
        }
    }
}