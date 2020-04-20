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
    <body>

        <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
            <a class="navbar-brand" href="/Default.aspx"><asp:Image width="120px" ID="Image1" ImageUrl="~/images/logo.png" runat="server" /> <span class="predictor"> Predictor</span></a>
            <a class="navbar-brand btn btn-primary" style="position: absolute; right:10px; outline:none" href="/input.aspx">Add Data</a>


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
                                     var slider1 = document.getElementById('dance').value;
                                     slider1 = (slider1 / 100);
                                     document.getElementById('txtDance').value = slider1;

                                     var slider2 = document.getElementById('energy').value;
                                     slider2 = (slider2 / 100);
                                     document.getElementById('txtEnergy').value = slider2;

                                     var slider3 = document.getElementById('loud').value;
                                     slider3 = (slider3 - 100);
                                     if (slider3 < -40) {
                                         slider3 = -40
                                     }                                     
                                     document.getElementById('txtLoud').value = slider3;

                                     var slider4 = document.getElementById('acoustic').value;
                                     slider4 = (slider4 / 100);
                                     document.getElementById('txtAcoustic').value = slider4;

                                     var slider5 = document.getElementById('instrumental').value;
                                     slider5 = (slider5 / 100);
                                     document.getElementById('txtInstrument').value = slider5;
                                 }


                                 function onload() {
                                     document.getElementById('txtTrack').focus()
                                 }
                             </script>

                        <table>
                            <tr>
                                <td>Track:</td>
                                <td>
                                    <asp:TextBox ID="txtTrack" class="form-control" runat="server"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ControlToValidate="txtTrack" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Type in a track name."></asp:RequiredFieldValidator>--%>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>Artist:</td>
                                <td>
                                    <asp:TextBox ID="txtArtist" class="form-control" runat="server"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ControlToValidate="txtArtist" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Type in an artist name."></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Danceability<span style="color:red">*</span></td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="0" class="slider1" id="dance" /></td>
                            </tr>
                            <tr>
                                <td>Energy<span style="color:red">*</span></td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="0" class="slider2" id="energy" /></td>
                            </tr>
                            <tr>
                                <td>Loudness<span style="color:red">*</span></td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="0" class="slider3" id="loud" /></td>
                            </tr>
                            <tr>
                                <td>Acousticness<span style="color:red">*</span></td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="0" class="slider4" id="acoustic" /></td>
                            </tr>
                            <tr>
                                <td>Intrumentalness<span style="color:red">*</span></td>
                                <td><input onchange="slide()" type="range" min="0" max="100" value="0" class="slider5" id="instrumental" /></td>
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td>
                                    <asp:LinkButton ID="lbPredict" runat="server" class="btn btn-success" OnClick="lbPredict_Click">Predict</asp:LinkButton>
                                </td>
                            </tr>

                        </table>
                        <div style="display:none">
                            <asp:TextBox ID="txtDance" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtEnergy" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtLoud" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtAcoustic" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtInstrument" runat="server"></asp:TextBox>
                        </div>
        
                    </form>
                </div>
                <div class="col">
                  <asp:Label style="display:none" ID="lblResults" runat="server" Font-Size="Larger"></asp:Label>
                    <div id="hit" align="center">
                        <h4 class="display-3">It's a hit!</h4>
                        <asp:Image width="80%" ID="Image2" ImageUrl="~/images/hit.png" runat="server" />
                    </div>
                    <div id="flop" align="center">
                        <h4 class="display-3">It's a flop</h4>
                    <asp:Image width="80%" ID="Image3" ImageUrl="~/images/flop.png" runat="server" />
                    </div>
                    <script>

                       
                        if ((document.getElementById('txtTrack').value) === "") {
                           
                        }
                        else if ((document.getElementById('lblResults').innerHTML).trim() >= .5) {
                            let hit = document.getElementById("hit");
                            hit.style.display = "block";
                            hit.style.transform = "scale(1)"
                            document.getElementById("flop").style.display = "none";

                        }
                        else if ((document.getElementById('lblResults').innerHTML).trim() < .5) {
                            let flop = document.getElementById("flop")
                            flop.style.transform = "scale(1)"
                            document.getElementById("hit").style.display = "none";
                        }
                        else {
                            document.getElementById("hit").style.display = "none";
                            document.getElementById("flop").style.display = "none";
                        }
                        
                    </script>
                    <div class="recommender-pill">
                        <h3>You might want to try these songs!</h3>
                        <div class="section">
                            <h6>Recommend #1</h6>
                            <h4>[blank] by [blank]</h4>
                        </div>
                        <div class="section">
                            <h6>Recommend #2</h6>
                            <h4>[blank] by [blank]</h4>
                        </div>
                        <div class="section">
                            <h6>Recommend #3</h6>
                            <h4>[blank] by [blank]</h4>
                        </div>
                    </div>
                </div>
              </div>
            </div>        
        </div>
        
        <!--Notes section-->
        <div class="section">
            <small><span style="color:red">*</span><strong>Danceability:</strong> Describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is most danceable.</small><br /><br />
            <small><span style="color:red">*</span><strong>Energy:</strong> Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity. Typically, energetic tracks feel fast, loud, and noisy. For example, death metal has high energy, while a Bach prelude scores low on the scale. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy.</small><br /><br />
            <small><span style="color:red">*</span><strong>Loudness:</strong> The overall loudness of a track in decibels (dB). Loudness values are averaged across the entire track and are useful for comparing relative loudness of tracks. Loudness is the quality of a sound that is the primary psychological correlate of physical strength (amplitude). Values typical range between -60 and 0 db.</small><br /><br />
            <small><span style="color:red">*</span><strong>Acousticness:</strong> A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic.</small><br /><br />
            <small><span style="color:red">*</span><strong>Instrumentalness:</strong> Predicts whether a track contains no vocals. “Ooh” and “aah” sounds are treated as instrumental in this context. Rap or spoken word tracks are clearly “vocal”. The closer the instrumentalness value is to 1.0, the greater likelihood the track contains no vocal content. Values above 0.5 are intended to represent instrumental tracks, but confidence is higher as the value approaches 1.0. The distribution of values for this feature look like this:</small>
        </div>


        <style type="text/css">
            #hit {
                transition: 2s;
                transform: scale(0);
            }

            #flop {
                transition: 2s;
                transform: scale(0);
            }
        </style>


    
    </body>
</html>
