using System;
using System.Data;
using System.Collections.Generic;
using yny_002.Model;
namespace yny_002.BLL
{
	/// <summary>
	/// C_Code
	/// </summary>
	public partial class C_Code
	{
		
		public C_Code()
		{ }
		#region  BasicMethod
		/// <summary>
		/// 增加一条数据
		/// </summary>
		public static int Add(yny_002.Model.C_Code model)
		{
			return DAL.C_Code.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public static bool Update(yny_002.Model.C_Code model)
		{
			return DAL.C_Code.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public static bool Delete(int C_ID)
		{

			return DAL.C_Code.Delete(C_ID);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public static bool DeleteList(string C_IDlist)
		{
			return DAL.C_Code.DeleteList(C_IDlist);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public static yny_002.Model.C_Code GetModel(int C_ID)
		{

			return DAL.C_Code.GetModel(C_ID);
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static DataSet GetList(string strWhere)
		{
			return DAL.C_Code.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public static DataSet GetList(int Top, string strWhere, string filedOrder)
		{
			return DAL.C_Code.GetList(Top, strWhere, filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static List<yny_002.Model.C_Code> GetModelList(string strWhere)
		{
			DataSet ds = DAL.C_Code.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 得到分页会员信息实体列表
		/// </summary>
		/// <param name="strWhere">查询条件</param>
		/// <param name="pageIndex">页码</param>
		/// <param name="pageSize">页大小</param>
		/// <param name="count">out类型总计</param>
		/// <returns>返回会员List集合</returns>
		public static List<Model.C_Code> GetLuckyMoneyEntityList(string strWhere, int pageIndex, int pageSize, out int count)
		{
			List<Model.C_Code> LuckyMoneyList = new List<Model.C_Code>();

			DataTable table = DAL.C_Code.GetTable(strWhere, pageIndex, pageSize, out count);
			for (int i = 0; i < table.Rows.Count; i++)
			{
				LuckyMoneyList.Add(DAL.C_Code.DataRowToModel(table.Rows[i]));
			}

			return LuckyMoneyList;
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static List<yny_002.Model.C_Code> DataTableToList(DataTable dt)
		{
			List<yny_002.Model.C_Code> modelList = new List<yny_002.Model.C_Code>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				yny_002.Model.C_Code model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = DAL.C_Code.DataRowToModel(dt.Rows[n]);
					if (model != null)
					{
						modelList.Add(model);
					}
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public static int GetRecordCount(string strWhere)
		{
			return DAL.C_Code.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public static DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return DAL.C_Code.GetListByPage(strWhere, orderby, startIndex, endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
		//return DAL.C_Code.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

