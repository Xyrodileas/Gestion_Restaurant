<%@ Page Title="À propos de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Page de description de votre application.</h2>
    </hgroup>

    <article>
        <p>        
            Cette zone permet d'ajouter des informations supplémentaires.
        </p>

        <p>        
            Cette zone permet d'ajouter des informations supplémentaires.
        </p>

        <p>        
            Cette zone permet d'ajouter des informations supplémentaires.
        </p>
    </article>

    <aside>
        <h3>Titre à part</h3>
        <p>        
            Cette zone permet d'ajouter des informations supplémentaires.
        </p>
        <ul>
            <li><a runat="server" href="~/">Accueil</a></li>
            <li><a runat="server" href="~/About.aspx">À propos de</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>