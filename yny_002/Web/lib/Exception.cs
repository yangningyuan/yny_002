using System;
using System.Collections.Generic;
using System.Web;

namespace yny_002.Web
{
    public class WxPayException : Exception 
    {
        public WxPayException(string msg) : base(msg) 
        {

        }
     }
}