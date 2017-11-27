using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonModel;
using CommonBLL;

namespace zx270.Web.Payment
{
    public partial class Index : BasePage
    {
        protected override void SetPowerZone()
        {
            BindRep();
        }
        protected void BindRep()
        {
            rep_List.DataSource = BLL.BankModel.GetList("MID='" + BLL.Member.ManageMember.TModel.MID + "' and Bank  in (select id from Sys_BankInfo where IsDeleted=0)");
            rep_List.DataBind();
        }
        protected static Sys_BankInfo GetBankByCode(object code)
        {
             Sys_BankInfo obj = new Sys_BankInfoBLL().GetModel(code);
            return obj;
        }
    }
}