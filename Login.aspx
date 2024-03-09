<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MobileShopping.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style1 {
            height: 706px;
            width: 1505px;
        }

        .auto-style2 {
            width: 764px;
            margin-left: 338px;
        }

        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table width="40%" style="padding: 10px; margin-top: 10%;" align="center">
            <tr align="center">
                <td colspan="2">
                    <asp:Label ID="lbLogin" runat="server" BackColor="Red" Font-Bold="True" Font-Size="24pt" Text="LOGIN FORM"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Email Address" BackColor="Red" Font-Size="16pt"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black" Width="391px" Font-Size="14pt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="Yellow" ControlToValidate="txtEmail" ErrorMessage="Email Required !!!" Font-Size="12pt" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator></td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lbpassword" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" Text=" Password  " Font-Size="16pt"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black" TextMode="Password" Width="390px" Font-Size="14pt"></asp:TextBox>
                <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="Yellow" ControlToValidate="txtPassword" ErrorMessage="Password Required !!!" Font-Size="12pt" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="center">
                    <td colspan="2">
                        <br />
                        <br />
                        <asp:Button ID="btnLog" runat="server" BackColor="Green" Font-Bold="True" ForeColor="Black"
                            Text="Log In" Width="129px" BorderColor="White" Font-Size="14pt" Height="45px" ValidationGroup="a" CssClass="auto-style3" OnClick="btnLog_Click" />
                        <br />
                        <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
        </table>
    </center>

</asp:Content>
