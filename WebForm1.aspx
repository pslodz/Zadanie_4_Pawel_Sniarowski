<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Zadanie4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #container 
        {
            width: 1000px;
             margin-left:auto;
             margin-right:auto;
            background-color: cornflowerblue;
        }
        #logo
   {
    background-color: cornflowerblue;
    text-align:center;
   }

#footer
   {
    background-color: cornflowerblue;
    text-align:center;

   }
       
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div id="container">
            <div id="logo">
                <h1>Tabela rankingowa skoczków narciarskich</h1>
                <h2>Aplikacja ADO.NET, Add, update and delete.</h2>
            </div>
            <center>
            <table>
                <tr>
                    <td>Imie</td>
                    <td class="auto-style1"><asp:TextBox ID="Imie" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Nazwisko</td>
                    <td class="auto-style1"><asp:TextBox ID="Nazwisko" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Kraj</td>
                    <td class="auto-style1"><asp:TextBox ID="Kraj" runat="server"></asp:TextBox></td>
                </tr>
    
                <tr>
                    <td>Nota</td>
                    <td class="auto-style1"><asp:TextBox ID="Nota" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Skok</td>
                    <td class="auto-style1"><asp:TextBox ID="Skok" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="Usuń" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Aktualizuj" OnClick="Button3_Click" />
                </td>                
                    </tr>

                 <tr>          
                    <td>Wpisz dane a następnie wciśnij przycisk "Dodaj"</td>                   
                </tr>

                <tr>         
                    <td>Podaj ID aby aktualizować lub usunąć rekord</td>
                    <td class="auto-style1"><asp:TextBox ID="oldid" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                <div id="footer"><p>Paweł Śniarowski - Numer indeksu 40289</p>
           
                 </div>
                </center>
        </div>
    </form>
       
</body>

</html>
