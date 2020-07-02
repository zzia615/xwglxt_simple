using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class WebData
{
    public const string 管理员 = "管理员";
    public const string 普通用户 = "普通用户";
    public const string 登录用户 = "LoginUser";
    public const string 登录用户名 = "LoginUserName";
    public const string 登录用户类别 = "LoginUserType";
    /// <summary>
    /// 登录用户
    /// </summary>
    public static string LoginUser { get; set; }
    /// <summary>
    /// 登录用户名
    /// </summary>
    public static string LoginUserName { get; set; }
    /// <summary>
    /// 登录用户类别
    /// </summary>
    public static string LoginUserType{ get; set; }
    /// <summary>
    /// 系统名称
    /// </summary>
    public const string SystemTitle = "新闻管理系统";
    /// <summary>
    /// 当前打开的菜单名
    /// </summary>
    public static string CurrentMenu { get; set; }
    /// <summary>
    /// 系统菜单
    /// </summary>
    public static Dictionary<string,string> SysMenu
    {
        get
        {
            Dictionary<string, string> _menu = new Dictionary<string, string>();
            _menu.Add("首页", "Default.aspx");
            _menu.Add("新闻管理", "Xwxx.aspx");
            _menu.Add("修改密码", "Xgmm.aspx");
            return _menu;
        }
    }
}