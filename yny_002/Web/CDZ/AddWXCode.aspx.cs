using LitJson;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yny_002.Web.CDZ
{
	public partial class AddWXCode : BasePage
	{

		protected override void SetPowerZone()
		{
			C_CodeID.Value = (Convert.ToInt32(BLL.CommonBase.GetSingle("select COUNT(*) from c_code;")) + 1).ToString();

			gtype.DataSource = BLL.C_GType.GetList(" 1=1 ");
			gtype.DataTextField = "G_Name";
			gtype.DataValueField = "G_ID";
			gtype.DataBind();
		}
		protected override string btnAdd_Click()
		{
			int codeid = Convert.ToInt32(Request.Form["C_CodeID"]);
			string cjcode = Request.Form["C_CJCodeID"];
			int gtype = Convert.ToInt32(Request.Form["gtype"]);
			Model.C_Code code = new Model.C_Code();
			code.C_CodeID = codeid;
			code.C_CJCodeID = cjcode;
			code.C_GType = gtype;
			code.C_State = 1;
			//获取数据的地址（微信提供）
			string url = "https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=" + BLL.Token.GetToken();
			//发送给微信服务器的数据
			string postjson = "{\"action_name\":\"QR_LIMIT_SCENE\",\"action_info\":{\"scene\":{\"scene_id\":" + code.C_CodeID + "}}}";
			//将得到的字符串转化成json对象
			string response = JsonPost(url, postjson);
			JsonData jsonticket = JsonMapper.ToObject(response);//二维码ticket后，开发者可用ticket换取二维码图片
			string ticket = jsonticket["ticket"].ToString();
			string imgurl = "https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=" + System.Web.HttpUtility.HtmlEncode(ticket);
			code.C_Path = imgurl;
			if (BLL.C_Code.Add(code) > 0)
				return "生成成功";
			else
				return "生成失败";
		}

		public string saveimage(string imgurl)
		{

			string fromURL = imgurl;

			try
			{
				string filepath = "http://" + HttpContext.Current.Request.Url.Authority.ToString() + "/codeimg/";
				string savePath = Server.MapPath(filepath);
				WebClient myWebClient = new WebClient();
				myWebClient.DownloadFile(fromURL, filepath);
			}
			catch (Exception e)
			{
				return e.Message;

			}


			return "";
			//WebClient mywebclient = new WebClient();
			//string url = imgurl;
			//string newfilename = DateTime.Now.ToString("yyyyMMddHHmmssfff")+"_"+ ".jpg";

			//string filepath = "http://" + HttpContext.Current.Request.Url.Authority.ToString() + "/codeimg/";
			//try
			//{
			//	mywebclient.DownloadFile(url, filepath);
			//	return filepath+newfilename;
			//	//filename = newfilename;
			//}
			//catch (Exception ex)
			//{
			//	return ex.Message;
			//}
		}

	}
}