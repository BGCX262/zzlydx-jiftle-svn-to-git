using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Jiftle.Data;

namespace zzlydx
{

    /// <summary>
    ///rwDB 的摘要说明
    /// </summary>
    public class rwDB
    {
       public DBCommand conn;
        public readonly bool bConnected = false;
        public rwDB()
        {
            try
            {
                string strConn = string.Empty;
                conn = new DBCommand();

                strConn = ConfigurationManager.ConnectionStrings["ConnStr"].ToString(); 
                conn.ConnectionString = strConn;
                conn.DataBaseDriverType = enmDataAccessType.DB_MSSQL;
                conn.Open();
                bConnected = conn.Connected;
                
            }
            catch (System.Exception ex)
            {
                string strErr = ex.Message;
                bConnected = false;
            }

        }

        public int ExcuteSQL(string strSQL)
        {
            try
            {
                int intCount = 0;
                if (conn != null && conn.Connected)
                {
                    intCount = conn.ExecuteSQL(strSQL);
                }
                else
                {
                    conn.Open();
                    intCount = conn.ExecuteSQL(strSQL);
                }
                return intCount;
            }
            catch (System.Exception)
            {
                return 0;
            }

        }

        public DataTable GetDataTable(string strSQL)
        {
            try
            {
                DataTable dttTmp = null;
                if (conn != null && conn.Connected)
                {
                    dttTmp = conn.CreateDataTable(strSQL);
                }
                else
                {
                    conn.Open();
                    dttTmp = conn.CreateDataTable(strSQL);
                }
                return dttTmp;
            }
            catch (System.Exception ex)
            {
                string stErr = ex.Message;
                return null;
            }
        }


        ~rwDB()
        {
            try
            {
                if (conn != null && conn.Connected)
                {
                    conn.Close();
                }
            }
            catch (System.Exception)
            {

            }


        }

    }

}