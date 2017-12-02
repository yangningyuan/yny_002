using System;
namespace yny_002.Model
{
	/// <summary>
	/// Token:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Token
	{
		public Token()
		{ }
		#region Model
		private int _id;
		private string _tokencode;
		private DateTime _date = DateTime.Now;
		private DateTime _sxdate;
		/// <summary>
		/// 
		/// </summary>
		public int id
		{
			set { _id = value; }
			get { return _id; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string TokenCode
		{
			set { _tokencode = value; }
			get { return _tokencode; }
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime Date
		{
			set { _date = value; }
			get { return _date; }
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime SXDate
		{
			set { _sxdate = value; }
			get { return _sxdate; }
		}
		#endregion Model

	}
}

