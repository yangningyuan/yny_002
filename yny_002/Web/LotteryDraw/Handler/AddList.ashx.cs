using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using Newtonsoft.Json;

namespace zx270.Web.LotteryDraw.Handler
{
    /// <summary>
    /// AddList 的摘要说明
    /// </summary>
    public class AddList : BaseHandler
    {
        public override void ProcessRequest(HttpContext context)
        {
            base.ProcessRequest(context);
            string strWhere = " 1=1 ";
            if (!string.IsNullOrEmpty(context.Request["mKey"]))
            {
                strWhere += " and (PointMID='" + context.Request["mKey"] + "' or  GetMID = '" + context.Request["mKey"] + "') ";
            }
            if (!string.IsNullOrEmpty(context.Request["startDate"]))
            {
                strWhere += " and CreateTime>'" + context.Request["startDate"] + " 00:00:00' ";
            }
            if (!string.IsNullOrEmpty(context.Request["endDate"]))
            {
                strWhere += " and CreateTime<'" + context.Request["endDate"] + " 23:59:59' ";
            }
            if (!string.IsNullOrEmpty(context.Request["tState"]))
            {
                strWhere += " and State='" + context.Request["tState"] + "' ";
            }

            int count;
            List<Model.LotteryDraw> LotteryDraw = BLL.LotteryDraw.GetList(strWhere, pageIndex, pageSize, out count);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < LotteryDraw.Count; i++)
            {
                sb.Append(LotteryDraw[i].ID + "~");
                sb.Append((i + 1) + (pageIndex - 1) * pageSize + "~");
                sb.Append(LotteryDraw[i].Code + "~");
                sb.Append(LotteryDraw[i].CreateTime + "~");
                sb.Append(LotteryDraw[i].LMoney + "~");
                sb.Append(LotteryDraw[i].PointMID + "~");
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