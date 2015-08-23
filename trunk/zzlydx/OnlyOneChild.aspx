<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlyOneChild.aspx.cs" Inherits="zzlydx.OnlyOneChild" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <script src="Scripts/jquery-tooltip/js/jquery.pack.js" type="text/javascript"></script>
      <script src="Scripts/jquery-tooltip/js/Tooltip.mini.js" type="text/javascript"></script>
      <link href="Scripts/jquery-tooltip/css/Tooltip.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript" src="Scripts/JScript_jiftle.js"></script>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
   
.InputBody
{
    background-color: #B9B9B9;
}
    </style>
</head>
<body class="InputBody">
    <form id="form1" runat="server" enableviewstate="true">
    <div>
       <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="独生子女父母奖励"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 100%;">
                        <tr>
                            <td >
                                姓名：
                            </td>
                            <td>
                              <asp:TextBox ID="txtName" runat="server" MaxLength="32" reg="^\s*$" Tip="不能为空"></asp:TextBox>
                                <span class="style1">*</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtName" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                身份证号：
                            </td>
                            <td>
                                <asp:TextBox ID="txtIdCode" runat="server" 
                                 onblur="ExtractionBirthday('txtIdCode','txtBirthday');" MaxLength="18"></asp:TextBox>
                                <span class="style1">*</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtIdCode" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                性别：
                            </td>
                            <td>
                                <asp:DropDownList ID="dplSex" runat="server">
                                    <asp:ListItem Value="0">未知</asp:ListItem>
                                    <asp:ListItem Value="1">男</asp:ListItem>
                                    <asp:ListItem Value="2">女</asp:ListItem>
                                    <asp:ListItem Value="3">未说明</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                出生日期：
                            </td>
                            <td>
                                <asp:TextBox ID="txtBirthday" onClick="WdatePicker()" 
                                     runat="server" ></asp:TextBox>
                                        <span class="style1">*</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtBirthday" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                户籍地：
                            </td>
                            <td>
                                <asp:TextBox ID="txtLocation" runat="server" Width="173px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                户籍地编码：
                            </td>
                            <td>
                                <asp:TextBox ID="txtLocationCode" runat="server" Width="173px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                配偶姓名：
                            </td>
                            <td>
                                <asp:TextBox ID="txtPoName" runat="server" MaxLength="32"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                配偶身份证号：
                            </td>
                            <td>
                                <asp:TextBox ID="txtPoldcode" runat="server" MaxLength="18"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                独生子女证编号：
                            </td>
                            <td>
                                <asp:TextBox ID="txtOneChildCardCode" runat="server" MaxLength="20"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                子女出生日期：
                            </td>
                            <td>
                                <asp:TextBox ID="txtChildBirthday"
                                 onClick="WdatePicker()"  runat="server"></asp:TextBox>
                                <span class="style1">*</span><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtChildBirthday" ErrorMessage="不能为空">
                                    </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                子女性别：
                            </td>
                            <td>
                                <asp:DropDownList ID="dplChildSex" runat="server">
                                    <asp:ListItem Value="0">未知</asp:ListItem>
                                    <asp:ListItem Value="1">男</asp:ListItem>
                                    <asp:ListItem Value="2">女</asp:ListItem>
                                    <asp:ListItem Value="3">未说明</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                发放日期：
                            </td>
                            <td>
                                <asp:TextBox ID="txtPaydate"  onClick="WdatePicker()"  runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                发放金额：
                            </td>
                            <td>
                                <asp:TextBox ID="txtPaynum" runat="server" BackColor="#669999" ReadOnly="True" 
                                    MaxLength="8">0</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                是否参加养老保险补贴：
                            </td>
                            <td>
                                <asp:CheckBox ID="chkIsOldInsure" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                是否落实：
                            </td>
                            <td>
                                <asp:CheckBox ID="chkLushi" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                落实日期：
                            </td>
                            <td>
                                <asp:TextBox ID="txtLushiDate"  onClick="WdatePicker()"  runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                未审核：
                            </td>
                            <td>
                                <asp:DropDownList ID="dplShenghe" runat="server">
                                    <asp:ListItem Value="0">未审核</asp:ListItem>
                                    <asp:ListItem Value="1">审核通过</asp:ListItem>
                                    <asp:ListItem Value="2">审核未通过</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                审核人：
                            </td>
                            <td>
                                <asp:TextBox ID="txtShengheRen" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                审核日期：
                            </td>
                            <td>
                                <asp:TextBox ID="txtShenghedate"  onClick="WdatePicker()"  runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                审核未通过原因：
                            </td>
                            <td>
                                <asp:TextBox ID="txtShengheNoReason" runat="server" Width="246px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                户编号：
                            </td>
                            <td>
                                <asp:TextBox ID="txtfamilyCode" runat="server" MaxLength="8" Width="179px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                单位名称：
                            </td>
                            <td>
                                <asp:TextBox ID="txtUnitName" runat="server" Width="247px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                单位性质：
                            </td>
                            <td>
                                <asp:DropDownList ID="dplUnitXingzhi" runat="server">
                                    <asp:ListItem Value="0">行政事业单位</asp:ListItem>
                                    <asp:ListItem Value="1">其他</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                       
                     
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnAdd" runat="server" Text="添加" Width="113px" OnClick="btnAdd_Click" />
                                &nbsp;
                                <asp:Button ID="btnCancel" runat="server" Text="返回" Width="104px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
