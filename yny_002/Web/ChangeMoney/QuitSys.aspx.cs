using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zx270.Web.ChangeMoney
{
    public partial class QuitSys : BasePage
    {
        protected string money = "";
        protected override void SetPowerZone()
        {
            //累计提现金额
            money = BLL.ChangeMoney.GetTXMoney(" FromMID = '" + TModel.MID + "' and ChangeType = 'TX' ").ToString();
        }

        protected override string btnAdd_Click()
        {
            if (TModel.Role.IsAdmin)
            {
                return "管理员不能申请";
            }
            //生成记录
            if (BLL.QuitRecord.CreateQuit(TModel))
            {
                return "申请已提交";
            }
            else
            {
                return "提交申请失败";
            }
        }
    }
}