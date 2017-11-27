using DBUtility;
using System;
using System.Web;

namespace zx326.Web.Payment.GuoFuBao
{
    public partial class OrderReturn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string merOrderNum = Request.QueryString["merOrderNum"];
            Model.HKModel model = BLL.HKModel.GetModel(merOrderNum);
            LogHelper.Log("国付宝同步", string.Format("merOrderNum={0}", merOrderNum), "gfb");
            if (model != null && model.HKState)
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
    }
}