using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yny_002.Web.ChangeMoney
{
    public partial class HKList : BasePage
    {
        protected override void SetPowerZone()
        {
            if (!TModel.Role.IsAdmin)
            {
                DivSearch.InnerHtml = "";
                DivOperation.InnerHtml = "";
            }
        }


        protected override string btnAdd_Click()
        {
            string strWhere = " 1=1 ";
            string mkey = "";
            if (!string.IsNullOrEmpty(Request.Form["hkstate"]))
            {
                strWhere += " and HKState='" + Request.Form["hkstate"] + "' ";
            }
            if (!string.IsNullOrEmpty(Request.Form["txtKey"]))
            {
                mkey = Request.Form["txtKey"];
            }
            if (!string.IsNullOrEmpty(Request.Form["txtKey2"]))
            {
                strWhere += " and HKDate>'" + Request.Form["txtKey2"] + " 00:00:00' ";
            }
            if (!string.IsNullOrEmpty(Request.Form["txtKey3"]))
            {
                strWhere += " and HKDate<'" + Request.Form["txtKey3"] + " 23:59:59' ";
            }
            if (!string.IsNullOrEmpty(mkey))
            {
                strWhere += " and MID='" + mkey + "' ";
            }

            List<Model.HKModel> listmodel= BLL.HKModel.GetList(strWhere);
            return listmodel.Sum(m=>m.ValidMoney).ToString();
        }
    }
}