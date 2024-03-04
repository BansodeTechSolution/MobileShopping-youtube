<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterpage.Master" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="MobileShopping.reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <table width="40%">
            <tr align="center">
                <td colspan="2">
                    <h3>
                        <asp:Label ID="Label1" runat="server" Text="REGISTRATION FORM"
                            ForeColor="Red" Font-Bold="true" Font-Italic="true"></asp:Label>
                    </h3>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lblfname" runat="server" Text="FIRST NAME" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfname" runat="server" Width="250"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lbllname" runat="server" Text="LAST NAME" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlname" runat="server" Width="250"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="EMAIL ADDRESS" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="250"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lblmobile" runat="server" Text="MOBILE NO." ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmobile" runat="server" Width="250"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lblcity" runat="server" Text="CITY" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcity" runat="server" Width="250"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lblpassword" runat="server" Text="PASSWORD" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" Width="250" TextMode="Password"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lblcpassword" runat="server" Text="CONFIRM PASSWORD" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpassword" runat="server" Width="250" TextMode="Password"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">         
                    <br />
                    <br />
                        <asp:Button ID="btnSingup" runat="server" Text="SIGN UP"
                            ForeColor="Red" Font-Bold="true" Font-Italic="true" Width="100" Height="25"></asp:Button>
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <a href="Login.aspx">
                        <br />
                        <asp:Label ID="lbllogin" runat="server" Text="LOGIN HERE"
                            ForeColor="Red" Font-Bold="true" Font-Italic="true"></asp:Label>
                    </a>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
