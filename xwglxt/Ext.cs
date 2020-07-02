﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

public static class Ext
{
    public static string AsString(this object obj)
    {
        if (obj == null) return string.Empty;
        return obj.ToString();
    }
    public static string AsD10(this object obj)
    {
        string d = obj.AsString();
        DateTime dd;
        DateTime.TryParse(d, out dd);
        return dd.ToString("yyyy/MM/dd");
    }
    public static string AsFormat(this string str,params object[] obj)
    {
        return string.Format(str, obj);
    }

    public static int Count(this DataTable table)
    {
        if (table == null) return 0;
        return table.Rows.Count;
    }
}