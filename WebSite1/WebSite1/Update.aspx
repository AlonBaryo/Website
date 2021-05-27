<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script lang="javascript" type="text/javascript">
        function Clear() {
            document.getElementById("mFName").style.visibility = "hidden";
            document.getElementById("mLName").style.visibility = "hidden";
            document.getElementById("mPassword").style.visibility = "hidden";
            document.getElementById("mPassword2").style.visibility = "hidden";
            document.getElementById("mEmail").style.visibility = "hidden";
            document.getElementById("mGender").style.visibility = "hidden";
            document.getElementById("birth").style.visibility = "hidden";
            
        }

          function CheckForm() {

            
            var flag = true;
            var flagRadio = false;
            var status;
            var p = document.getElementById("By");
            var j = document.getElementById("Bm");
            var q = document.getElementById("Bd");
            var h = document.getElementById("Password").value;
            var vpass = document.getElementById("Password2").value;
           
              var e = document.getElementById("Email").value;
              var m = document.getElementById("FName").value;
              var z = document.getElementById("LName").value;
              var g = document.getElementsByName("Gender");
            
            ////////////////////password//////////////////////////////
            if (h.length == 0) {
                document.getElementById("mPassword").value = "Enter a password";
                document.getElementById("mPassword").style.visi
                bility = "visible";
                flag = false;
            }
            else {
                if (h.length < 2 || h.length > 15) {
                    document.getElementById("mPassword").value = "2-15 letters";
                    document.getElementById("mPassword").style.visibility = "visible";
                    flag = false;
                }
                else {
                    status = false;
                    for (var i = 0; i < h.length; i++) {
                        if (h.charAt[i] == " ")
                            status = true;
                    }
                    if (status == true) {
                        document.getElementById("mPassword").value = "No spaces";
                        document.getElementById("mPassword").style.visibility = "visible";
                        flag = false;
                    }
                    else
                        document.getElementById("mPassword").style.visibility = "hidden";
                }
            } 
            /////////////////////password///////////////////////
            ///////////////////passwrod verification///////////////////////////
            if (vpass == 0) {
                document.getElementById("mPassword2").value = "Enter a password";
                document.getElementById("mPassword2").style.visibility = "visible";
            }
            else
            {
                if (vpass != h)
                {
                    document.getElementById("mPassword2").value = "your passwords dont match";
                    document.getElementById("mPassword2").style.visibility = "visible";
                    flag = false;
                }
                else
                    document.getElementById("mPassword2").style.visibility = "hidden";
            }         
             ///////////////////Private name////////////////////////////

            if (m.length == 0) {
                document.getElementById("mFName").value = "Enter your name";
                document.getElementById("mFName").style.visibility = "visible";
                flag = false;
            }
            else
            { 
                if (m.length < 2) {
                    document.getElementById("mFName").value = "enter your real name";
                    document.getElementById("mFName").style.visibility = "visible";
                    flag = false;
                }
                else
                {
                    status = false;
                    for (var i = 0; i < m.length; i++) {

                        if (m.charAt[i] == "")
                            status = true;
                    }
                    if (status == true) {
                        document.getElementById("mFName").value = "no spaces";
                        document.getElementById("mFName").style.visibility = "visible";
                        flag = false;
                    }
                    else
                        document.getElementById("mFName").style.visibility = "hidden";
                }
            }
             /////////////////////////////////////////////////
            if (z.length == 0) {
                document.getElementById("mLName").value = "Enter your name";
                document.getElementById("mLName").style.visibility = "visible";
                flag = false;
            }
            else {
                if (z.length < 2) {
                    document.getElementById("mLName").value = "enter your real name";
                    document.getElementById("mLName").style.visibility = "visible";
                    flag = false;
                }
                else {
                    status = false;
                    for (var i = 0; i < z.length; i++) {

                        if (z.charAt[i] == " ")
                            status = true;
                    }
                    if (status == true) {
                        document.getElementById("mLName").value = "no spaces";
                        document.getElementById("mLName").style.visibility = "visible";
                        flag = false;
                    }
                    else
                        document.getElementById("mLName").style.visibility = "hidden";
                }
            }
            /////////////////////////email check///////////////////////
            if (e.length == 0) {
                document.getElementById("mEmail").value = "Enter email";
                document.getElementById("mEmail").style.visibility = "visible";
                flag = false;
            }
            else {
                status = false;
                for (var i = 0; i < e.length; i++) {
                    if (e.charAt[i] == " ")
                        status = true;
                }
                if (status == true) {
                    document.getElementById("mEmail").value = "no spaces";
                    document.getElementById("mEmail").style.visibility = "visible";
                    flag = false;
                }
                else {
                    if (e.indexOf("@") < 0) {
                        document.getElementById("mEmail").value = "there must be a @";
                        document.getElementById("mEmail").style.visibility = "visible";
                        flag = false
                    }
                    else {
                        if ((e.indexOf("@")< 2 || (e.lastIndexOf('.') < e.indexOf('@') + 3))){
                            document.getElementById("mEmail").value = "enter 2 letters before @ and atleast 3 letters between @ to @";
                            document.getElementById("mEmail").style.visibility = "visible";
                            flag = false;
                        }
                        else {
                            if (e.indexOf("@") != e.lastIndexOf("@")) {
                                document.getElementById("mEmail").value = "no more than one @";
                                document.getElementById("mEmail").style.visibility = "visible";
                                flag = false;
                            }
                            else {
                                if (e.indexOf(".") != e.lastIndexOf(".")) {
                                    document.getElementById("mEmail").style.visibility = "visible";
                                    flag = false;
                                }
                                else {
                                    if (e.length - 1 == e.lastIndexOf(".")) {
                                        document.getElementById("mEmail").value = "a dot cant be the last letter";
                                        document.getElementById("mEmail").style.visibility = "visible";
                                        flag = false;
                                    }
                                    else
                                        document.getElementById("mEmail").style.visibility = "hidden";
                                }
                            }
                        }
                    }
                }
            }
            ////////////////////////////////////email check///////////////////////////////////
            /////////////////////////////////////////Birth year,month,day/////////////////////////////////////////
            if (p.selectedIndex == 0) {
                document.getElementById("birth").value = "choose a year";
                document.getElementById("birth").style.visibility = "visible";
                flag = false;
            }
            else {
                if (j.selectedIndex == 0) {
                    document.getElementById("birth").value = "choose a month";
                    document.getElementById("birth").style.visibility = "visible";
                    flag = false;
                }
                else {
                    if (q.selectedIndex == 0) {
                        document.getElementById("birth").value = "choose a day";
                        document.getElementById("birth").style.visibility = "visible";
                        flag = false;
                    }
                    else
                        document.getElementById("birth").style.visibility = "hidden"
                }
            } 
            //////////////////////////////////////gender check/////////////////////////////////////////////
            for (var i = 0; i < g.length; i++) {
                if (g[i].checked == true)
                    flagRadio = true;
            }  
            if (flagRadio == false) {
                document.getElementById("mGender").value = "choose your gender"
                document.getElementById("mGender").style.visibility = "visible";
                flag = false;
            }
            else
                document.getElementById("mGender").style.visibility = "hidden";
            return flag;
            ////////////////////////////////////////////////////////////////////////////////////////
        }            
        
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <table width="30%" align="center">
       
       
        <tr>
            <td>Username</td>
            <td><input type="text" id="Username" name="Username"  size="15" disabled="disabled" value="<%Response.Write(user);%>"/></td>
             
        </tr>
        <tr>
                <td>Password</td>
                 <td><input type="password" id="Password" name="Password"  size="15" /></td>
             <td><input type="text" id="mPassword" name="mPassword" style="visibility:hidden;font-weight:bold;" disabled="disabled"/></td>
                </tr>
        <tr>
            <td>Password Verification</td>
            <td><input type="password"  id="Password2" name="Password2"  size="15" /></td>
             <td><input type="text" id="mPassword2" name="mPassword2" style="visibility:hidden;font-weight:bold;" disabled="disabled"/></td>
            </tr>
         <tr>
            <td>First Name</td>
            <td><input type="text" id="FName" name="FName"  size="15" value="<%Response.Write(FirstName);%>" /></td>
             <td><input type="text" id="mFName" name="mFName" style="visibility:hidden;font-weight:bold;" disabled="disabled"/></td>
         </tr>
        <tr>
            <td>Last Name</td>
           <td><input type="text" id="LName" name="LName"  size="15" value="<%Response.Write(LastName);%>"/></td>
             <td><input type="text" id="mLName" name="mLName" style="visibility:hidden;font-weight:bold;" disabled="disabled"/></td>
            </tr>
         <tr>
            <td>Email</td>
            <td><input type="text" id="Email" name="Email"  size="15" value="<%Response.Write(Email1);%>"/></td>
             <td><input type="text" id="mEmail" name="mEmail" style="visibility:hidden;font-weight:bold;" disabled="disabled"/></td>
            </tr>
        <tr>
            <td style ="color:black" class="auto-style8">Birth date</td>
            
            <td>
            <select id="By" name="By">
                <option value ="1">Year</option>
                <option value ="2019">2019</option>
                <option value ="2018">2018</option>
                <option value ="2017">2017</option>
                <option value ="2016">2016</option>
                <option value ="2015">2015</option>
                <option value ="2014">2014</option>
                <option value ="2013">2013</option>
                <option value ="2012">2012</option>
                <option value ="2011">2011</option>
                <option value ="2010">2010</option>
                <option value ="2009">2009</option>
                <option value ="2008">2008</option>
                <option value ="2007">2007</option>
                <option value ="2006">2006</option>
                <option value ="2005">2005</option>
                <option value ="2004">2004</option>
                <option value ="2003">2003</option>
                <option value ="2002">2002</option>
                <option value ="2001">2001</option>
                <option value ="2000">2000</option>
                <option value ="1999">1999</option>
                <option value ="1998">1998</option>
                <option value ="1997">1997</option>
                <option value ="1996">1996</option>
                <option value ="1995">1995</option>
                <option value ="1994">1994</option>
                <option value ="1993">1993</option>
                <option value ="1992">1992</option>
                <option value ="1991">1991</option>
                <option value ="1990">1990</option>
                <option value ="1989">1989</option>
                <option value ="1988">1988</option>
                <option value ="1987">1987</option>
                <option value ="1986">1986</option>
                <option value ="1985">1985</option>
                <option value ="1984">1984</option>
                <option value ="1983">1983</option>
                <option value ="1982">1982</option>
                <option value ="1981">1981</option>
                <option value ="1980">1980</option>
                <option value ="1979">1979</option>
                <option value ="1978">1978</option>
                <option value ="1977">1977</option>
                <option value ="1976">1976</option>
                </select>
                
            
            <select id="Bm" name="Bm">
                <option value="0">Month</option>
                <option value="1">January</option>
                <option value="2">February</option>
                <option value="3">March</option>
                <option value="4">April</option>
                <option value="5">May</option>
                <option value="6">June</option>
                <option value="7">July</option>
                <option value="8">August</option>
                <option value="9">September</option>
                <option value="10">October</option>
                <option value="11">November</option>
                <option value="12">December</option>
                </select>
                
            
            <select id="Bd" name="Bd">
                <option value="0">Day</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
                </select>
                </td>
        </tr>
        <tr>
            <td style="color:black" class="auto-style2"><input type="text" name="birth" id="birth" style="visibility:hidden;font-weight:bold;" disabled="disabled" class="auto-style5"></td>
                    </tr>
        <tr>
          <td style="color:black" class="auto-style8">Gender</td>
            <td class="auto-style3"><input type="radio" name="Gender" value="M"/>Male <input type="radio" name="Gender" value="F"/>Female<class="auto-style2"><input type="text" name="mGender" id="mGender" style="visibility:hidden;font-weight:bold;" disabled="disabled" class="auto-style5"/></td>
           
            </tr>
        <tr>
            <td style="color:black" class="auto-style8"></td>
            <td class="auto-style3"></td>
           <td class="auto-style2"><input type="submit" value="Send" /></td>
            <td><input type="reset" value="Reset"/></td>
    </table>
        </center>
</asp:Content>

