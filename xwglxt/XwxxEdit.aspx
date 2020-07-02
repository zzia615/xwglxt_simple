<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="XwxxEdit.aspx.cs" Inherits="xwglxt.XwxxEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-group">
    <asp:Label ID="Label5" runat="server" Text="编码" for="id"></asp:Label>
    <asp:TextBox ID="id" runat="server" placeholder="请输入编码" CssClass="form-control" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="编码不能为空" ControlToValidate="id" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="Label1" runat="server" Text="标题" for="bt"></asp:Label>
    <asp:TextBox ID="bt" runat="server" placeholder="请输入标题" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="标题不能为空" ControlToValidate="bt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="Label2" runat="server" Text="分类" for="fl"></asp:Label>
    <asp:TextBox ID="fl" runat="server" placeholder="请输入分类" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="分类不能为空" ControlToValidate="fl" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="Label4" runat="server" Text="作者" for="zz"></asp:Label>
    <asp:TextBox ID="zz" runat="server" placeholder="请输入作者" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="作者不能为空" ControlToValidate="zz" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="Label3" runat="server" Text="内容" for="nr"></asp:Label>
    <asp:TextBox ID="nr" runat="server" placeholder="请输入内容" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="内容不能为空" ControlToValidate="nr" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<asp:Button ID="Button1" runat="server" Text="修改" CssClass="btn btn-primary" OnClick="Button1_Click"/>
<a href="Xwxx.aspx" class="btn btn-light ml-1">返回新闻管理</a>
</asp:Content>
