using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using Microsoft.AspNet.Membership.OpenAuth;

public partial class Account_Manage : System.Web.UI.Page
{
    protected string SuccessMessage
    {
        get;
        private set;
    }

    protected bool CanRemoveExternalLogins
    {
        get;
        private set;
    }

    protected void Page_Load()
    {
        if (!IsPostBack)
        {
            // Déterminer les sections à afficher
            var hasLocalPassword = OpenAuth.HasLocalPassword(User.Identity.Name);
            setPassword.Visible = !hasLocalPassword;
            changePassword.Visible = hasLocalPassword;

            CanRemoveExternalLogins = hasLocalPassword;

            // Afficher le message de réussite
            var message = Request.QueryString["m"];
            if (message != null)
            {
                // Enlever la chaîne de requête de l'action
                Form.Action = ResolveUrl("~/Account/Manage.aspx");

                SuccessMessage =
                    message == "ChangePwdSuccess" ? "Votre mot de passe a été modifié."
                    : message == "SetPwdSuccess" ? "Votre mot de passe a été défini."
                    : message == "RemoveLoginSuccess" ? "La connexion externe a été supprimée."
                    : message == "infoChangeSuccess" ? "Les informations ont été modifié"
                    : message == "infoChangeErr" ? "Les informations n'ont pas été modifié"
                    : String.Empty;
                successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
            }
        }
        
    }

    protected void setPassword_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            var result = OpenAuth.AddLocalPassword(User.Identity.Name, password.Text);
            if (result.IsSuccessful)
            {
                Response.Redirect("~/Account/Manage.aspx?m=SetPwdSuccess");
            }
            else
            {
                
                ModelState.AddModelError("NewPassword", result.ErrorMessage);
                
            }
        }
    }


    
    public IEnumerable<OpenAuthAccountData> GetExternalLogins()
    {
        var accounts = OpenAuth.GetAccountsForUser(User.Identity.Name);
        CanRemoveExternalLogins = CanRemoveExternalLogins || accounts.Count() > 1;
        return accounts;
    }

    public void RemoveExternalLogin(string providerName, string providerUserId)
    {
        var m = OpenAuth.DeleteAccount(User.Identity.Name, providerName, providerUserId)
            ? "?m=RemoveLoginSuccess"
            : String.Empty;
        Response.Redirect("~/Account/Manage.aspx" + m);
    }
    

    protected static string ConvertToDisplayDateTime(DateTime? utcDateTime)
    {
        // Vous pouvez modifier cette méthode afin de convertir la date/heure UTC par la référence et la mise en forme
        // d'affichage souhaitées. Ici, nous la convertissons au fuseau horaire et à la mise en forme du serveur
        // sous la forme d'une chaîne date courte et heure complète, à l'aide de la culture du thread actuelle.
        return utcDateTime.HasValue ? utcDateTime.Value.ToLocalTime().ToString("G") : "[never]";
    }
}