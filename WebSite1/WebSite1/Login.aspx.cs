 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Users u = new Users();
            string x = Request.Form["userName"];
            string y = Request.Form["Password"];
            string Username = u.LogIn(x, y);
            if (x == "Alon")
            {
                Session["user"] = Request.Form["userName"];
                Session["admin"] = "yes";
                Response.Write("<script>alert('Hello, Sir.');</script>");
                Server.Transfer("HomePage.aspx");
            }
            if (Username != "")
            {
                Session["user"] = Request.Form["userName"];
                Response.Write("<script>alert('Hello');</script>");
                Server.Transfer("HomePage.aspx");

            }
            else
            {
                Response.Write("<script>alert('Username or password are incorrect');</script>");
            }
        }
    }
}