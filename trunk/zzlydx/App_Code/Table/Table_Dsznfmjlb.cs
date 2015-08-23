using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Jiftle.Data;
using System.Data;

namespace zzlydx
{

/// <summary>
/// Summary description for Table_Dsznfmjlb
/// </summary>
public class Table_Dsznfmjlb
{
	
		public static string GetSQL_Insert(strtDsznfmjlb tmp)
        {
            string strSQL = string.Empty;
            strSQL = string.Format("INSERT INTO dsznfmjlb([name],[idcode],[sex],[birthday],[location] ,[locationcode],[poname],[poldcode] ,[onechildcardcode] ,[childbirthday],[childsex]" +
           ",[paydate],[paynum],[isoldinsure],[lushi],[lushidate],[shenghe],[shengheren],[shenghedate],[shenghenoreason],[familycode],[unitname],[unitxingzhi]" +
           ",[username],[inputdate])" + 
     "VALUES" + 
          "('" + tmp.name + "','" + tmp.idcode + "'," + tmp.sex + ",'" + tmp.birthday.ToString("yyyy-MM-dd HH:mm:ss") + "','" + tmp.location + "','" + tmp.locationcode + "','" + tmp.poname + "','" +  
         tmp.poldcode + "','" + tmp.onechildcardcode + "','" + tmp.childbirthday.ToString("yyyy-MM-dd HH:mm:ss") + "'," + tmp.childsex + ",'" + tmp.paydate.ToString("yyyy-MM-dd HH:mm:ss") + "'," +
        tmp.paynum + "," + tmp.isoldinsure + "," + tmp.lushi + ",'" + tmp.lushidate.ToString("yyyy-MM-dd HH:mm:ss") + "'," + tmp.shenghe + ",'" + tmp.shengheren + "','" + tmp.shenghedate.ToString("yyyy-MM-dd HH:mm:ss") + "','" + tmp.shenghenoreason + "','" +
        tmp.familycode + "','" + tmp.unitname + "'," + tmp.unitxingzhi + ",'" + tmp.username + "','" + tmp.inputdate + "')");
            return strSQL;
        }

        public static int GetItemCount(string idCode,DBCommand conn)
        {
            string strSQL = string.Empty;
            DataTable dttTmp = null;
            int intCount = 0;
            strSQL = string.Format("select count(*) As ItemCount from dsznfmjlb where idcode='{0}'",idCode);
            dttTmp = conn.CreateDataTable(strSQL);
            if (dttTmp != null && dttTmp.Rows.Count > 0)
            {
                intCount = Convert.ToInt32(dttTmp.Rows[0]["ItemCount"] .ToString());
            }

            return intCount;
        }
	}

}