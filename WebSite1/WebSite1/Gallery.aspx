<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" / >
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <table border="1">
        <tr>
            <td><img src="images/pic2.jpg" width="254" height="63"/>            </td>
            <td><img src="images/pic3.jpg" width="254" height="63"/>            </td>
            <td><img src="images/pic4.jpg" width="254" height="63"/>            </td>
        </tr>
         <tr>
            <td><img src="images/pic5.png" width="254" height="63"/>            </td>
            <td><img src="images/pic6.jfif" width="254" height="63"/>            </td>
            <td><img src="images/pic7.png" width="254" height="63"/>            </td> 
         </tr> 
         <tr>
            <td><img src="images/pic8.jfif" width="254" height="63"/>            </td>
            <td><img src="images/pic9.jfif" width="254" height="63"/>            </td>
            <td><img src="images/pic10.jpg" width="254" height="63"/>           </td>
         </tr>
    </table>
        </center>
</asp:Content>

