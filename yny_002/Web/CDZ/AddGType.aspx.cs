using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yny_002.Web.CDZ
{
	public partial class AddGType : BasePage
	{
		protected override string btnAdd_Click()
		{
			string gname = Request.Form["txtName"];
			string gpenson = Request.Form["txtPenson"];

			Model.C_GType gtype = new Model.C_GType();
			gtype.G_Name = gname;
			gtype.G_Penson = gpenson;
			if (BLL.C_GType.Add(gtype) > 0) 
			{
				return "创建成功";
			 }else {
				return "创建失败";
			 }
		}
	}
}