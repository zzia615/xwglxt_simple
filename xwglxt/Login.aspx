﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="xwglxt.Login" %>

<!doctype html>
<html lang="zh-cn">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Content/bootstrap.css">

    <title><%=WebData.SystemTitle %> - 用户登录</title>
    <style>
        html,body{
            padding:0;
            margin:0;
            background:#0e5198;
        }
    </style>
  </head>
  <body>
    <div class="card mt-3 offset-md-3 col-md-6" style="background:rgba(240, 240, 240, 0.89);">
        <div class="row no-gutters">
            <div class="col-md-7">
                 <img src="img/login-left.jpg" class="card-img" alt="新闻管理系统" style="height:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body">
                    <h5 class="card-title"><%=WebData.SystemTitle %></h5>
                    <h5 class="card-title">用户登录（北京）</h5>
                    
                    <form runat="server">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="账号" for="name"></asp:Label>
                            <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="账号不能为空" ControlToValidate="name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="密码" for="pwd"></asp:Label>
                            <asp:TextBox ID="pwd" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" ControlToValidate="pwd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="类别" for="lb"></asp:Label>
                            <select id="lb" runat="server" class="form-control">
                                <option value="普通用户">普通用户</option>
                                <option value="管理员">管理员</option>
                            </select>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="类别不能为空" ControlToValidate="lb" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="登录系统" OnClick="Button1_Click" />
                        <a href="Registe.aspx" class="btn btn-light">注册新用户</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/popper.js"></script>
    <script src="Scripts/bootstrap.js"></script>
  </body>
</html>
