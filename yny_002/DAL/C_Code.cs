using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DBUtility;//Please add references
namespace yny_002.DAL
{
	/// <summary>
	/// 数据访问类:C_Code
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
			StringBuilder strSql = new StringBuilder();
			strSql.Append("insert into C_Code(");
			strSql.Append("C_CodeID,C_CJCodeID,C_GType,C_State,C_Path,C_Create)");
			strSql.Append(" values (");
			strSql.Append("@C_CodeID,@C_CJCodeID,@C_GType,@C_State,@C_Path,@C_Create)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@C_CodeID", SqlDbType.Int,4),
					new SqlParameter("@C_CJCodeID", SqlDbType.VarChar,250),
					new SqlParameter("@C_GType", SqlDbType.Int,4),
					new SqlParameter("@C_State", SqlDbType.Int,4),
					new SqlParameter("@C_Path", SqlDbType.VarChar,500),
					new SqlParameter("@C_Create", SqlDbType.DateTime)};
			parameters[0].Value = model.C_CodeID;
			parameters[1].Value = model.C_CJCodeID;
			parameters[2].Value = model.C_GType;
			parameters[3].Value = model.C_State;
			parameters[4].Value = model.C_Path;
			parameters[5].Value = model.C_Create;

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
		public static bool Update(yny_002.Model.C_Code model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("update C_Code set ");
			strSql.Append("C_CodeID=@C_CodeID,");
			strSql.Append("C_CJCodeID=@C_CJCodeID,");
			strSql.Append("C_GType=@C_GType,");
			strSql.Append("C_State=@C_State,");
			strSql.Append("C_Path=@C_Path,");
			strSql.Append("C_Create=@C_Create");
			strSql.Append(" where C_ID=@C_ID");
			SqlParameter[] parameters = {
					new SqlParameter("@C_CodeID", SqlDbType.Int,4),
					new SqlParameter("@C_CJCodeID", SqlDbType.VarChar,250),
					new SqlParameter("@C_GType", SqlDbType.Int,4),
					new SqlParameter("@C_State", SqlDbType.Int,4),
					new SqlParameter("@C_Path", SqlDbType.VarChar,500),
					new SqlParameter("@C_Create", SqlDbType.DateTime),
					new SqlParameter("@C_ID", SqlDbType.Int,4)};
			parameters[0].Value = model.C_CodeID;
			parameters[1].Value = model.C_CJCodeID;
			parameters[2].Value = model.C_GType;
			parameters[3].Value = model.C_State;
			parameters[4].Value = model.C_Path;
			parameters[5].Value = model.C_Create;
			parameters[6].Value = model.C_ID;

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
		public static bool codeDelete(int C_CodeID)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from C_Code ");
			strSql.Append(" where C_CodeID=@C_CodeID");
			SqlParameter[] parameters = {
					new SqlParameter("@C_CodeID", SqlDbType.Int,4)
			};
			parameters[0].Value = C_CodeID;

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
		public static bool Delete(int C_ID)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from C_Code ");
			strSql.Append(" where C_ID=@C_ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@C_ID", SqlDbType.Int,4)          };
			parameters[0].Value = C_ID;

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
		public static bool DeleteList(string C_CodeIDlist)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from C_Code ");
			strSql.Append(" where C_CodeID in (" + C_CodeIDlist + ")  ");
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
		public static yny_002.Model.C_Code GetModel(int C_CodeID)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("select  top 1 C_ID,C_CodeID,C_CJCodeID,C_GType,C_State,C_Path,C_Create from C_Code ");
			strSql.Append(" where C_CodeID=@C_CodeID");
			SqlParameter[] parameters = {
					new SqlParameter("@C_CodeID", SqlDbType.Int,4)
			};
			parameters[0].Value = C_CodeID;

			yny_002.Model.C_Code model = new yny_002.Model.C_Code();
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
			return CommonBase.GetTable("C_Code", "C_ID", "C_ID asc", strWhere, pageIndex, pageSize, out count);
		}
		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public static yny_002.Model.C_Code DataRowToModel(DataRow row)
		{
			yny_002.Model.C_Code model = new yny_002.Model.C_Code();
			if (row != null)
			{
				if (row["C_ID"] != null && row["C_ID"].ToString() != "")
				{
					model.C_ID = int.Parse(row["C_ID"].ToString());
				}
				if (row["C_CodeID"] != null && row["C_CodeID"].ToString() != "")
				{
					model.C_CodeID = int.Parse(row["C_CodeID"].ToString());
				}
				if (row["C_CJCodeID"] != null)
				{
					model.C_CJCodeID = row["C_CJCodeID"].ToString();
				}
				if (row["C_GType"] != null && row["C_GType"].ToString() != "")
				{
					model.C_GType = int.Parse(row["C_GType"].ToString());
				}
				if (row["C_State"] != null && row["C_State"].ToString() != "")
				{
					model.C_State = int.Parse(row["C_State"].ToString());
				}
				if (row["C_Path"] != null)
				{
					model.C_Path = row["C_Path"].ToString();
				}
				if (row["C_Create"] != null && row["C_Create"].ToString() != "")
				{
					model.C_Create = DateTime.Parse(row["C_Create"].ToString());
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
			strSql.Append("select C_ID,C_CodeID,C_CJCodeID,C_GType,C_State,C_Path,C_Create ");
			strSql.Append(" FROM C_Code ");
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
			strSql.Append(" C_ID,C_CodeID,C_CJCodeID,C_GType,C_State,C_Path,C_Create ");
			strSql.Append(" FROM C_Code ");
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
			strSql.Append("select count(1) FROM C_Code ");
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
				strSql.Append("order by T.C_CodeID desc");
			}
			strSql.Append(")AS Row, T.*  from C_Code T ");
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
			parameters[0].Value = "C_Code";
			parameters[1].Value = "C_CodeID";
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

