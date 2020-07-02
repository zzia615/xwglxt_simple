using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xwglxt
{
    public partial class Xgmm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebData.CurrentMenu = "修改密码";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //页面数据校验通过
            if (Page.IsValid)
            {
                //获取页面输入数据
                string s_xmm = xmm.Text;
                string s_xmm1 = xmm1.Text;
                //两次密码输入不一致，提示错误
                if (s_xmm != s_xmm1)
                {
                    Response.Write("<script>alert('两次密码输入不一致');</script>");
                    return;
                }
                //执行修改密码的操作
                string s_sql = string.Format("update yhxx set yhmm=N'{1}' where yhzh=N'{0}'",
                    Session[WebData.登录用户],s_xmm);
                new SqlServerHelper().ExecuteSql(s_sql);
                //提示用户密码输入成功
                Response.Write("<script>alert('修改密码成功');window.location.href='Xgmm.aspx';</script>");
            }
        }
    }
}