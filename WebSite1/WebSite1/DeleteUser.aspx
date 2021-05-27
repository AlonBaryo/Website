<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteUser.aspx.cs" Inherits="DeleteUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" / >
      
         </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <% ShowList(); %>
        <table border="0">
            <tr>
                <td><h2>UserName:</h2></td>
                <td><input type="text" name="Username" id="Username" style="35"  /> </td>
                <td><input type="submit" style="35" value="submit"/></td>
                </tr>
            <tr>
                
    </center>
</asp:Content>
