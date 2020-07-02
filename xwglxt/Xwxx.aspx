<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Xwxx.aspx.cs" Inherits="ksbmglxt.Xwxx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-inline mt-2">
    <select class="form-control" runat="server" id="tjlb">
        <option value="bt">标题</option>
        <option value="fl">分类</option>
        <option value="zz">作者</option>
    </select>
    
    <asp:TextBox ID="tjnr" runat="server" placeholder="请输入查询内容" CssClass="form-control ml-1"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="查询" CssClass="btn btn-primary ml-1" OnClick="Button1_Click"/>
    <a id="xwAdd" runat="server" href="XwxxAdd.aspx" class="btn btn-primary ml-1">新增新闻</a>
</div>
<div class="mt-2">
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="border-color:#efefef;" EmptyDataText="没有查询到数据">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" Visible="false" ReadOnly="True" SortExpression="id" InsertVisible="False" />
            <asp:BoundField DataField="bt" HeaderText="标题" SortExpression="bt" />
            <asp:BoundField DataField="fl" HeaderText="分类" SortExpression="fl" />
            <asp:BoundField DataField="nr" HeaderText="内容" SortExpression="nr" />
            <asp:BoundField DataField="zz" HeaderText="作者" SortExpression="zz" />
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"XwxxEdit.aspx?id="+Eval("id") %>' Text="编辑" CssClass="btn btn-info btn-sm"></asp:HyperLink>
                    <%--<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="" Text="删除"></asp:HyperLink>--%>
                    <a class="btn btn-danger btn-sm" href="javascript:void(0);" onclick="if(confirm('确定删除新闻信息？')){window.location.href='XwxxDel.aspx?id=<%# Eval("id") %>';}" >删除</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xwglxtConStr %>" SelectCommand="SELECT * FROM [xwxx]"></asp:SqlDataSource>
</div>
</asp:Content>
