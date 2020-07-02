using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xwglxt
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //页面验证通过
            if (Page.IsValid)
            {
                //获取账户
                string yhzh = name.Text;
                //获取密码
                string yhmm = pwd.Text;
                //获取类别
                string yhlb = lb.Value;
                //调用登录验证方法
                string sql = string.Format("select * from yhxx where yhzh=N'{0}' and " +
                    "yhmm=N'{1}' and yhlb='{2}'",yhzh,yhmm, yhlb);
                DataTable table = new SqlServerHelper().QuerySqlDataTable(sql);
                //如果ret返回true，则验证通过，允许用户登录本系统。
                //如果ret返回false，则验证不通过，不允许用户登录本系统
                if (table.Count()>0)
                {
                    WebData.LoginUser = yhzh;
                    WebData.LoginUserName = table.Rows[0]["yhxm"].AsString();
                    WebData.LoginUserType = yhlb;

                    //将登录信息保存在会话里
                    Session[WebData.登录用户] = WebData.LoginUser;
                    Session[WebData.登录用户名] = WebData.LoginUserName;
                    Session[WebData.登录用户类别] = WebData.LoginUserType;
                    //提示用户登录成功，并跳转到主页面
                    Response.Write("<script>alert('用户登录成功');window.location.href='Default.aspx'</script>");
                }
                else
                {
                    //提示用户账户密码错误
                    Response.Write("<script>alert('用户名密码错误，请重新输入');</script>");
                }
            }
        }
    }
}