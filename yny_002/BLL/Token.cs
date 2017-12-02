using System;
using System.Data;
using System.Collections.Generic;
using yny_002.Model;
using System.Net;
using System.IO;
using System.Text;
using LitJson;

namespace yny_002.BLL
{
	/// <summary>
	/// Token
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
			return DAL.Token.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public static bool Update(yny_002.Model.Token model)
		{
			return DAL.Token.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public static bool Delete(int id)
		{

			return DAL.Token.Delete(id);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public static bool DeleteList(string idlist)
		{
			return DAL.Token.DeleteList(idlist);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public static yny_002.Model.Token GetModel(int id)
		{
			
			return DAL.Token.GetModel(id);
		}
		// <summary>
		/// 得到一个对象实体
		/// </summary>
		public static string GetToken()
		{
			Model.Token tk= DAL.Token.GetModel();
			if (tk == null) //第一次请求tk
			{
				return addtoken();
			}
			else {
				if (tk.Date.AddMinutes(100) <= DateTime.Now) //超时重新获取
				{
					return addtoken();
				}
				else {
					return tk.TokenCode;
				}
			}
		}

		protected static string addtoken() 
		{
			string url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wxd38d20377fa76818&secret=bfb5355bf94bc8f76ab3a3ba52223c54";
			string json = JsonGet(url);
			//通过access_token和openid拉取用户信息
			JsonData jsonData = JsonMapper.ToObject(json);
			//拉取信息
			string access_token = jsonData["access_token"].ToString();
			Model.Token model = new Model.Token();
			model.TokenCode = access_token;
			model.Date = DateTime.Now;
			model.SXDate = DateTime.MaxValue;
			BLL.Token.Add(model);
			return access_token;
		}

		protected static string JsonGet(string url)
		{
			HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
			request.Method = "GET";
			request.ContentType = "text/html;charset=UTF-8";
			HttpWebResponse response = (HttpWebResponse)request.GetResponse();
			Stream myResponseStream = response.GetResponseStream();
			StreamReader myStreamReader = new StreamReader(myResponseStream, Encoding.UTF8);
			string retString = myStreamReader.ReadToEnd();
			myStreamReader.Close();
			myResponseStream.Close();
			return retString;
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static DataSet GetList(string strWhere)
		{
			return DAL.Token.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public static DataSet GetList(int Top, string strWhere, string filedOrder)
		{
			return DAL.Token.GetList(Top, strWhere, filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static List<yny_002.Model.Token> GetModelList(string strWhere)
		{
			DataSet ds = DAL.Token.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public static List<yny_002.Model.Token> DataTableToList(DataTable dt)
		{
			List<yny_002.Model.Token> modelList = new List<yny_002.Model.Token>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				yny_002.Model.Token model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = DAL.Token.DataRowToModel(dt.Rows[n]);
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
			return DAL.Token.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public static DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return DAL.Token.GetListByPage(strWhere, orderby, startIndex, endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
		//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

