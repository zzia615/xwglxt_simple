using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xwglxt
{
    public partial class XwxxAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            WebData.CurrentMenu = "新增新闻";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //获取页面数据
                string s_bt = bt.Text;
                string s_nr = nr.Text;
                string s_fl = fl.Text;
                string s_zz = zz.Text;
                //新增用户
                string sql = string.Format("insert into xwxx(bt,fl,nr,zz)" +
                    "values(N'{0}',N'{1}',N'{2}',N'{3}')",s_bt,s_fl,s_nr,s_zz);
                new SqlServerHelper().ExecuteSql(sql);
                //提示
                Response.Write("<script>alert('新增新闻成功');window.location.href='Xwxx.aspx';</script>");

            }
        }
    }
}