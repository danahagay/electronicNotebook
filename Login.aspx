<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>התחבר למערכת</title>
    <link href="Styles/StyleSheetPage.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Login.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id='outer-wrapper' style="margin-right: 175px;">
        <div id='wrap2'>
            <!-- skip links for text browsers -->
        </div>
        <!-- Menu Start -->
        <div class='menu' style="margin-top: 65px;">
            <img src="Images/dana_logo.png" height="80px" width="110px" style="float: left; margin-top: 40px;" />
        </div>
        <!-- Menu End -->
        <div class='container' style="height: 380px;">
            <div id='content-wrapper' style="margin-right: 41px;">
                <div id='main-wrapper' style="margin-right: 380px;">
                    <h1 style="font-family: shmuel; font-size: xx-large; margin-right: -190px; margin-top: -16px;
                        text-align: center; font-weight: bold; color: cadetblue;">
                        התחבר למערכת
                    </h1>
                    <table style="margin-left: -93px; text-align: right; float: right;">
                        <tr>
                            <td width="150px" style="font-family: shmuel; font-size: x-large;">
                                <input id="userName" type="text" value="username@domain.com" onclick="value=''" runat="server" />
                                <asp:RequiredFieldValidator ErrorMessage="נא הכנס שם משתמש" ControlToValidate="userName"
                                    runat="server" />
                            </td>
                            <td style="font-family: shmuel; font-size: x-large; width: 40px;">
                                שם משתמש
                            </td>
                        </tr>
                        <tr>
                            <td>
                             
                                <input id="txtpass"  type="text" value="סיסמא" onclick="value=''"  runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="נא הכנס סיסמא" ControlToValidate="txtpass"
                                    runat="server" />
                            </td>
                            <td style="font-family: shmuel; font-size: x-large;">
                                סיסמא:
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: shmuel; font-size: x-large;">
                                <asp:Button ID="btnConnect" Text="התחבר" runat="server" 
                                    onclick="btnConnect_Click" />
                            </td>
                        </tr>
                        
                    </table>
                </div>
                <div> <asp:Label ID="lblStatus" runat="server" Text="" style="margin-right: 186px;"></asp:Label> </div>
            </div>
        </div>
    </form>
</body>
</html>
