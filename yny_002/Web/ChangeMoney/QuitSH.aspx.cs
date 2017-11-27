using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zx270.Web.ChangeMoney
{
    public partial class QuitSH : BasePage
    {
        protected Model.QuitRecord quitModel = null;

        protected override void SetPowerZone()
        {
            if (quitModel == null)
            {
                quitModel = new Model.QuitRecord();
            }
        }

        protected override void SetValue(string id)
        {
            if (!TModel.Role.IsAdmin)
            {
                quitModel = new Model.QuitRecord();
                quitModel.MID = "您权限不足";
            }
            else
            {
                quitModel = new BLL.QuitRecord().GetModel(id);
                if (quitModel == null)
                {
                    quitModel = new Model.QuitRecord();
                }
            }
        }
    }
}