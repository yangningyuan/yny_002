using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Transactions;

namespace zx270.Web.PrizePool
{
    public partial class DTFHAccounts : BasePage
    {
        protected override void SetValue()
        {
            //txtPCodeStr.Value = "红利股权结算";
            //string[] Fhinfo = BLL.Accounts.GetFHInfo("007", "").Split(',');
            //txtFHCount.Value = Fhinfo[0];
            //Model.Accounts amodel = BLL.Accounts.GetTopModel("007", "");
            //if (amodel != null)
            //{
            //    lbAccountsDate.Value = amodel.AccountsDate.ToString("yyyy-MM-dd HH:mm:ss");
            //    lbFHCount.Value = amodel.FHCount.ToString();
            //    lbIsAuto.Value = amodel.IsAuto ? "自动" : "手动";
            //    lbTotalFHMoney.Value = amodel.TotalFHMoney.ToString();
            //}
        }

        //private Model.Accounts TModel
        //{
        //    get
        //    {
        //        Model.Accounts model = new Model.Accounts();
        //        model.CreateDate = DateTime.Now;
        //        model.IsAuto = false;
        //        model.PCode = "007";
        //        model.ARemark = Request.Form["txtFHMoney"];
        //        return model;
        //    }
        //}

        protected override string btnAdd_Click()
        {
            //if (BLL.ChangeMoney.checkReCast() && BLL.ChangeMoney.checkNotReCast())
            //if (BLL.Configuration.Model.AutoDFH)
            //{
            //    return "您已开启自动分红";
            //}
            //if (BLL.ChangeMoney.R_ZFH())
            //{
            //    return "操作成功";
            //}
            return "操作失败";
        }

        protected override string btnModify_Click()
        {
            //if (BLL.Configuration.Model.AutoDFH)
            //{
            //    return "您已开启自动分红";
            //}
            //if (BLL.ChangeMoney.R_JFH())
            //    return "操作成功";
            return "操作失败";
        }

        protected override string btnOther_Click()
        {
            if (BLL.ChangeMoney.R_JDReward())
            {
                return "操作成功";
            }
            return "操作失败";
        }
    }
}