<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script lang="javascript" type="text/javascript">
        function Clear() {
            document.getElementById("mUsername").style.visibility = "hidden";
            document.getElementById("mPassword").style.visibility = "hidden";
        }
        function CheckForm() {
            var flag = true;
            var n = document.getElementById("Username").value;
            var p = document.getElementById("Password").value;

            if (n.length == 0) {
                document.getElementById("mUsername").value = "You must enter a username";
                document.getElementById("mUsername").style.visibility = "visible";
                flag = false;
            }
            else
                document.getElementById("mUsername").style.visibility = "hidden";

            if (p.length == 0) {
                document.getElementById("mPassword").value = "You must enter a password";
                document.getElementById("mPassword").style.visibility = "visible";
                flag = false;
            }
            else
                document.getElementById("mPassword").style.visibility = "hidden";

            return flag;

        }
        </script>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" / >
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table border="0">
            <tr>
                <td><h2>UserName:</h2></td>
                <td><input type="text" id="Username" name="Username" style="35" /></td>
                <td><input type="text" name="mUsername" id="mUsername" style="visibility:hidden;" disabled="disabled" /> </td>
                </tr>
            <tr>
                <td><h2>Password:</h2></td>
                <td><input type="Password" id="Password" name="Password" /></td>
                <td><input type="text" id="mPassword" name="mPassword" style="visibility:hidden;" disabled="disabled" /> </td>
                </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Submit" /></td>
                <td><input type="reset" value="Reset"/></td>


</asp:Content>

