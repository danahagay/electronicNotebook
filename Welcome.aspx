<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ברוך הבא</title>
    <link href="Styles/StyleSheetPage.css" rel="stylesheet" type="text/css" />
    <%-- <link href="Styles/StyleSheetLogin.css" rel="stylesheet" type="text/css" />--%>
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
                <div id='main-wrapper' style="margin-right: 305px;">
                    <form action="">
                    <h1 style="font-family: shmuel; font-size: xx-large; margin-right: 98px; margin-top: -13px;">
                        ברוך הבא לקלסר האלקטרוני</h1>
                    <div style="margin-right: 50px; margin-top: 77px;">
                        <asp:Button ID="btnNewProfile" runat="server" Text="יצירת פרופיל חדש" Style="height: 55px;
                            border-radius: 8px; background-color: burlywood; font-size: xx-large; font-family: shmuel;
                            font-weight: bold; border-color: floralwhite; margin-right: 8px; color: currentcolor;"
                            OnClick="btnNewProfile_Click" />
                        <asp:Button ID="btnLogin" runat="server" Text="התחברות למערכת" Style="height: 55px;
                            border-radius: 8px; background-color: burlywood; font-size: xx-large; font-family: shmuel;
                            font-weight: bold; border-color: floralwhite; margin-right: 8px; color: currentcolor;"
                            OnClick="btnLogin_Click" />
                    </div>
                    <div style="height: 45px;">
                    </div>
                    </form>
                    <!-- form -->
                    </section>
                    <!-- content -->
                </div>
                <!-- container -->
            </div>
        </div>
    </form>
</body>
</html>
