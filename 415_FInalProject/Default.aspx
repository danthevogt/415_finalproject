<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_415_FInalProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>




    <form id="form1" runat="server">
        <div>
            <h1>Bike Buyers Prediction Calculator</h1>
        </div>


        <table>
            <tr>
                <td>Maritallllllllll Status:</td>
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
            <tr>
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
                    <asp:LinkButton ID="lbPredict" runat="server" OnClick="lbPredict_Click">Predict</asp:LinkButton>
                </td>
            </tr>

        </table>
        
        
        <asp:Label ID="lblResults" runat="server" Font-Size="Larger"></asp:Label>
    </form>
</body>
</html>
