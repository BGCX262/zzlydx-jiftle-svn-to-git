<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zzlydx.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"> 
</head>
<body>
        <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/OnlyOneChild.aspx">录入</asp:HyperLink>
        <br/>
        <asp:HyperLink
            ID="HyperLink2" runat="server" NavigateUrl="~/OnlyOneChildQuery.aspx">查询</asp:HyperLink>
    </div>
</body>
</html>