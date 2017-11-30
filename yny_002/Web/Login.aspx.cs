using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace yny_002.Web
{
	public partial class Login : BasePage
	{
		protected string reurl = "";

		protected new void Page_Load(object sender, EventArgs e)
		{
			//scope为snsapi_userinfo 

			//https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxf0e81c3bee622d60&redirect_uri=http%3A%2F%2Fnba.bluewebgame.com%2Foauth_response.php&response_type=code&scope = snsapi_userinfo & state = STATE#wechat_redirect 

			string appid = "wxd38d20377fa76818";
			string redirect_uri = Server.UrlEncode("http://wx.bzq1688.com/Login2.aspx");//授权后重定向的回调链接地址，请使用urlEncode对链接进行处理
			string response_type = "code";
			string scope = "snsapi_userinfo";//应用授权作用域，snsapi_base （不弹出授权页面，直接跳转，只能获取用户openid），snsapi_userinfo （弹出授权页面，
			string state = "STATE";
			reurl = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + appid + "&redirect_uri=" + redirect_uri + "&response_type=" + response_type + "&scope=" + scope + "&state=" + state + "#wechat_redirect";
		}
	}
}