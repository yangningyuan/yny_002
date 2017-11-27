using System;
using System.IO;
using System.Net;
using System.Text;

namespace zx326.Web.Payment.GuoFuBao
{
    public class GuoFuBao
    {
        public static string merchantID
        {
            get
            {
                //return "0000001502";
                return "0000045625";
            }
        }


        public static string virCardNoIn
        {
            get
            {
                //return "0000000002000000257";
                return "0000000002000008667";
            }
        }

        public static string VerficationCode
        {
            get
            {
                //return "11111aaaaa";
                return "11085960258";
            }
        }

        public static string url
        {
            get
            {
                //return "https://gatewaymer.gopay.com.cn/Trans/WebClientAction.do";
                return "https://gateway.gopay.com.cn/Trans/WebClientAction.do";
            }
        }

        /// <summary>
        /// MD5函数
        /// </summary>
        /// <param name="str">原始字符串</param>
        /// <returns>MD5结果</returns>
        public static string md5(string str)
        {
            byte[] b = Encoding.Default.GetBytes(str);
            b = new System.Security.Cryptography.MD5CryptoServiceProvider().ComputeHash(b);
            string ret = "";
            for (int i = 0; i < b.Length; i++)
                ret += b[i].ToString("x").PadLeft(2, '0');
            return ret;
        }

        /// <summary>
        /// 获取远程服务器返回结果
        /// </summary>
        /// <param name="strUrl">指定URL路径地址</param>
        /// <param name="timeout">超时时间设置</param>
        /// <returns>服务器返回结果</returns>
        public static string Get_Http(string strUrl, int timeout)
        {
            string strResult;
            try
            {
                HttpWebRequest myReq = (HttpWebRequest)HttpWebRequest.Create(strUrl);
                myReq.Timeout = timeout;
                HttpWebResponse HttpWResp = (HttpWebResponse)myReq.GetResponse();
                Stream myStream = HttpWResp.GetResponseStream();
                StreamReader sr = new StreamReader(myStream, Encoding.Default);
                StringBuilder strBuilder = new StringBuilder();
                while (-1 != sr.Peek())
                {
                    strBuilder.Append(sr.ReadLine());
                }

                strResult = strBuilder.ToString();
            }
            catch (Exception exp)
            {
                strResult = "错误：" + exp.Message;
            }

            return strResult;
        }
    }
}