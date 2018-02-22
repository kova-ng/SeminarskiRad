<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registracija.aspx.cs" Inherits="Registracija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" runat="server" media="screen" href="~/css/style-log-reg.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Registracija novog korisnika<br />
            
            <asp:Table ID="Table1" runat="server" CellSpacing="10">
                <asp:TableRow>
                    <asp:TableCell>Ime:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBoxRegIme" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:Label ID="LabelIme" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Prezime:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBoxRegPrezime" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="LabelPrezime" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Korisničko ime:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBoxRegUsername" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="LabelUsername" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Lozinka:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBoxRegPass1" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="LabelLozinka1" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Ponovi lozinku:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBoxRegPass2" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="LabelLozinka2" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table>    
                    <asp:Button ID="ButtonRegistracija" runat="server" Text="Registracija" OnClick="ButtonRegistracija_Click" />
                             
            
            <br />
            <br />
                             
            
            <asp:HyperLink ID="HyperLinkBackToLogin" runat="server" NavigateUrl="~/login.aspx">Natrag na login</asp:HyperLink>
            <% Izvor: http://w3schools.sinsixx.com/aspnet/control_table.asp.htm %>
        </div>
    </form>
</body>
</html>
