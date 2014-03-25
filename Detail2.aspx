<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detail2.aspx.cs" Inherits="Detail2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>הזנת פרטים</title>
    <link href="Styles/StyleSheetPage.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id='outer-wrapper'>
        <div id='wrap2'>
            <!-- skip links for text browsers -->
        </div>
        <!-- Menu Start -->
        <div class='menu' style="margin-top: 65px;">
            <img src="Images/dana_logo.png" height="80px" width="110px" style="float: left; margin-top: 40px;" />
        </div>
        <!-- Menu End -->
        <div class='container' style="height: 380px;">
            <div id='content-wrapper'>
                <div id='main-wrapper'>
   
                    <h2 style="font-family: shmuel; font-size: xx-large; margin-right: 98px; margin-top: -13px;">
                        מלא את פרטיך האישיים
                    </h2>
                    <br />
                    <br />
                    <div id="divDetails">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtBoxLastName" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblLName" runat="server" Text="שם משפחה" Style="font-family: shmuel;
                                        font-size: x-large;"></asp:Label>
                                    <asp:RequiredFieldValidator ErrorMessage="נא הכנס שם משפחה" ControlToValidate="txtBoxLastName"
                                        runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtBoxFName" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblFName" runat="server" Text="שם פרטי" Style="font-family: shmuel;
                                        font-size: x-large;"></asp:Label>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="נא הכנס שם פרטי" ControlToValidate="txtBoxFName"
                                        runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtBobMail" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblMail" runat="server" Text="דואר אלקטרוני-שם משתמש" Style="font-family: shmuel;
                                        font-size: x-large;"></asp:Label>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="נא הכנס שם משתמש" ControlToValidate="txtBobMail"
                                        runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtboxPassword" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblPassword" runat="server" Text="סיסמא" Style="font-family: shmuel;
                                        font-size: x-large;"></asp:Label>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="נא הכנס שם סיסמא" ControlToValidate="txtboxPassword"
                                        runat="server" />
                                </td>
                            </tr>
                          
                        </table>
                    </div>
                    <asp:Button ID="btnNext" runat="server" Text="הבא" OnClick="btnNext_Click" Style="font-family: shmuel;
                        font-size: x-large; float: left; margin-left: 65px; width: 88px;" />
                </div>
                </div>
                </div>
                </div>
    </form>
</body>
</html>
