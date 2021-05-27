using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Users u = new Users();

        if (IsPostBack)
        {
            bool UN = u.Register(Request.Form["UserName"], Request.Form["FName"],
                Request.Form["LName"], Request.Form["Password"], Request.Form["Password2"],
                 Request.Form["By"], Request.Form["Bm"], Request.Form["Bd"],
                Request.Form["Gender"]);
            if (UN)
            {
                Session["user"] = Request.Form["userName"];
                Response.Write("<script>alert('Register successful');</script>");
                Server.Transfer("HomePage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Name is already taken');</script>");
            }
        }
    }
}