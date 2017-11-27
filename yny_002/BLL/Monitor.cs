using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace yny_002.BLL
{
    public class Monitor
    {
        public static Model.Monitor GetMonitor()
        {
            return DAL.Monitor.GetMonitor();
        }
    }
}
