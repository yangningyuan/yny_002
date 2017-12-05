using System;
namespace yny_002.Model
{
	/// <summary>
	/// C_GType:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class C_GType
	{
		public C_GType()
		{ }
		#region Model
		private int _g_id;
		private string _g_name;
		private string _g_penson;
		/// <summary>
		/// 
		/// </summary>
		public int G_ID
		{
			set { _g_id = value; }
			get { return _g_id; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string G_Name
		{
			set { _g_name = value; }
			get { return _g_name; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string G_Penson
		{
			set { _g_penson = value; }
			get { return _g_penson; }
		}
		#endregion Model

	}
}

