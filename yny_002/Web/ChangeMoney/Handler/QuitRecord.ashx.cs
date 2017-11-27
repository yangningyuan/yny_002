using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using Newtonsoft.Json;

namespace zx270.Web.ChangeMoney.Handler
{
    /// <summary>
    /// QuitRecord 的摘要说明
    /// </summary>
    public class QuitRecord : BaseHandler
    {
        public override void ProcessRequest(HttpContext context)
        {
            base.ProcessRequest(context);
            string mkey = "";
            string strWhere = " '1'='1' ";
            if (!string.IsNullOrEmpty(context.Request["mKey"]))
            {
                mkey = context.Request["mKey"];
            }
            if (!string.IsNullOrEmpty(context.Request["startDate"]))
            {
                strWhere += " and CreateTime>'" + context.Request["startDate"] + " 00:00:00' ";
            }
            if (!string.IsNullOrEmpty(context.Request["endDate"]))
            {
                strWhere += " and CreateTime<'" + context.Request["endDate"] + " 23:59:59' ";
            }
            Model.Member memberModel = (TModel == null ? BllModel.TModel : TModel);
            if (!memberModel.Role.Super)
                mkey = memberModel.MID;
            if (!string.IsNullOrWhiteSpace(mkey))
            {
                strWhere += " and MID = '" + mkey + "' ";
            }

            int count;
            List<Model.QuitRecord> quitList = BLL.QuitRecord.GetList(strWhere, pageIndex, pageSize, out count);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < quitList.Count; i++)
            {
                sb.Append(quitList[i].ID + "~");
                sb.Append((i + 1) + (pageIndex - 1) * pageSize + "~");
                sb.Append(quitList[i].MID + "~");
                sb.Append(quitList[i].CreateTime + "~");
                sb.Append(quitList[i].EnterTime + "~");
                sb.Append(quitList[i].TXMoney + "~");
                sb.Append(quitList[i].InvestMoney + "~");
                if (quitList[i].State == 0)
                {
                    sb.Append("未审核");
                }
                else if (quitList[i].State == 1)
                {
                    sb.Append("已审核");
                }
                else
                {
                    sb.Append("已拒绝");
                }
                sb.Append("~");
                if (quitList[i].CompleteTime != null)
                {
                    sb.Append(quitList[i].CompleteTime.Value);
                }
                sb.Append("~");
                sb.Append(quitList[i].Remark + "~");
                if (quitList[i].State == 0 && TModel.Role.IsAdmin)
                {
                    sb.Append("<a href=\"javascript:shQuit(" + quitList[i].ID + ")\">审核</a>");
                }
                sb.Append("≌");
            }
            var info = new { PageData = Traditionalized(sb), TotalCount = count };
            context.Response.Write(JavaScriptConvert.SerializeObject(info));
        }
    }
}