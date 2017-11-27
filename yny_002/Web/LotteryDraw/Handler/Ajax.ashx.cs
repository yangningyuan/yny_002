using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Transactions;

namespace zx270.Web.LotteryDraw.Handler
{
    /// <summary>
    /// Ajax 的摘要说明
    /// </summary>
    public class Ajax : BaseHandler
    {
        public override void ProcessRequest(HttpContext context)
        {
            base.ProcessRequest(context);
            string result = "非法操作";
            if (!string.IsNullOrEmpty(context.Request["type"]))
                result = Operation(context.Request["type"]);

            context.Response.Write(result);
        }

        private string Operation(string type)
        {
            switch (type)
            {
                case "del_Draw"://删除红包
                    return del_Draw();
                case "robDraw"://抢红包
                    return robDraw();
            }
            return "非法操作";
        }

        public string del_Draw()
        {
            string result = "参数异常";
            if (!string.IsNullOrEmpty(_context.Request["pram"]))
            {
                if (!TModel.Role.IsAdmin)
                {
                    return "权限不足";
                }
                if (BLL.LotteryDraw.DeleteList(_context.Request["pram"]))
                {
                    return "删除成功";
                }
                else
                {
                    return "删除失败";
                }
            }
            return result;
        }

        public string robDraw()
        {
            string result = "参数异常";
            using (var scope = new TransactionScope())
            {
                result = BLL.LotteryDraw.RobDraw(TModel);
                if (result[0] == '1')
                {
                    scope.Complete();
                }
            }
            return result;
        }
    }
}