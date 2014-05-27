<%@ Page Title="S'inscrire" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Utilisez le formulaire ci-dessous pour créer un nouveau compte.</h2>
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Les mots de passe doivent comporter au minimum <%: Membership.MinRequiredPasswordLength %> caractères.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Formulaire d'inscription</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">Nom d'utilisateur </asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="Le champ nom d'utilisateur est requis." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">Adresse de messagerie</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="Le champ adresse de messagerie est requis." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">Mot de passe</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="Le champ mot de passe est requis." />
                            </li>

                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirmer le mot de passe </asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Le champ mot de passe actuel est requis." />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Le mot de passe et le mot de passe de confirmation ne correspondent pas." />
                            </li>

                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="adresse">Adresse </asp:Label>
                                <asp:TextBox runat="server" ID="adresse" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="adresse"
                                    CssClass="field-validation-error" ErrorMessage="L'adresse est requise." />
                            </li>

                            <li>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Birthdate">Date de naissance </asp:Label>
                                <asp:TextBox runat="server" ID="BirthDate" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="BirthDate"
                                    CssClass="field-validation-error" ErrorMessage="L'adresse email est requise." />
                            </li>

                        </ol>
                        <input type="button" onclick="registerUser(UserName.Text, Password.Text, Email.Text, adresse.Text, BirthDate.Text)" value="S'inscrire" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
    <script type="text/javascript">
        function registerUser(UserName, Password, Email, adresse, BirthDate) {
            WSBackEndPublic.insertUser(UserName, Password, Email, adresse, BirthDate, _onRegisterUser);
        }

        function _onRegisterUser(result) {
            alert(result);
        }
    </script>
</asp:Content>