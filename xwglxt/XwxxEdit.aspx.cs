using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xwglxt
{
    public partial class XwxxEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            WebData.CurrentMenu = "修改新闻";
            if (!IsPostBack)
            {
                string s_id = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(s_id))
                {
                    string sql = "select * from xwxx where id=" + s_id;
                    DataTable table = new SqlServerHelper().QuerySqlDataTable(sql);
                    if (table != null && table.Rows.Count > 0)
                    {
                        id.Text = table.Rows[0]["id"].AsString();
                        bt.Text = table.Rows[0]["bt"].AsString();
                        fl.Text = table.Rows[0]["fl"].AsString();
                        nr.Text = table.Rows[0]["nr"].AsString();
                        zz.Text = table.Rows[0]["zz"].AsString();
                    }
                    else
                    {
                        Response.Write("<script>alert('新增信息不存在');window.location.href='Xwxx.aspx';</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('新增信息不存在');window.location.href='Xwxx.aspx';</script>");
                }
            }
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
                string s_id = id.Text;
                //新增用户
                string sql = string.Format("update xwxx set bt=N'{0}',fl=N'{1}',nr=N'{2}',zz=N'{3}'" +
                    " where id={4}",s_bt,s_fl,s_nr,s_zz,s_id);
                new SqlServerHelper().ExecuteSql(sql);
                //提示
                Response.Write("<script>alert('修改新闻成功');window.location.href='Xwxx.aspx';</script>");

            }
        }
    }
}