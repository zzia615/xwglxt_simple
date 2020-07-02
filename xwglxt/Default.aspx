<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="xwglxt.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-2">
        <h2>欢迎登录【<%=WebData.SystemTitle %>】</h2>
        <h3>今天是【<%=DateTime.Now.ToString("yyyy年MM月dd日") %>】</h3>
    </div>
</asp:Content>
