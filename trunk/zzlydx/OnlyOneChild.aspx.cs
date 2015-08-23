using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zzlydx
{
    public partial class OnlyOneChild : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                txtPaynum.Text = Funcs.GetReward_OnlyOneChild().ToString();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                strtDsznfmjlb tmp = new strtDsznfmjlb();
                tmp.name = txtName.Text.Trim();
                tmp.idcode = txtIdCode.Text.Trim();
                tmp.sex = Convert.ToInt16(dplSex.SelectedIndex);
                tmp.childsex = Convert.ToInt16(dplChildSex.SelectedIndex);
                tmp.familycode = txtfamilyCode.Text.Trim();
                tmp.isoldinsure = Convert.ToInt16(chkIsOldInsure.Checked?1:0); //是否参加养老保险补贴(0 未 1  参加)
                tmp.locationcode = txtLocationCode.Text.Trim();
                tmp.lushi = Convert.ToInt16(chkLushi.Checked ? 1 : 0); //落实
                tmp.location = txtLocation.Text.Trim(); 
                tmp.onechildcardcode = txtOneChildCardCode.Text; //独生子女证编号
                tmp.paynum = Convert.ToDouble(txtPaynum.Text.Trim() == "" ? "0" :txtPaynum.Text.Trim()); //发放金额
                tmp.poldcode = txtPoldcode.Text.Trim();//配偶身份证号
                tmp.poname = txtPoName.Text.Trim();//配偶姓名
                tmp.shenghe = Convert.ToInt16(dplShenghe.SelectedIndex);//审核
                tmp.shenghenoreason = txtShengheNoReason.Text.Trim();
                tmp.shengheren = txtShengheRen.Text.Trim();
                tmp.unitname = txtUnitName.Text.Trim();
                tmp.unitxingzhi = Convert.ToInt16(dplUnitXingzhi.SelectedIndex);
                tmp.username = Funcs.GetCurUserName(this); //Session["UserName"].ToString();
                tmp.inputdate = DateTime.Now;

                //日期
                if (tmp.lushi !=0)
                    tmp.lushidate = Convert.ToDateTime(txtLushiDate.Text);
                else
                    tmp.lushidate = Funcs.GetDefaultDateTime();
                
                tmp.birthday = Convert.ToDateTime(txtBirthday.Text);
                tmp.childbirthday = Convert.ToDateTime(txtChildBirthday.Text);

                if (txtPaydate.Text.Trim() == "")
                    tmp.paydate = Funcs.GetDefaultDateTime();
                else
                    tmp.paydate = Convert.ToDateTime(txtPaydate.Text.Trim());
                if (txtShenghedate.Text.Trim() == "")
                    tmp.shenghedate = Funcs.GetDefaultDateTime();
                else
                    tmp.shenghedate = Convert.ToDateTime(txtShenghedate.Text);
              
                rwDB db = new rwDB();
                if (Table_Dsznfmjlb.GetItemCount(tmp.idcode, db.conn) == 0)
                {
                    string strSQL = Table_Dsznfmjlb.GetSQL_Insert(tmp);
                    if (db.ExcuteSQL(strSQL) == 1)
                        Funcs.jMsgBoxInfo("录入成功!", this);
                    else
                        Funcs.jMsgBoxInfo("录入失败！", this);
                }
                else
                {
                    Funcs.jMsgBoxInfo(tmp.name + "(" + tmp.idcode + ")已存在!", this);
                }
            }
            catch (System.Exception ex)
            {

            }
        }


    


    }
}