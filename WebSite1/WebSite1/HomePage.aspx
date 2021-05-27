<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" / >
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <marquee behavior="scroll" direction="left" scrollamount="7"</marquee>
        <img src="/Images/gif.gif" width="125" height="82" alt="flying bat" />
        <img src="/Images/pic2.gif" width="125" height="82" alt="flying bat" />
    <p>
    <a href="https://static.fie.org/uploads/23/119683-Technical%20rules%20ang%20%281%29.pdf"><h1>Click here to see the official rules of fencing</h1></a>
        <a href="https://en.wikipedia.org/wiki/Fencing"><h1>Click here to see the history of fencing</h1></a>
        <a href="https://www.eurosport.com/fencing/"><h1>Click here to see news about fencing</h1></a>
        </p>
    </marquee>
    </asp:Content>