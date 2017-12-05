using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace yny_002.Web.CDZ.Handler
{
	/// <summary>
	/// CodeList 的摘要说明
	/// </summary>
	public class CodeList : BaseHandler
	{
		public override void ProcessRequest(HttpContext context)
		{
			base.ProcessRequest(context);
			string strWhere = " 1 = 1 ";

			//if (!string.IsNullOrEmpty(context.Request["tState"]))
			//{
			//	if (context.Request["tState"] == "true")
			//	{
			//		strWhere += " and isValid = 1 ";
			//	}
			//	else
			//	{
			//		strWhere += " and isValid = 0 ";
			//	}
			//}
			if (TModel.Role.Super)
			{
				if (!string.IsNullOrEmpty(context.Request["mKey"]))
				{
					strWhere += string.Format(" and C_ID={0} ", (context.Request["mKey"]));
				}
			}
			else
			{
				strWhere += string.Format(" and C_ID={0} ", TModel.MID);
			}
			//if (!string.IsNullOrEmpty(context.Request["startDate"]))
			//{
			//	strWhere += " and CreateTime>'" + context.Request["startDate"] + " 00:00:00' ";
			//}
			//if (!string.IsNullOrEmpty(context.Request["endDate"]))
			//{
			//	strWhere += " and CreateTime<'" + context.Request["endDate"] + " 23:59:59' ";
			//}

			int count;
			List<Model.C_Code> ListMember = BLL.C_Code.GetLuckyMoneyEntityList(strWhere, pageIndex, pageSize, out count);

			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < ListMember.Count; i++)
			{
				sb.Append(ListMember[i].C_ID + "~");
				sb.Append((i + 1) + (pageIndex - 1) * pageSize + "~");
				sb.Append(ListMember[i].C_CodeID + "~");
				sb.Append(ListMember[i].C_CJCodeID + "~");
				sb.Append((BLL.C_GType.GetModel(ListMember[i].C_GType).G_Name) + "~");
				sb.Append((ListMember[i].Statename) + "~");
				sb.Append(ListMember[i].C_Path + "~");
				sb.Append(("<img src='"+ ListMember[i].C_Path + "' style='width:120px; height=120px;' />") + "~");
				sb.Append(ListMember[i].C_Create + "");
				sb.Append("≌");
			}
			var info = new { PageData = Traditionalized(sb), TotalCount = count };
			context.Response.Write(JavaScriptConvert.SerializeObject(info));
		}
	}
}