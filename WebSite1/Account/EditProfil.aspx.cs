using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;

public partial class Account_EditProfil : System.Web.UI.Page
{

    protected string SuccessMessage
    {
        get;
        private set;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            email.Text = Membership.GetUser(User.Identity.Name).Email;
            TextBox1.Text = Membership.GetUser(User.Identity.Name).Comment;
        }
        // Afficher le message de réussite
        var message = Request.QueryString["m"];
        if (message != null)
        {
            // Enlever la chaîne de requête de l'action
            Form.Action = ResolveUrl("~/Account/EditProfil.aspx");

            SuccessMessage =
                 message == "infoChangeSuccess" ? "Les informations ont été modifié"
                : message == "infoChangeErr" ? "Les informations n'ont pas été modifié"
                : String.Empty;
            successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
        }

    }

    protected void changeInfo_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            TextBox email = (TextBox)PlaceHolder1.FindControl("email");
            TextBox comment = (TextBox)PlaceHolder1.FindControl("TextBox1");
            MembershipUser user = Membership.GetUser(User.Identity.Name);
            user.Email = (string)email.Text;
            user.Comment = (string)comment.Text;
            Membership.UpdateUser(user);



            Response.Redirect("~/Account/EditProfil.aspx?m=infoChangeSuccess");
        }
    }

}