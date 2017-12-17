using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Xml;
using System.Xml.Linq;

namespace yny_002.Web.CDZ.Handler
{
	/// <summary>
	/// cdzserver 的摘要说明
	/// </summary>
	public class cdzserver : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{
			//string token = "19930907";
			//if (string.IsNullOrEmpty(token))
			//{
			//	return;
			//}
			//string echoString = context.Request.QueryString["echoStr"];
			//string signature = context.Request.QueryString["signature"];
			//string timestamp = context.Request.QueryString["timestamp"];
			//string nonce = context.Request.QueryString["nonce"];

			//if (!string.IsNullOrEmpty(echoString))
			//{
			//	context.Response.Write(echoString);
			//	context.Response.End();
			//}


			context.Response.ContentType = "text/plain";
			if (context.Request.HttpMethod.ToLower() == "post")
			{
				//回复消息的时候也需要验证消息，这个很多开发者没有注意这个，存在安全隐患  
				//微信中 谁都可以获取信息 所以 关系不大 对于普通用户 但是对于某些涉及到验证信息的开发非常有必要
				if (CheckSignature())
				{
					//接收消息
					ReceiveXml();
				}
				else
				{
					HttpContext.Current.Response.Write("消息并非来自微信");
					HttpContext.Current.Response.End();
				}
			}
			else
			{
				CheckWechat();
			}

		}



		#region 验证微信签名
		/// <summary>
		/// 返回随机数表示验证成功
		/// </summary>
		private void CheckWechat()
		{
			if (string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["echoStr"]))
			{
				HttpContext.Current.Response.Write("消息并非来自微信");
				HttpContext.Current.Response.End();
			}
			string echoStr = HttpContext.Current.Request.QueryString["echoStr"];
			if (CheckSignature())
			{
				HttpContext.Current.Response.Write(echoStr);
				HttpContext.Current.Response.End();
			}
		}

		/// <summary>
		/// 验证微信签名
		/// </summary>
		/// <returns></returns>
		/// * 将token、timestamp、nonce三个参数进行字典序排序
		/// * 将三个参数字符串拼接成一个字符串进行sha1加密
		/// * 开发者获得加密后的字符串可与signature对比，标识该请求来源于微信。
		private bool CheckSignature()
		{
			string access_token = "19930907";

			string signature = HttpContext.Current.Request.QueryString["signature"].ToString();
			string timestamp = HttpContext.Current.Request.QueryString["timestamp"].ToString();
			string nonce = HttpContext.Current.Request.QueryString["nonce"].ToString();
			string[] ArrTmp = { access_token, timestamp, nonce };
			Array.Sort(ArrTmp);     //字典排序
			string tmpStr = string.Join("", ArrTmp);
			tmpStr = FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");

			if (tmpStr.ToLower() == signature)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		#endregion

		#region 接收消息
		/// <summary>
		/// 接收微信发送的XML消息并且解析
		/// </summary>
		private void ReceiveXml()
		{
			Stream requestStream = System.Web.HttpContext.Current.Request.InputStream;
			byte[] requestByte = new byte[requestStream.Length];
			requestStream.Read(requestByte, 0, (int)requestStream.Length);
			string requestStr = Encoding.UTF8.GetString(requestByte);

			if (!string.IsNullOrEmpty(requestStr))
			{
				//封装请求类
				XmlDocument requestDocXml = new XmlDocument();
				requestDocXml.LoadXml(requestStr);
				XmlElement rootElement = requestDocXml.DocumentElement;
				Model.Event.WxXmlModel WxXmlModel = new Model.Event.WxXmlModel();
				WxXmlModel.ToUserName = rootElement.SelectSingleNode("ToUserName").InnerText;
				WxXmlModel.FromUserName = rootElement.SelectSingleNode("FromUserName").InnerText;
				WxXmlModel.CreateTime = rootElement.SelectSingleNode("CreateTime").InnerText;
				WxXmlModel.MsgType = rootElement.SelectSingleNode("MsgType").InnerText;

				switch (WxXmlModel.MsgType)
				{
					case "text"://文本
						WxXmlModel.Content = rootElement.SelectSingleNode("Content").InnerText;
						break;
					case "image"://图片
						WxXmlModel.PicUrl = rootElement.SelectSingleNode("PicUrl").InnerText;
						break;
					case "event"://事件
						WxXmlModel.Event = rootElement.SelectSingleNode("Event").InnerText;
						WxXmlModel.EventKey = rootElement.SelectSingleNode("EventKey").InnerText;
						//if (WxXmlModel.Event == "subscribe")//用户未关注时，进行关注后的事件推送
						//{
						//	WxXmlModel.EventKey = rootElement.SelectSingleNode("EventKey").InnerText;
						//}else if (WxXmlModel.Event == "scan")//用户已关注时的事件推送
						//{
						//	WxXmlModel.EventKey = rootElement.SelectSingleNode("EventKey").InnerText;
						//}
						break;
					default:
						break;
				}

				ResponseXML(WxXmlModel);//回复消息
			}
		}
		#endregion

		#region 回复消息
		private void ResponseXML(Model.Event.WxXmlModel WxXmlModel)
		{
			string XML = "";
			switch (WxXmlModel.MsgType)
			{
				case "text"://文本回复
					XML = BLL.Event.ResponseMessage.GetText(WxXmlModel.FromUserName, WxXmlModel.ToUserName, WxXmlModel.Content);
					break;
				case "event"://时间推送
					XML = BLL.Event.ResponseMessage.GetEvent(WxXmlModel.FromUserName, WxXmlModel.ToUserName, WxXmlModel);
					break;
				default://默认回复
					break;
			}
			HttpContext.Current.Response.Write(XML);
			HttpContext.Current.Response.End();
		}
		#endregion


		public bool IsReusable
		{
			get
			{
				return false;
			}
		}
	}
}