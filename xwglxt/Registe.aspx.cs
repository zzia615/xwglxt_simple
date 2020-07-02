using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xwglxt
{
    public partial class Registe : System.Web.UI.Page
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
                //获取姓名
                string yhxm = name_cn.Text;
                //获取密码
                string yhmm = pwd.Text;
                string sql = string.Format("insert into yhxx(yhzh,yhxm,yhmm)" +
                    "values(N'{0}',N'{1}',N'{2}')", yhzh, yhxm, yhmm);
                new SqlServerHelper().ExecuteSql(sql);
                
                //提示用户账户密码错误
                Response.Write("<script>alert('注册成功');window.location.href='Login.aspx';</script>");
            }
        }
    }
}