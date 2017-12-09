using LitJson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yny_002.Web.SysManage
{
	public partial class MenuSet : BasePage
	{
		protected override string btnAdd_Click()
		{
			string urlpost = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token="+BLL.Token.GetToken();

			string menustr = Request.Form["strmenu"];
			string result= JsonPost(urlpost, menustr);
			JsonData jsonresult = JsonMapper.ToObject(result);//二维码ticket后，开发者可用ticket换取二维码图片
			if (jsonresult["errcode"].ToString() == "0")
				return "设置成功";
			else
				return jsonresult["errmsg"].ToString();
		}
	}
}