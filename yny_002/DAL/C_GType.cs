using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DBUtility;//Please add references
namespace yny_002.DAL
{
	/// <summary>
	/// 数据访问类:C_GType
	/// </summary>
	public partial class C_GType
	{
		public C_GType()
		{ }
		#region  BasicMethod

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public static int Add(yny_002.Model.C_GType model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("insert into C_GType(");
			strSql.Append("G_Name,G_Penson)");
			strSql.Append(" values (");
			strSql.Append("@G_Name,@G_Penson)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@G_Name", SqlDbType.VarChar,100),
					new SqlParameter("@G_Penson", SqlDbType.VarChar,50)};
			parameters[0].Value = model.G_Name;
			parameters[1].Value = model.G_Penson;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public static bool Update(yny_002.Model.C_GType model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("update C_GType set ");
			strSql.Append("G_Name=@G_Name,");
			strSql.Append("G_Penson=@G_Penson");
			strSql.Append(" where G_ID=@G_ID");
			SqlParameter[] parameters = {
					new SqlParameter("@G_Name", SqlDbType.VarChar,100),
					new SqlParameter("@G_Penson", SqlDbType.VarChar,50),
					new SqlParameter("@G_ID", SqlDbType.Int,4)};
			parameters[0].Value = model.G_Name;
			parameters[1].Value = model.G_Penson;
			parameters[2].Value = model.G_ID;

			int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public static bool Delete(int G_ID)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from C_GType ");
			strSql.Append(" where G_ID=@G_ID");
			SqlParameter[] parameters = {
					new SqlParameter("@G_ID", SqlDbType.Int,4)
			};
			parameters[0].Value = G_ID;

			int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public static bool DeleteList(string G_IDlist)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from C_GType ");
			strSql.Append(" where G_ID in (" + G_IDlist + ")  ");
			int rows = DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public static yny_002.Model.C_GType GetModel(int G_ID)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("select  top 1 G_ID,G_Name,G_Penson from C_GType ");
			strSql.Append(" where G_ID=@G_ID");
			SqlParameter[] parameters = {
					new SqlParameter("@G_ID", SqlDbType.Int,4)
			};
			parameters[0].Value = G_ID;

			yny_002.Model.C_GType model = new yny_002.Model.C_GType();
			DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
			if (ds.Tables[0].Rows.Count > 0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}
		/// <summary>
		/// 得到分页会员信息数据
		/// </summary>
		/// <param name="strWhere">查询条件</param>
		/// <param name="pageIndex">页码</param>
		/// <param name="pageSize">页大小</param>
		/// <param name="count">out类型总计</param>
		/// <returns>返回DataTable</returns>
		public static DataTable GetTable(string strWhere, int pageIndex, int pageSize, out int count)
		{
			return CommonBase.GetTable("C_GType", "G_ID", "G_ID asc", strWhere, pageIndex, pageSize, out count);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public static yny_002.Model.C_GType DataRowToModel(DataRow row)
		{
			yny_002.Model.C_GType model = new yny_002.Model.C_GType();
			if (row != null)
			{
				if (row["G_ID"] != null && row["G_ID"].ToString() != "")
				{
					model.G_ID = int.Parse(row["G_ID"].ToString());
				}
				if (row["G_Name"] != null)
				{
					model.G_Name = row["G_Name"].ToString();
				}
				if (row["G_Penson"] != null)
				{
					model.G_Penson = row["G_Penson"].ToString();
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static DataSet GetList(string strWhere)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("select G_ID,G_Name,G_Penson ");
			strSql.Append(" FROM C_GType ");
			if (strWhere.Trim() != "")
			{
				strSql.Append(" where " + strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public static DataSet GetList(int Top, string strWhere, string filedOrder)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("select ");
			if (Top > 0)
			{
				strSql.Append(" top " + Top.ToString());
			}
			strSql.Append(" G_ID,G_Name,G_Penson ");
			strSql.Append(" FROM C_GType ");
			if (strWhere.Trim() != "")
			{
				strSql.Append(" where " + strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public static int GetRecordCount(string strWhere)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("select count(1) FROM C_GType ");
			if (strWhere.Trim() != "")
			{
				strSql.Append(" where " + strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public static DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby);
			}
			else
			{
				strSql.Append("order by T.G_ID desc");
			}
			strSql.Append(")AS Row, T.*  from C_GType T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "C_GType";
			parameters[1].Value = "G_ID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

