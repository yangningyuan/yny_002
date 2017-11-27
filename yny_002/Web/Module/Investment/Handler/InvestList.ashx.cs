﻿using Newtonsoft.Json;
using System.Collections.Generic;
using System.Text;
using System.Web;

namespace yny_002.Web.Module.Investment.Handler
{
    /// <summary>
    /// InvestList 的摘要说明
    /// </summary>
    public class InvestList : BaseHandler
    {
        public override void ProcessRequest(HttpContext context)
        {
            base.ProcessRequest(context);
            Model.Member memberModel = (TModel == null ? BllModel.TModel : TModel);
            string strWhere = " isvalid < 2 ";

            if (!string.IsNullOrEmpty(context.Request["startDate"]))
            {
                strWhere += " and CreateTime>'" + context.Request["startDate"] + " 00:00:00' ";
            }
            if (!string.IsNullOrEmpty(context.Request["endDate"]))
            {
                strWhere += " and CreateTime<'" + context.Request["endDate"] + " 23:59:59' ";
            }

            if (!TModel.Role.IsAdmin)
            {
                strWhere += " and MID = '" + TModel.MID + "' ";
            }
            else
            {
                if (!string.IsNullOrEmpty(context.Request["mKey"]))
                {
                    strWhere += string.Format(" and (MID = '{0}' or MName like '%{0}%') ", context.Request["mKey"]);
                }
            }

            int count;
            List<Model.LuckyMoney> List = BLL.LuckyMoney.GetLuckyMoneyEntityList(strWhere, pageIndex, pageSize, out count);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < List.Count; i++)
            {
                Model.Member member = BLL.Member.GetModelByMID(List[i].MID);
                sb.Append(List[i].ID + "~");
                sb.Append((i + 1) + (pageIndex - 1) * pageSize + "~");
                sb.Append(List[i].MID + "~");
                if (member != null)
                {
                    sb.Append(member.MName);
                }
                sb.Append("~");
                sb.Append(List[i].CreateTime.ToString("yyyy-MM-dd HH:mm:ss") + "~");
                sb.Append(List[i].ApplyMoney.ToFixedString() + "~");
                sb.Append(List[i].FHTimes + "~");
                sb.Append(List[i].TotalMoney.ToFixedString() + "~");
                sb.Append((List[i].Type != 0 ? "体验金" : BLL.Reward.List["MJB"].RewardName) + "~");
                switch (List[i].isValid)
                {
                    case 0:
                        sb.Append("有效~");
                        if (List[i].Type == 0)
                        {
                            sb.Append(string.Format("<a class=\"pay btn btn-success\" href=\"javascript:InvestOperate('quit',{0})\">我要退本</a>", List[i].ID));
                        }
                        break;
                    case 1:
                        sb.Append("退本审核中~");
                        break;
                    case 2:
                        sb.Append("已退本~");
                        break;
                    case 3:
                        sb.Append("已失效~");
                        break;
                    default:
                        sb.Append("异常单~");
                        break;
                }
                //sb.Append(string.Format("<a class=\"pay btn btn-success\" href=\"javascript:InvestOperate('quit',{0})\">我要退本</a>", List[i].ID));
                sb.Append("≌");
            }
            var info = new { PageData = Traditionalized(sb), TotalCount = count };
            context.Response.Write(JavaScriptConvert.SerializeObject(info));
        }
    }
}