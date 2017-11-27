using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace zx270.Web.ChangeMoney
{
    public partial class GYJJ : BasePage
    {
        protected override string btnAdd_Click()
        {
            if (!string.IsNullOrEmpty(Request.Form["txtMHB"]))
            {
                int money = int.Parse(Request.Form["txtMHB"]);
                if (money > 0)
                {
                    if (BLL.ChangeMoney.EnoughChange(TModel.MID, money, "MHB"))
                    {
                        Hashtable MyHs = new Hashtable();
                        BLL.ChangeMoney.HBChangeTran(money, TModel.MID, BLL.Member.ManageMember.TModel.MID, "JK", null, "MHB", "公益基金捐款", MyHs);
                        BLL.Member.UpdateConfigTran(BLL.Member.ManageMember.TModel.MID, "MCW", money.ToString(), null, false, System.Data.SqlDbType.Decimal, MyHs);
                        if (BLL.CommonBase.RunHashtable(MyHs))
                            return "捐款成功";
                        return "捐款失败";
                    }
                    else
                    {
                        return "您的" + BLL.Reward.List["MHB"].RewardName + "不足";
                    }
                }
                else
                {
                    return "捐款金额必须大于0";
                }
            }
            else
            {
                return "参数异常";
            }
        }
    }
}