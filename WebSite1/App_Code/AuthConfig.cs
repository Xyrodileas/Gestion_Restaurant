using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace WebSite1
{
    public static class AuthConfig
    {
        public static void RegisterOpenAuth()
        {
            // Consultez http://go.microsoft.com/fwlink/?LinkId=252803 pour plus de détails sur la configuration de cette application ASP.NET
            // afin qu'elle prenne en charge la connexion par l'intermédiaire de services externes.

            //OpenAuth.AuthenticationClients.AddTwitter(
            //    consumerKey: "votre consumer key Twitter",
            //    consumerSecret: "votre consumer secret Twitter");

            //OpenAuth.AuthenticationClients.AddFacebook(
            //    appId: "votre app id Facebook",
            //    appSecret: "votre app secret Facebook");

            //OpenAuth.AuthenticationClients.AddMicrosoft(
            //    clientId: "votre ID client pour votre compte Microsoft",
            //    clientSecret: "votre client secret pour votre compte Microsoft");

            //OpenAuth.AuthenticationClients.AddGoogle();
        }
    }
}