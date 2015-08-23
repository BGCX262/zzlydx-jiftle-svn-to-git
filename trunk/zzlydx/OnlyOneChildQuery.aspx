<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlyOneChildQuery.aspx.cs" Inherits="zzlydx.OnlyOneChildQuery_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    Width="100%" 
                    ForeColor="Black" HorizontalAlign="Center" 
                    Font-Size="12px" Font-Underline="False" AllowSorting="True" 
                    AllowPaging="True" DataSourceID="SqlDataSource1" >

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Wrap="False" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Wrap="False" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                 <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
            <asp:BoundField DataField="身份证号" HeaderText="身份证号" SortExpression="身份证号" />
            <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
            <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
            <asp:BoundField DataField="户籍地" HeaderText="户籍地" SortExpression="户籍地" />
            <asp:BoundField DataField="户籍地代码" HeaderText="户籍地代码" SortExpression="户籍地代码" />
            <asp:BoundField DataField="配偶姓名" HeaderText="配偶姓名" SortExpression="配偶姓名" />
            <asp:BoundField DataField="配偶身份证号" HeaderText="配偶身份证号" 
                SortExpression="配偶身份证号" />
            <asp:BoundField DataField="独生子女证编号" HeaderText="独生子女证编号" 
                SortExpression="独生子女证编号" />
            <asp:BoundField DataField="孩子出生日期" HeaderText="孩子出生日期" 
                SortExpression="孩子出生日期" />
            <asp:BoundField DataField="孩子性别" HeaderText="孩子性别" SortExpression="孩子性别" />
            <asp:BoundField DataField="发放日期" HeaderText="发放日期" SortExpression="发放日期" />
            <asp:BoundField DataField="发放日期1" HeaderText="发放日期1" SortExpression="发放日期1" />
            <asp:BoundField DataField="是否参加养老保险" HeaderText="是否参加养老保险" 
                SortExpression="是否参加养老保险" />
            <asp:BoundField DataField="落实情况" HeaderText="落实情况" SortExpression="落实情况" />
            <asp:BoundField DataField="落实日期" HeaderText="落实日期" SortExpression="落实日期" />
            <asp:BoundField DataField="审核情况" HeaderText="审核情况" SortExpression="审核情况" />
            <asp:BoundField DataField="审核人" HeaderText="审核人" SortExpression="审核人" />
            <asp:BoundField DataField="审核日期" HeaderText="审核日期" SortExpression="审核日期" />
            <asp:BoundField DataField="审核不通过原因" HeaderText="审核不通过原因" 
                SortExpression="审核不通过原因" />
            <asp:BoundField DataField="户编号" HeaderText="户编号" SortExpression="户编号" />
            <asp:BoundField DataField="单位名称" HeaderText="单位名称" SortExpression="单位名称" />
            <asp:BoundField DataField="单位性质" HeaderText="单位性质" SortExpression="单位性质" />
            <asp:BoundField DataField="操作员" HeaderText="操作员" SortExpression="操作员" />
            <asp:BoundField DataField="录入时间" HeaderText="录入时间" SortExpression="录入时间" />
            </Columns>
           
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT name AS 姓名, idcode AS 身份证号, sex AS 性别, birthday AS 出生日期, location AS 户籍地, locationcode AS 户籍地代码, poname AS 配偶姓名, poldcode AS 配偶身份证号, onechildcardcode AS 独生子女证编号, childbirthday AS 孩子出生日期, childsex AS 孩子性别, paydate AS 发放日期, paynum AS 发放日期, isoldinsure AS 是否参加养老保险, lushi AS 落实情况, lushidate AS 落实日期, shenghe AS 审核情况, shengheren AS 审核人, shenghedate AS 审核日期, shenghenoreason AS 审核不通过原因, familycode AS 户编号, unitname AS 单位名称, unitxingzhi AS 单位性质, username AS 操作员, inputdate AS 录入时间 FROM dsznfmjlb"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
