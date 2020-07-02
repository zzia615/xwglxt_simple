<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Xgmm.aspx.cs" Inherits="xwglxt.Xgmm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-group">
    <asp:Label ID="Label1" runat="server" Text="新密码" for="cwmc"></asp:Label>
    <asp:TextBox ID="xmm" TextMode="Password" runat="server" placeholder="请输入新密码" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="新密码不能为空" ControlToValidate="xmm" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="Label2" runat="server" Text="重复新密码" for="mxsfy"></asp:Label>
    <asp:TextBox ID="xmm1" TextMode="Password" runat="server" placeholder="请重复输入新密码" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="重复新密码不能为空" ControlToValidate="xmm1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<asp:Button ID="Button1" runat="server" Text="修改密码" CssClass="btn btn-primary" OnClick="Button1_Click"/>
</asp:Content>
