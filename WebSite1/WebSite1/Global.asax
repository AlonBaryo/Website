<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
       Application["counter"] = 0;

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
      Session["user"] = "אורח";
     Session["admin"] = "no";
     Application["counter"] = (int)Application["counter"] + 1;

    }

    void Session_End(object sender, EventArgs e) 
    {
        Session["user"] = "אורח";
        Session["admin"] = "no";
    }
       
</script>
