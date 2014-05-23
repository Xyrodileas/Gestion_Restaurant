<%@ Page Title="Gérer le compte" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditProfil.aspx.cs" Inherits="Account_EditProfil" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

        <asp:PlaceHolder runat="server" ID="PlaceHolder1" Visible="true">
            <h3>Modifier les informations utilisateur</h3>
            
                    
                    <fieldset class="changeinfo">
                        <legend>Modifier les détails de l'utilisateur</legend>
                        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
                            <p class="message-success"><%: SuccessMessage %></p>
                        </asp:PlaceHolder>
                        <ol>
                            <li>
                                <asp:Label  ID="Label1" runat="server" AssociatedControlID="email">Email </asp:Label>
                                <asp:TextBox runat="server" ID="email" />
                            </li>
                            <li>

                            </li>
                            <li>
                                <asp:Label  ID="Label3" runat="server" AssociatedControlID="TextBox1">Adresse </asp:Label>
                                <asp:TextBox runat="server" ID="TextBox1" visibility="hidden"/>
                            </li>
                        </ol>
                        <asp:Button ID="Button1" runat="server" CommandName="Changeinfo" Text="Modifier les informations" OnClick="changeInfo_Click" />
                    </fieldset>
          
        </asp:PlaceHolder>
    
</asp:Content>
