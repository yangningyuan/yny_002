using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;

using DBUtility;
using yny_002.Model;

namespace yny_002.DAL
{
	/// <summary>
	/// 数据访问类:Token
	/// </summary>
	public partial class Token
	{
		public Token()
		{ }
		#region  BasicMethod

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public static int Add(yny_002.Model.Token model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("insert into Token(");
			strSql.Append("TokenCode,Date,SXDate)");
			strSql.Append(" values (");
			strSql.Append("@TokenCode,@Date,@SXDate)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@TokenCode", SqlDbType.VarChar,1000),
					new SqlParameter("@Date", SqlDbType.DateTime),
					new SqlParameter("@SXDate", SqlDbType.DateTime)};
			parameters[0].Value = model.TokenCode;
			parameters[1].Value = model.Date;
			parameters[2].Value = model.SXDate;

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

		public static Model.Token GetModel()
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("select  top 1 id,TokenCode,Date,SXDate from Token ");
			strSql.Append(" order by Date desc;");
			yny_002.Model.Token model = new yny_002.Model.Token();
			DataSet ds = DbHelperSQL.Query(strSql.ToString());
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
		/// 更新一条数据
		/// </summary>
		public static bool Update(yny_002.Model.Token model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("update Token set ");
			strSql.Append("TokenCode=@TokenCode,");
			strSql.Append("Date=@Date,");
			strSql.Append("SXDate=@SXDate");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@TokenCode", SqlDbType.VarChar,1000),
					new SqlParameter("@Date", SqlDbType.DateTime),
					new SqlParameter("@SXDate", SqlDbType.DateTime),
					new SqlParameter("@id", SqlDbType.Int,4)};
			parameters[0].Value = model.TokenCode;
			parameters[1].Value = model.Date;
			parameters[2].Value = model.SXDate;
			parameters[3].Value = model.id;

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
		public static bool Delete(int id)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from Token ");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

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
		public static bool DeleteList(string idlist)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from Token ");
			strSql.Append(" where id in (" + idlist + ")  ");
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
		public static yny_002.Model.Token GetModel(int id)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("select  top 1 id,TokenCode,Date,SXDate from Token ");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

			yny_002.Model.Token model = new yny_002.Model.Token();
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
		/// 得到一个对象实体
		/// </summary>
		public static yny_002.Model.Token DataRowToModel(DataRow row)
		{
			yny_002.Model.Token model = new yny_002.Model.Token();
			if (row != null)
			{
				if (row["id"] != null && row["id"].ToString() != "")
				{
					model.id = int.Parse(row["id"].ToString());
				}
				if (row["TokenCode"] != null)
				{
					model.TokenCode = row["TokenCode"].ToString();
				}
				if (row["Date"] != null && row["Date"].ToString() != "")
				{
					model.Date = DateTime.Parse(row["Date"].ToString());
				}
				if (row["SXDate"] != null && row["SXDate"].ToString() != "")
				{
					model.SXDate = DateTime.Parse(row["SXDate"].ToString());
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
			strSql.Append("select id,TokenCode,Date,SXDate ");
			strSql.Append(" FROM Token ");
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
			strSql.Append(" id,TokenCode,Date,SXDate ");
			strSql.Append(" FROM Token ");
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
			strSql.Append("select count(1) FROM Token ");
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
				strSql.Append("order by T.id desc");
			}
			strSql.Append(")AS Row, T.*  from Token T ");
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
			parameters[0].Value = "Token";
			parameters[1].Value = "id";
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

