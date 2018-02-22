 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" runat="server" media="screen" href="~/css/default.css" /> 
        <link href="https://fonts.googleapis.com/css?family=Bungee+Shade" rel="stylesheet" />

</head>
<body>
    <div class="header">
        <h2><a href="Default.aspx">Pohranjivač datoteka</a></h2>
    </div>
    
    
    <form id="form1" runat="server">
        <div>
            <div id="dobrodosli">
                Dobro došli,
                <asp:LoginName ID="LoginName1" runat="server" />
                &nbsp; <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/login.aspx" />
            </div>
            <br />
            <div class="topnav">
                <a href="#"><asp:Label ID="LabelVrijeme" runat="server" Text="LabelVrijeme"></asp:Label></a>
                <a href="About.aspx" style="float:right">O Autoru</a>
            </div>
            
            <div class="row">
                <div class="leftcolumn">
                    <div class="card">
                        
                        <h1 style="text-align: center">Autor web aplikacije</h1>
                        <div class="fakeimg">
                        <p>
                            <img src="slika.jpg" style="float: right"/>
                            <asp:Table ID="Table1" runat="server" CellSpacing="6" Width="500px">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">JMBAG:</asp:TableCell>
                                    <asp:TableCell runat="server">77170723</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">JMBAG (CAP):</asp:TableCell>
                                    <asp:TableCell runat="server">0268003969</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Ime:	</asp:TableCell>
                                    <asp:TableCell runat="server">Marijan</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Prezime:</asp:TableCell>
                                    <asp:TableCell runat="server">Kovačević</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Spol:</asp:TableCell>
                                    <asp:TableCell runat="server">muški</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Ime oca ili majke:</asp:TableCell>
                                    <asp:TableCell runat="server">Alojz</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Datum rođenja:</asp:TableCell>
                                    <asp:TableCell runat="server">22.7.1988.</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">JMBG:</asp:TableCell>
                                    <asp:TableCell runat="server">2207988301257</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Serijski broj indeksa:</asp:TableCell>
                                    <asp:TableCell runat="server">005330</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">OIB:</asp:TableCell>
                                    <asp:TableCell runat="server">07816629967</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Mjesto rođenja:</asp:TableCell>
                                    <asp:TableCell runat="server">Nova Gradiška</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">Drzava rođenja:</asp:TableCell>
                                    <asp:TableCell runat="server">Republika Hrvatska</asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            
                            
                        </p>
                       </div> 
                    </div>
                </div>
                <div class="rightcolumn">
                    <div class="card">
                      <h2>O pohranjivaču datoteka</h2>
                      
                      <p>Ova web aplikacija je namjenjena za pohranu datoteka. 
                          Napravljena je za potrebe seminarskog rada za 
                          kolegij ASP web programiranje na stručno specijalističkom studiju 
                          Informacijskih sustava na Veleučilišti Velika Gorica.
                      </p>
                    </div>
                </div>
                
            </div>
           </div> 
    </form>
<!--<div class="footer">
  <h2>Footer</h2>
</div> -->
</body>
</html>
