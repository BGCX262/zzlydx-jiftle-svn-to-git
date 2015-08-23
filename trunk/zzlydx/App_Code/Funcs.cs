using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace zzlydx
{
    public class Funcs
    {
        /// <summary>
        /// 消息框
        /// </summary>
        /// <param name="strTip"></param>
        /// <param name="pge"></param>
        public static void jMsgBoxInfo(string strTip, Page pge)
        {
            pge.Response.Write("<script>alert('" + strTip + "')</script>");
        }

        /// <summary>
        /// 默认日期
        /// </summary>
        /// <returns></returns>
        public static DateTime GetDefaultDateTime()
        {
            DateTime dtm = new DateTime(1900, 1, 1);
            return dtm;
        }

        /// <summary>
        /// 当前用户名
        /// </summary>
        /// <param name="pge"></param>
        /// <returns></returns>
        public static string GetCurUserName(Page pge)
        {
            string strUser = string.Empty;
         try
         {
             strUser = pge.Session["User"].ToString();
             if (strUser == "")
             {
                 strUser = "admin";
             }

         }
         catch (System.Exception ex)
         {
             if (strUser == "")
             {
                 strUser = "admin";
             }
         }
            return strUser;
        }

        /// <summary>
        /// 独生子女奖励标准
        /// </summary>
        /// <returns></returns>
        public static double GetReward_OnlyOneChild()
        {
            return 20;
        }

    }
}