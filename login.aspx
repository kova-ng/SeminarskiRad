<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" runat="server" media="screen" href="~/css/style-log-reg.css" /> 
</head>
<body>
    <div id="bg">
        <form id="form1" runat="server">
            <div>
                &nbsp;
            <asp:Login ID="LoginKorisnik" runat="server" Font-Names="Verdana" DestinationPageUrl="~/Default.aspx" LoginButtonText="Prijava" OnAuthenticate="LoginKorisnik_Authenticate" PasswordLabelText="Lozinka:" TitleText="" UserNameLabelText="Korisničko ime:" CreateUserText="Registracija Korisnika" CreateUserUrl="~/Registracija.aspx" FailureText="Vaša prijava nije uspješna. Pokušajte ponovno!" PasswordRequiredErrorMessage="Lozinka je obavezna!" UserNameRequiredErrorMessage="Korisničko ime je obavezno!!!" RememberMeSet="False" DisplayRememberMe="False">
                  
                <HyperLinkStyle ForeColor="White" />
                  
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775"/>
                    
                <TextBoxStyle Height="20px" Width="150px" />
                    
            </asp:Login>
            </div>
        </form>
    </div>
</body>
</html>
