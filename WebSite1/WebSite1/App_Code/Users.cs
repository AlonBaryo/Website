using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{
    private string userName;
    private string FN;
    private string LN;
    private string Password;
    private string Email;
    private string Byear;
    private string Bmonth;
    private string Bday;
    private string Gender;

    public OleDbConnection objCon =
        new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" +
            HttpContext.Current.Server.MapPath("~") + @"\App_Data\Database.accdb" + "");
    public Users()
    {
        objCon.Open();
    }
    public string LogIn(string Username, string Password)
    {
        string userName = "";
        OleDbParameter objParam = new OleDbParameter();
        OleDbCommand objCmd = new OleDbCommand("Login", objCon);
        objCmd.CommandType = CommandType.StoredProcedure;

        objParam = new OleDbParameter("@userName", OleDbType.Char);
        objParam.Value = Username;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Password", OleDbType.Char);
        objParam.Value = Password;
        objCmd.Parameters.Add(objParam);

        if (objCmd.ExecuteScalar() != null)
            userName = objCmd.ExecuteScalar().ToString();
        return userName;
    }
    public bool Register(string userName, string Password, string FName, string LName,
          string Email, string Bd, string Bm, string By, string Gender)
    {
        OleDbParameter objParaml = new OleDbParameter();
        OleDbCommand objCmdl = new OleDbCommand("ExistUser", objCon);
        objCmdl.CommandType = CommandType.StoredProcedure;
        objParaml = new OleDbParameter("@userName", OleDbType.Char);
        objParaml.Value = userName;
        objCmdl.Parameters.Add(objParaml);

        if (objCmdl.ExecuteScalar() != null)
            return false;

        OleDbParameter objParam = new OleDbParameter();
        OleDbCommand objCmd = new OleDbCommand("RegisterUser", objCon);
        objCmd.CommandType = CommandType.StoredProcedure;

        objParam = new OleDbParameter("@userName", OleDbType.Char);
        objParam.Value = userName;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Password", OleDbType.Char);
        objParam.Value = Password;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@FN", OleDbType.Char);
        objParam.Value = FName;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@LN", OleDbType.Char);
        objParam.Value = LName;
        objCmd.Parameters.Add(objParam);

       

        objParam = new OleDbParameter("@Email1", OleDbType.Char);
        objParam.Value = Email;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Bday", OleDbType.Char);
        objParam.Value = Bd;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Bmonth", OleDbType.Char);
        objParam.Value = Bm;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Byear", OleDbType.Char);
        objParam.Value = By;
        objCmd.Parameters.Add(objParam);
 
        objParam = new OleDbParameter("@Gender", OleDbType.Char);
        objParam.Value = Gender;
        objCmd.Parameters.Add(objParam);

        objCmd.ExecuteNonQuery();

        return true;
    }
    public DataSet ShowUser(string userName)
    {
        DataSet ds = new DataSet();
        OleDbDataAdapter da = new OleDbDataAdapter("ShowUser", objCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;

        OleDbParameter objpPram = new OleDbParameter("userName", OleDbType.VarChar);

        objpPram.Value = userName;
        da.SelectCommand.Parameters.Add(objpPram);

        da.Fill(ds);
        return (ds);
    }
    public bool UpdateUser(string Password, string FName, string LName,
        string Email1, string By, string Bm, string Bd,
        string Gender, string user)
    {
        OleDbParameter objParam = new OleDbParameter();

        OleDbCommand objCmd = new OleDbCommand("UpdateUser", objCon);
        objCmd.CommandType = CommandType.StoredProcedure;

        objParam = new OleDbParameter("@Password", OleDbType.Char);
        objParam.Value = Password;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@FN", OleDbType.Char);
        objParam.Value = FName;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@LN", OleDbType.Char);
        objParam.Value = LName;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Email1", OleDbType.Char);
        objParam.Value = Email1;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Byear", OleDbType.Char);
        objParam.Value = By;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Bmonth", OleDbType.Char);
        objParam.Value = Bm;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Bday", OleDbType.Char);
        objParam.Value = Bd;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@Gender", OleDbType.Char);
        objParam.Value = Gender;
        objCmd.Parameters.Add(objParam);

        objParam = new OleDbParameter("@userName", OleDbType.Char);
        objParam.Value = user;
        objCmd.Parameters.Add(objParam);

        objCmd.ExecuteNonQuery();

        return true;
    }
    public DataSet Friends()
    {
        DataSet ds = new DataSet();
        OleDbDataAdapter da = new OleDbDataAdapter("friends", objCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;

        da.Fill(ds);
        return (ds);
    }
    public bool DeleteUser(string Username)
    {
        bool flag = false;
        OleDbParameter objParam = new OleDbParameter();
        OleDbCommand objCmd = new OleDbCommand("ExistUser", objCon);
        objCmd.CommandType = CommandType.StoredProcedure;

        objParam = new OleDbParameter("@UserName", OleDbType.Char);
        objParam.Value = Username;
        objCmd.Parameters.Add(objParam);
        if (objCmd.ExecuteScalar() != null)
        {
            
            OleDbParameter objparam = new OleDbParameter("@UserName", OleDbType.Char);
            objparam.Value = Username;
            
            OleDbCommand objcmd = new OleDbCommand("DeleteUser", objCon);
            objcmd.CommandType = CommandType.StoredProcedure;
            objcmd.Parameters.Add(objparam);
            objcmd.ExecuteScalar();
            flag = true;
        }
        return flag;
    }
   
}