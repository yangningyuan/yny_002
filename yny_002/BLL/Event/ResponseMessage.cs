﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace yny_002.BLL.Event
{
	public class ResponseMessage
	{
		#region 接收的类型
		public static string GetText(string FromUserName, string ToUserName, string Content)
		{
			WriteTxt(Content);//接收的文本消息
			string XML = "";
			switch (Content)
			{
				case "关键字":
					XML = ReText(FromUserName, ToUserName, "关键词回复测试");
					break;
				case "单图文":
					XML = ReArticle(FromUserName, ToUserName, "测试标题", "测试详情——百度搜索链接", "http://wx.bzq1688.com/mobile/img/perImg.png", "http://www.baidu.com");
					break;
				default:
					XML = ReText(FromUserName, ToUserName, "无对应关键字");
					break;
			}
			return XML;
		}

		public static string GetEvent(string FromUserName, string ToUserName,Model.Event.WxXmlModel wxmodel)
		{
			WriteTxt(wxmodel.EventKey);//接收的文本消息
			string XML = "";
			switch (wxmodel.Event)
			{
				case "subscribe"://用户未关注
					XML = ReArticle(FromUserName, ToUserName, "扫码用户未关注", "测试详情——扫马用户未关注", "http://wx.bzq1688.com/mobile/img/perImg.png", "http://www.baidu.com");
					break;
				case "SCAN":
					XML = ReArticle(FromUserName, ToUserName, "扫码用户已关注", "测试详情——扫马用户已关注", "http://wx.bzq1688.com/mobile/img/perImg.png", "http://www.baidu.com");
					break;
				default:
					XML = ReText(FromUserName, ToUserName, "无对应关键字");
					break;
			}
			return XML;
		}

		#endregion

		#region 回复方式
		/// <summary>
		/// 回复文本
		/// </summary>
		/// <param name="FromUserName">发送给谁(openid)</param>
		/// <param name="ToUserName">来自谁(公众账号ID)</param>
		/// <param name="Content">回复类型文本</param>
		/// <returns>拼凑的XML</returns>
		public static string ReText(string FromUserName, string ToUserName, string Content)
		{
			string XML = "<xml><ToUserName><![CDATA[" + FromUserName + "]]></ToUserName><FromUserName><![CDATA[" + ToUserName + "]]></FromUserName>";//发送给谁(openid)，来自谁(公众账号ID)
			XML += "<CreateTime>" + ConvertDateTimeInt(DateTime.Now) + "</CreateTime>";//回复时间戳
			XML += "<MsgType><![CDATA[text]]></MsgType>";//回复类型文本
			XML += "<Content><![CDATA[" + Content + "]]></Content><FuncFlag>0</FuncFlag></xml>";//回复内容 FuncFlag设置为1的时候，自动星标刚才接收到的消息，适合活动统计使用
			return XML;
		}

		/// <summary>
		/// 回复单图文
		/// </summary>
		/// <param name="FromUserName">发送给谁(openid)</param>
		/// <param name="ToUserName">来自谁(公众账号ID)</param>
		/// <param name="Title">标题</param>
		/// <param name="Description">详情</param>
		/// <param name="PicUrl">图片地址</param>
		/// <param name="Url">地址</param>
		/// <returns>拼凑的XML</returns>
		public static string ReArticle(string FromUserName, string ToUserName, string Title, string Description, string PicUrl, string Url)
		{
			string XML = "<xml><ToUserName><![CDATA[" + FromUserName + "]]></ToUserName><FromUserName><![CDATA[" + ToUserName + "]]></FromUserName>";//发送给谁(openid)，来自谁(公众账号ID)
			XML += "<CreateTime>" + ConvertDateTimeInt(DateTime.Now) + "</CreateTime>";//回复时间戳
			XML += "<MsgType><![CDATA[news]]></MsgType><Content><![CDATA[]]></Content><ArticleCount>1</ArticleCount><Articles>";
			XML += "<item><Title><![CDATA[" + Title + "]]></Title><Description><![CDATA[" + Description + "]]></Description><PicUrl><![CDATA[" + PicUrl + "]]></PicUrl><Url><![CDATA[" + Url + "]]></Url></item>";
			XML += "</Articles><FuncFlag>0</FuncFlag></xml>";
			return XML;
		}

		/// <summary>
		/// 多图文回复
		/// </summary>
		/// <param name="FromUserName">发送给谁(openid)</param>
		/// <param name="ToUserName">来自谁(公众账号ID)</param>
		/// <param name="ArticleCount">图文数量</param>
		/// <param name="dtArticle"></param>
		/// <returns></returns>
		public static string ReArticle(string FromUserName, string ToUserName, int ArticleCount, System.Data.DataTable dtArticle)
		{
			string XML = "<xml><ToUserName><![CDATA[" + FromUserName + "]]></ToUserName><FromUserName><![CDATA[" + ToUserName + "]]></FromUserName>";//发送给谁(openid)，来自谁(公众账号ID)
			XML += "<CreateTime>" + ConvertDateTimeInt(DateTime.Now) + "</CreateTime>";//回复时间戳
			XML += "<MsgType><![CDATA[news]]></MsgType><Content><![CDATA[]]></Content><ArticleCount>" + ArticleCount + "</ArticleCount><Articles>";
			foreach (System.Data.DataRow Item in dtArticle.Rows)
			{
				XML += "<item><Title><![CDATA[" + Item["Title"] + "]]></Title><Description><![CDATA[" + Item["Description"] + "]]></Description><PicUrl><![CDATA[" + Item["PicUrl"] + "]]></PicUrl><Url><![CDATA[" + Item["Url"] + "]]></Url></item>";
			}
			XML += "</Articles><FuncFlag>0</FuncFlag></xml>";
			return XML;
		}
		#endregion


		/// <summary>
		/// datetime转换为unixtime
		/// </summary>
		/// <param name="time"></param>
		/// <returns></returns>
		public static int ConvertDateTimeInt(System.DateTime time)
		{
			System.DateTime startTime = TimeZone.CurrentTimeZone.ToLocalTime(new System.DateTime(1970, 1, 1));
			return (int)(time - startTime).TotalSeconds;
		}


		#region 记录bug，以便调试
		/// <summary>
		/// 记录bug，以便调试
		/// </summary>
		public static bool WriteTxt(string str)
		{
			try
			{
				string LogPath = HttpContext.Current.Server.MapPath("/CDZ/err_log/");
				if (!Directory.Exists(LogPath))
				{
					Directory.CreateDirectory(LogPath);
				}
				FileStream FileStream = new FileStream(System.Web.HttpContext.Current.Server.MapPath("/CDZ/err_log//xiejun_" + DateTime.Now.ToLongDateString() + "_.txt"), FileMode.Append);
				StreamWriter StreamWriter = new StreamWriter(FileStream);
				//开始写入
				StreamWriter.WriteLine(str);
				//清空缓冲区
				StreamWriter.Flush();
				//关闭流
				StreamWriter.Close();
				FileStream.Close();
			}
			catch (Exception)
			{
				return false;
			}
			return true;
		}
		#endregion
	}
}
