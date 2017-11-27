using DBUtility;
using System;

namespace zx326.Web.Payment.GuoFuBao
{
    public partial class OrderReturnAsy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string signValue = Request.Form["signValue"];
            string merchantID = Request.Form["merchantID"];
            string merOrderNum = Request.Form["merOrderNum"];
            string tranAmt = Request.Form["tranAmt"];
            string feeAmt = Request.Form["feeAmt"];
            string tranDateTime = Request.Form["tranDateTime"];
            string frontMerUrl = Request.Form["frontMerUrl"];
            string backgroundMerUrl = Request.Form["backgroundMerUrl"];
            string orderId = Request.Form["orderId"];
            string gopayOutOrderId = Request.Form["gopayOutOrderId"];
            string tranIP = Request.Form["tranIP"];
            string respCode = Request.Form["respCode"];

            //组织加密明文
            string plain = "version=[2.2]tranCode=[8888]merchantID=[" + merchantID + "]merOrderNum=[" + merOrderNum + "]tranAmt=[" + tranAmt + "]feeAmt=[" + feeAmt + "]tranDateTime=[" + tranDateTime + "]frontMerUrl=[" + frontMerUrl + "]backgroundMerUrl=[" + backgroundMerUrl + "]orderId=[" + orderId + "]gopayOutOrderId=[" + gopayOutOrderId + "]tranIP=[" + tranIP + "]respCode=[" + respCode + "]gopayServerTime=[]VerficationCode=[" + GuoFuBao.VerficationCode + "]";
            LogHelper.Log("国付宝异步", string.Format("signValue={0}--merOrderNum={1}---plain=", signValue, merOrderNum, GuoFuBao.md5(plain)), "gfb");
            if (GuoFuBao.md5(plain) == signValue)
            {
                if (!BLL.HKModel.tempList.Contains(merOrderNum))
                {
                    BLL.HKModel.tempList.Add(merOrderNum);
                    try
                    {
                        if (zx326.BLL.Member.ManageMember.SHPayHB(merOrderNum))
                        {
                            LogHelper.Log("国付宝异步", string.Format("执行成功merOrderNum={0}", merOrderNum), "gfb");
                            Response.Write("RespCode=0000|JumpURL=");
                            //Response.Write("交易成功！");
                        }
                        else
                        {
                            LogHelper.Log("国付宝异步", string.Format("执行失败merOrderNum={0}", merOrderNum), "gfb");
                            Response.Write("RespCode=9999|JumpURL=");
                            //Response.Write("交易失败！");
                        }
                    }
                    finally
                    {
                        if (BLL.HKModel.tempList.Contains(merOrderNum))
                            BLL.HKModel.tempList.Remove(merOrderNum);
                    }
                }
            }
            else
            {
                Response.Write("RespCode=9999|JumpURL=");
            }
            Response.End();
            //else
            //{
            //    Response.Write("交易失败");
            //    Response.End();
            //}
        }
    }
}