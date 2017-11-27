using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///PayConfig 的摘要说明
/// </summary>
public class PayConfig : System.Web.UI.Page
{
    // date_default_timezone_set('PRC');
    public static string version = "1.0.0";
    public static string merchantId = "888201707080102"; //商户代码
    //public static string bussId = "888220"; //业务代码   888219
    public static string datakey = "224i56m825d75IJh"; //数据密钥
    public static string payUrl = "http://cashier.etonepay.com/NetPay/BankSelect.action"; //支付网关地址
    public string queryUrl = "http://192.168.10.36:7002/NetPay/MerOrderQuery.action"; //订单状态查询地址

    public static string transCode = "8888"; //交易代码
    public static string currencyType = "156"; //币种 156=人民币

    public static string url = "http://" + HttpContext.Current.Request.Url.Authority.ToString();

    public static string merUrl = url + "/Payment/YiTong/OrderReturn.aspx"; //页面返回地址
    public static string backUrl = url + "/Payment/YiTong/OrderBack.aspx"; //后台通知地址

    public PayConfig()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

   
}