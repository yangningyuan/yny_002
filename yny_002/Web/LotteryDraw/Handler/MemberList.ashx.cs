using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using Newtonsoft.Json;

namespace zx270.Web.LotteryDraw.Handler
{
    /// <summary>
    /// MemberList 的摘要说明
    /// </summary>
    public class MemberList : BaseHandler
    {
        public override void ProcessRequest(HttpContext context)
        {
            base.ProcessRequest(context);
            string strWhere = " 1=1 ";
            if (!string.IsNullOrEmpty(context.Request["startDate"]))
            {
                strWhere += " and GetTime>'" + context.Request["startDate"] + " 00:00:00' ";
            }
            if (!string.IsNullOrEmpty(context.Request["endDate"]))
            {
                strWhere += " and GetTime<'" + context.Request["endDate"] + " 23:59:59' ";
            }
            if (TModel.Role.IsAdmin)
            {
                if (!string.IsNullOrEmpty(context.Request["mKey"]))
                {
                    strWhere += " and GetMID='" + context.Request["mKey"] + "' ";
                }
            }
            else
            {
                strWhere += " and GetMID='" + TModel.MID + "' ";
            }
            strWhere += " and State = 1 ";
            int count;
            List<Model.LotteryDraw> LotteryDraw = BLL.LotteryDraw.GetList(strWhere, pageIndex, pageSize, out count);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < LotteryDraw.Count; i++)
            {
                sb.Append(LotteryDraw[i].ID + "~");
                sb.Append((i + 1) + (pageIndex - 1) * pageSize + "~");
                sb.Append(LotteryDraw[i].Code + "~");
                sb.Append(LotteryDraw[i].LMoney + "~");
                sb.Append((LotteryDraw[i].State ? "已领取" : "未领取") + "~");
                sb.Append(LotteryDraw[i].GetMID + "~");
                sb.Append(LotteryDraw[i].GetTime + "~");
                if (LotteryDraw[i].CostMoney != null)
                {
                    sb.Append(LotteryDraw[i].CostMoney.Value);
                }

                sb.Append("≌");
            }
            var info = new { PageData = sb.ToString(), TotalCount = count };
            context.Response.Write(JavaScriptConvert.SerializeObject(info));
        }
    }
}