<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                        <div class="novi">
                            <asp:FileUpload ID="FileUploadDatoteka" runat="server" Width="500" />
                            <asp:Button ID="ButtonUpload" runat="server" OnClick="ButtonUpload_Click" Text="Upload" />
                        </div>    
                            <div class="fakeimg">
                                <asp:Table ID="TableDatoteke" runat="server"></asp:Table>
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
