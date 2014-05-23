<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite1" %>
<%@ Import Namespace="System.Web.Optimization" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code qui s'exécute au démarrage de l'application
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        AuthConfig.RegisterOpenAuth();
    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  Code qui s'exécute à l'arrêt de l'application

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code qui s'exécute lorsqu'une erreur non gérée se produit

    }

</script>
