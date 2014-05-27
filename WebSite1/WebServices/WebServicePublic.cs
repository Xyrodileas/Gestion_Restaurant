using System;
using System.Collections;
using System.Globalization;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;
using System.Data;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.Web.Security;
using System.Diagnostics;
using System.Configuration;
using System.IO;
using System.Web.Configuration;
using MySql.Data.MySqlClient;

/// <summary>
/// WebService plubic tracking
/// </summary>
/// 
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
public class WSBackEndPublic : System.Web.Services.WebService
{
    public WSBackEndPublic()
    {

    }

    [WebMethod(EnableSession = true)]
    public string insertUser(string name, string password, string email, string adress, string birthDate)
    {
        String connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        MySqlConnection con = new MySqlConnection(connectionString);
        String strSQL = "Insert into users " + name + ", " + password + ", " + email + ", " + adress + ", " + birthDate;
        MySqlCommand cmd = new MySqlCommand(strSQL);
        cmd.ExecuteNonQuery();

        return name;
    }

}//END of WSBackEndPublic