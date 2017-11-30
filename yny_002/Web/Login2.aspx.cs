using LitJson;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yny_002.Web
{
	public partial class Login2 : System.Web.UI.Page
	{
		protected string  reurl="";
		protected void Page_Load(object sender, EventArgs e)
		{
			//获取微信access_token
			//https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code 
			string code = Request.QueryString["code"];
			string secret = "bfb5355bf94bc8f76ab3a3ba52223c54";
			string serviceAddress = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=wxd38d20377fa76818&secret="+ secret + "&code=" + code + "&grant_type=authorization_code";
			string accessjson= JsonGet(serviceAddress);
			//Response.Write(retString);

			//通过access_token和openid拉取用户信息
			JsonData jsonData = JsonMapper.ToObject(accessjson);
			//拉取信息
			string access_token = jsonData["access_token"].ToString();
			string openid = jsonData["openid"].ToString();
			string infourl = "https://api.weixin.qq.com/sns/userinfo?access_token="+ access_token + "&openid="+ openid + "&lang=zh_CN";
			string infojson= JsonGet(infourl);
			Response.Write(infojson);
		}

		protected string JsonGet(string url) 
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
	}
}