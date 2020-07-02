using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xwglxt
{
    public partial class XwxxDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s_id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(s_id))
            {
                new SqlServerHelper().ExecuteSql("delete from xwxx where id="+s_id);
                Response.Write("<script>alert('删除成功！');window.location.href='Xwxx.aspx';</script>");
                return;
            }
            Response.Write("<script>alert('删除不合法！');window.location.href='Xwxx.aspx';</script>");

        }
    }
}