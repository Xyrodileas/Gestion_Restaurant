﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Votre page de contact.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Téléphone :</h3>
        </header>
        <p>
            <span class="label">Principal :</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">En dehors des heures d'ouverture :</span>
            <span>425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Adresse de messagerie :</h3>
        </header>
        <p>
            <span class="label">Support :</span>
            <span><a href="mailto:Support@example.com">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing :</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">Général :</span>
            <span><a href="mailto:General@example.com">General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Adresse:</h3>
        </header>
        <p>
            One Microsoft Way<br />
        Redmond, WA 98052-6399
        </p>
    </section>
</asp:Content>