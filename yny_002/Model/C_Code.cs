using System;
namespace yny_002.Model
{
	/// <summary>
	/// C_Code:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class C_Code
	{
		public C_Code()
		{ }
		#region Model
		private int _c_id;
		private int _c_codeid;
		private string _c_cjcodeid;
		private int _c_gtype;
		private int _c_state;
		private string _c_path;
		private DateTime _c_create = DateTime.Now;
		/// <summary>
		/// 
		/// </summary>
		public int C_ID
		{
			set { _c_id = value; }
			get { return _c_id; }
		}
		/// <summary>
		/// 带参
		/// </summary>
		public int C_CodeID
		{
			set { _c_codeid = value; }
			get { return _c_codeid; }
		}
		/// <summary>
		/// 厂家设备编号
		/// </summary>
		public string C_CJCodeID
		{
			set { _c_cjcodeid = value; }
			get { return _c_cjcodeid; }
		}
		/// <summary>
		/// 组
		/// </summary>
		public int C_GType
		{
			set { _c_gtype = value; }
			get { return _c_gtype; }
		}
		/// <summary>
		/// 充电桩状态 -1故障 0忙碌  1空闲
		/// </summary>
		public int C_State
		{
			set { _c_state = value; }
			get { return _c_state; }
		}

		public string Statename
		{
			get
			{
				if (C_State == -1)
				{
					return "故障";
				}
				else if (C_State == 0)
				{
					return "忙碌";
				}
				else if (C_State == 1)
				{
					return "空闲";
				}
				else {
					return "未知";
				}
			}
			set { Statename = value; }
		}
		/// <summary>
		/// 图片地址
		/// </summary>
		public string C_Path
		{
			set { _c_path = value; }
			get { return _c_path; }
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime C_Create
		{
			set { _c_create = value; }
			get { return _c_create; }
		}
		#endregion Model

	}
}

