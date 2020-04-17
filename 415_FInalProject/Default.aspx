<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_415_FInalProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/style.css" rel="stylesheet" />
        <script src="Scripts/jquery-3.0.0.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/popper.min.js"></script>
    </head>
    <body onload="onload()">

        <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
            <a class="navbar-brand" href="#"><img width="120px" src="Content/img/logo.png" /> <span class="predictor"> Predictor</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
            </ul>
          </div>
        </nav>

        <div class="container section">
        
            <hr class="style-five" />
        
                <div align="center">
                    <h1 class="display-3">Spot Your Fy<br />Predictor</h1>
                </div>

            <hr class="style-five" />

            <div class="container">
              <div class="row">
                     <div class="col">
                         <form id="form1" runat="server">

                             <script>
                                 function slide() {
                                     var slider1 = document.getElementById('instrumental').value;
                                     document.getElementById('txtIncome').value = slider1;
                                     console.log(slider1);
                                 }

                                 function onload() {
                                     document.getElementById('txtTrack').focus()
                                 }
                             </script>

                        <table><tr>
                                <td>Track:</td>
                                <td><asp:TextBox ID="txtTrack" class="form-control" runat="server"></asp:TextBox></td>
                
                            </tr>
                            <tr>
                                <td>Artist:</td>
                                <td><asp:TextBox ID="txtArtist" class="form-control" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Danceability</td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="50" class="slider1" id="dance" /></td>
                            </tr>
                            <tr>
                                <td>Energy</td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="50" class="slider2" id="energy" /></td>
                            </tr>
                            <tr>
                                <td>Loudness</td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="50" class="slider3" id="loud" /></td>
                            </tr>
                            <tr>
                                <td>Acousticness</td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="50" class="slider4" id="acoustic" /></td>
                            </tr>
                            <tr>
                                <td>Intrumentalness</td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="50" class="slider5" id="instrumental" /></td>
                            </tr>
                            <tr>
                                <td>Marital Status:</td>
                                <td><asp:RadioButtonList ID="rblMaritalStatus" runat="server">
                                    <asp:ListItem>Married</asp:ListItem>
                                    <asp:ListItem>Single</asp:ListItem>
                                </asp:RadioButtonList></td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td><asp:RadioButtonList ID="rblGender" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList></td>
                            </tr>
                            <tr style="display:none">
                                <td>Income:</td>
                                <td>
                                    <asp:TextBox ID="txtIncome" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Children:</td>
                                <td>
                                    <asp:DropDownList ID="ddlChildren" runat="server">
                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                        <asp:ListItem Value="3">3</asp:ListItem>
                                        <asp:ListItem Value="4">4</asp:ListItem>
                                        <asp:ListItem Value="5">5</asp:ListItem>
                                        <asp:ListItem Value="6">6+</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Cars:</td>
                                <td><asp:TextBox ID="txtCars" runat="server"></asp:TextBox></td>
                
                            </tr>
                            <tr>
                                <td>Age:</td>
                                <td><asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:LinkButton ID="lbPredict" runat="server" class="btn btn-success" OnClick="lbPredict_Click">Predict</asp:LinkButton>
                                </td>
                            </tr>

                        </table>
        
                    </form>
                </div>
                <div class="col">

                  <asp:Label ID="lblResults" runat="server" Font-Size="Larger"></asp:Label>
                </div>
              </div>
            </div>


        
        </div>


    
    </body>
</html>
