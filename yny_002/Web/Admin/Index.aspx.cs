﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yny_002.Web.Admin
{
    public partial class Index : BasePage
    {
        private List<Model.RolePowers> listPowers;
        protected decimal jtfhMoney = 0;
        protected decimal tjMoney = 0;
        protected decimal jdMoney = 0;
        protected Model.Member mTJ = null;
        protected string showNotie = "";
        protected Model.Notice notice = null;
        protected string roleName = "";
        protected string tuiguang = "";
        protected decimal yjMoney = 0;
        protected string notcie = "";
        protected decimal fhtotal =0;
        protected DataTable dtjjlist = null;//
        protected override void SetPowerZone()
        {
            dtjjlist = BLL.CommonBase.GetTable("select tomid,sum(case when changetype='R_LD' then money else 0 end) as 'R_LD',sum(case when changetype='R_TJ' then money else 0 end) as 'R_TJ',sum(case when changetype='R_RFH' then money else 0 end) as 'R_RFH',sum(money) as 'HeJi',CONVERT(varchar(7), changedate, 23) as 'Date' from changemoney a WHERE  changetype in ('R_TJ','R_LD','R_RFH') and a.ToMID='"+TModel.MID+"'  group by CONVERT(varchar(7), changedate, 23),tomid order by CONVERT(varchar(7), changedate, 23) DESC;");

            List<Model.Notice> listnotice = BLL.Notice.GetNoticeList(" IsFixed = 1 ");
            if (listnotice.Count >0)
            {
                notice = listnotice[0];
            }

            fhtotal = Convert.ToDecimal(BLL.CommonBase.GetSingle("select ISNULL(SUM(Money),0) from ChangeMoney where ToMID='" + TModel.MID + "' and ChangeType in('R_RFH') and CState=1;"));

            listPowers = TModel.Role.PowersList.Where(emp => emp.Content.VState).ToList();
            //txtTuiGuang.Value = HttpContext.Current.Request.Url.AbsoluteUri.Replace(HttpContext.Current.Request.Url.PathAndQuery, "/Regedit/Index.aspx");
            //txtTuiGuang.Value += "?mid=" + TModel.MID;
            //tuiguang = txtTuiGuang.Value;

            roleName = TModel.Role.RName;

            if (TModel.Role.IsAdmin)
            {
                yjMoney = BLL.Member.GetSum("YJMoney", string.Format(" MTJ = '{0}' and MID <> '{0}' ", TModel.MID));
            }
            else
            {
                yjMoney = TModel.MConfig.YJMoney;
            }

            Model.Notice obj = BLL.Notice.GetNewNotice(9999);
            if (obj != null)
                notcie = obj.NContent;

            //repNoticeList.DataSource = BLL.Notice.GetNoticeList(" IsFixed = 0 ");
            //repNoticeList.DataBind();
            //mTJ = BllModel.GetModel(TModel.MTJ);
            //if (mTJ == null || mTJ.MID == TModel.MID)
            //{
            //    mTJ = new Model.Member();
            //}
        }

        protected List<Model.RolePowers> GetPowers(string cfid)
        {
            return listPowers.Where(emp => emp.Content.CFID == cfid).ToList();
        }

        protected List<Model.RolePowers> GetQuickMenu()
        {
            List<Model.RolePowers> list = listPowers.Where(emp => emp.Content.IsQuickMenu).ToList();
            return list;
        }
    }
}