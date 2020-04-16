<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_415_FInalProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
