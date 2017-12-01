using LitJson;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yny_002.Web
{
	public partial class Login2 : BasePage
	{
		protected string reurl = "";
		protected object obj = new object();
		protected new void Page_Load(object sender, EventArgs e)
		{
			lock (obj)
			{
				//获取微信access_token
				//https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code 
				string code = Request.QueryString["code"];
				string secret = "bfb5355bf94bc8f76ab3a3ba52223c54";
				string serviceAddress = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=wxd38d20377fa76818&secret=" + secret + "&code=" + code + "&grant_type=authorization_code";
				string accessjson = JsonGet(serviceAddress);

				//通过access_token和openid拉取用户信息
				JsonData jsonData = JsonMapper.ToObject(accessjson);
				//拉取信息
				string access_token = jsonData["access_token"].ToString();
				string openid = jsonData["openid"].ToString();
				string infourl = "https://api.weixin.qq.com/sns/userinfo?access_token=" + access_token + "&openid=" + openid + "&lang=zh_CN";
				string infojson = JsonGet(infourl);
				JsonData infoData = JsonMapper.ToObject(infojson);

				Model.Member model = BLL.Member.GetModelByMIDQR(infoData["openid"].ToString());

				if (model == null)
				{
					string error = "";
					Model.Member MemberMode = new Model.Member();
					MemberMode.Password = "111111";
					MemberMode.SecPsd = "222222";
					MemberMode.Tel = "";
					MemberMode.RoleCode = "Notactive";
					MemberMode.AgencyCode = "002";
					//MemberMode.MAgencyType = MemberMode.MAgencyType;
					MemberMode.IsClock = false;
					MemberMode.IsClose = false;
					MemberMode.MState = false;
					MemberMode.MTJ = "admin";
					MemberMode.MBD = "admin";
					MemberMode.MSH = "";
					MemberMode.MCreateDate = DateTime.Now;
					MemberMode.MDate = DateTime.MaxValue;
					MemberMode.Salt = new Random().Next(10000, 99999).ToString();
					MemberMode.FHState = false;

					MemberMode.MID = BLL.Member.GetTestMID();
					//Response.Write(infoData["openid"].ToString());
					MemberMode.QRCode = infoData["openid"].ToString();
					MemberMode.MName = infoData["nickname"].ToString();
					MemberMode.Province = infoData["province"].ToString();
					MemberMode.City = infoData["city"].ToString();
					MemberMode.Country = infoData["country"].ToString();
					MemberMode.Address = infoData["headimgurl"].ToString();


					Model.Member addmodel = BLL.Member.InsertAndReturnEntity(MemberMode, 0, true, ref error);
					if (addmodel != null)
					{
						//Model.SHMoney shmoney = BLL.Configuration.Model.SHMoneyList["002"];
						//string result = BllModel.UpMAgencyType(shmoney, addmodel.MID, "MJB", BLL.Member.ManageMember.TModel, 0);
						//if (result != "1")
						//{ 
						//Response.Write(result); 
						//}
						//else {
							model = addmodel;
						 //}
					}
					else {
						Response.Write("请联系管理员");
					}
				}
				FormsAuthentication.SetAuthCookie(model.MID, true);
				BLL.Member bllmodel = new BLL.Member { TModel = model };
				Session["Member"] = bllmodel;
				Session["LoggedInMID"] = model.MID;
				//Server.Transfer("Default.aspx");
				Response.Redirect("Default.aspx");
				//Response.Write(Session["LoggedInMID"]);
			}
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