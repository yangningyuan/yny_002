using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class Query : PayConfig
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string merOrderNum =this.Request.Form["merOrderNum"].ToString().Trim();
            string tranDate = this.Request.Form["tranDate"].ToString().Trim();
            string txnString = merchantId + "|" + merOrderNum + "|" + tranDate;
            string signValue = PayUtils.md5(txnString + datakey);

            Deerchao.Utility.HttpClient myClient = new Deerchao.Utility.HttpClient();
            myClient.Url = this.queryUrl;
            myClient.PostingData.Add("merchantId",merchantId);
            myClient.PostingData.Add("merOrderNum", merOrderNum);
            myClient.PostingData.Add("tranDate", tranDate);
            myClient.PostingData.Add("signValue",signValue);

            string pageContents = myClient.GetString();
            if (pageContents != "none")
            {
                StringBuilder sb = new StringBuilder("");
                var decoded = PayUtils.UrlToData(pageContents).Item2;

                foreach (KeyValuePair<string, string> obj in decoded)
                {
                    sb.Append(obj.Key + ":" + obj.Value + "<br>");
                }               
                this.Response.Write(sb.ToString());
            }
            else
            {
                this.Response.Write("订单信息不存在");
            }
         }
  
    }
}