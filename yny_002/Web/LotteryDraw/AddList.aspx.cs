using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zx270.Web.LotteryDraw
{
    public partial class AddList : BasePage
    {
        protected override string btnAdd_Click()
        {
            if (TModel.Role.IsAdmin)
            {
                int count = 0;
                decimal money = 0;
                string mid = "";
                try
                {
                    count = int.Parse(Request.Form["txtDrawNum"]);
                    if (!string.IsNullOrWhiteSpace(Request.Form["txtDrawMoney"]))
                    {
                        money = decimal.Parse(Request.Form["txtDrawMoney"]);
                    }
                    mid = Request.Form["txtDrawMember"];
                }
                catch
                {
                    return "参数格式不正确";
                }
                return BLL.LotteryDraw.CreateDraw(count, money, mid);
            }
            else
            {
                return "权限不足";
            }
        }

        protected override string btnModify_Click()
        {

            return base.btnModify_Click();
        }

        protected override string btnOther_Click()
        {

            return base.btnOther_Click();
        }
    }
}