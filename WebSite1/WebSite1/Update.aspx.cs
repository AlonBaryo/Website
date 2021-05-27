using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class Update1 : System.Web.UI.Page
{
    
    
    protected string FirstName = "";
    protected string LastName = "";
    protected string Email1 = "";
    protected string user = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        Users u = new Users();
        if (!IsPostBack)
        {
            ds = u.ShowUser(Session["user"].ToString());
            user = Session["user"].ToString();
            FirstName = ds.Tables[0].Rows[0]["FN"].ToString();
            LastName = ds.Tables[0].Rows[0]["LN"].ToString();
            Email1 = ds.Tables[0].Rows[0]["Email1"].ToString();

        }
        else
        {
            bool Updated = u.UpdateUser(
            Request.Form["Password"],
            Request.Form["FName"],
            Request.Form["LName"],
            Request.Form["Email"],
            Request.Form["By"],
            Request.Form["Bm"],
            Request.Form["Bd"],
            Request.Form["Gender"],
            Session["user"].ToString());
            if (Updated)
            {
                Response.Write("<script>alert('Details Updated Seccessful!');</script>");

                Server.Transfer("HomePage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Details weren't Updated!');</script>");
            }

        }
    }
}