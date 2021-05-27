using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Friends : System.Web.UI.Page
{        
    public DataSet ds = new DataSet();
    Users u = new Users();

    protected void Page_Load(object sender, EventArgs e)
    {
        ds = u.Friends();
    }

    public void ShowList()
    {
        Response.Write("<table border='1'> <tr>");
        Response.Write("<td> Username </td>  <td> First Name </td>");
        Response.Write("<td> Last Name </td> <td> Email </td>");
        Response.Write("<td> Birth Year </td> <td> Birth Month </td>");
        Response.Write("<td> Birth Day </td>");
        Response.Write("<td> Gender </td> </tr>");

        foreach (DataRow row in ds.Tables[0].Rows)
        {
            Response.Write("<tr>");
            Response.Write("<td>" + row["Username"].ToString() + "</td>");
            Response.Write("<td>" + row["FN"].ToString() + "</td>");
            Response.Write("<td>" + row["LN"].ToString() + "</td>");
            Response.Write("<td>" + row["Email1"].ToString() + "</td>");
            Response.Write("<td>" + row["Byear"].ToString() + "</td>");
            Response.Write("<td>" + row["Bmonth"].ToString() + "</td>");
            Response.Write("<td>" + row["Bday"].ToString() + "</td>");
            Response.Write("<td>" + row["Gender"].ToString() + "</td>");
            Response.Write("</tr>");
        }
        Response.Write("</table>");
    }
}
