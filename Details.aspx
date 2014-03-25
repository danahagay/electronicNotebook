<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>הזנת פרטים</title>
    <link href="Styles/StyleSheetPage.css" rel="stylesheet" type="text/css" />
    <link href="Styles/StyleSheetPopUp.css" rel="stylesheet" type="text/css" />


    <!--  נסיון  -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script src="http://listjs.com/no-cdn/list.js"></script>
    <script src="Scripts/functions.js" type="text/javascript"></script>
<meta charset=utf-8 />
 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id='outer-wrapper'>
            <div id='wrap2'>
                <!-- skip links for text browsers -->
            </div>
            <!-- Menu Start -->
            <div class='menu' style="margin-top: 110px;">
                <img src="Images/dana_logo.png" height="80px" width="110px" style="float: left; margin-top: 40px;" />
            </div>
            <!-- Menu End -->
            <div class='container' style="height: 380px;">
                <div id='content-wrapper'>
                    <div id='main-wrapper' style="margin-right: 321px;">
                        <h2 style="font-family: shmuel; font-size: xx-large; margin-right: 98px; margin-top: -13px;
                            font-weight: bold;">
                            מלא את הפרטים הבאים
                        </h2>
                        <br />
                        <br />
                        <div id="divAcademicDetails" style="direction: rtl; margin-right: 16px;">
                            <asp:Label ID="lblDepart" runat="server" Text="מחלקה אקדמית" Style="font-family: shmuel;
                                font-size: x-large;"></asp:Label>&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>מנהל עסקים</asp:ListItem>
                                <asp:ListItem>כלכלה וניהול</asp:ListItem>
                                <asp:ListItem>כלכלה וחשבונאות</asp:ListItem>
                                <asp:ListItem>הנדסה</asp:ListItem>
                                <asp:ListItem>מדעי החברה והקהילה</asp:ListItem>
                                <asp:ListItem>מדעי הים</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:Label ID="lblSchedule" runat="server" Text="מערכת שעות " Style="font-family: shmuel;
                                font-size: x-large;"></asp:Label>
                            &nbsp;
                            <asp:ImageButton ID="ImgBtnSchedule" runat="server" ImageUrl="Images/scheduleIcon.png"
                                Height="20px" Width="20px" />
                            <br />
                            <br />
                            <asp:Label ID="lblExam" runat="server" Text="לוח מבחנים" Style="font-family: shmuel;
                                font-size: x-large;"></asp:Label>
                            &nbsp; &nbsp;
                            <asp:ImageButton ID="btnImgExam" runat="server" ImageUrl="Images/examIcon.png" Height="25px"
                                Width="25px" />
                            <br />
                            <br />

                            <asp:Label ID="lblToDoList" runat="server" Text="רשימות" Style="font-family: shmuel;
                                font-size: x-large;"></asp:Label>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:ImageButton ID="imgBtnToDoList" runat="server" ImageUrl="Images/listIcon.png"
                                Height="20px" Width="20px" OnClick="imgBtnToDoList_Click" />
                            <div class="custompopup" id="divToDoList" runat="server">
                               <div id="contacts">
  <table>
    <thead>
      <tr>
        <th class="sort" data-sort="name">Name</th>
        <th class="sort" data-sort="age">Age</th>
        <th class="sort" data-sort="city">City</th>
        <th colspan="2">
          <input type="text" class="search" placeholder="Search contact" />
        </th>
      </tr>
    </thead>
    <tbody class="list">
      <tr>
        <td class="id" style="display:none;">1</td>
        <td class="name">Jonny</td>
        <td class="age">27</td>
        <td class="city">Stockholm</td>
        <td class="edit"><button class="edit-item-btn">Edit</button></td>
        <td class="remove"><button class="remove-item-btn">Remove</button></td>
      </tr>
      <tr>
        <td class="id" style="display:none;">2</td>
        <td class="name">Jonas</td>
        <td class="age">-132</td>
        <td class="city">Berlin</td>
        <td class="edit"><button class="edit-item-btn">Edit</button></td>
        <td class="remove"><button class="remove-item-btn">Remove</button></td>
      </tr>
      <tr>
        <td class="id" style="display:none;">3</td>
        <td class="name">Gustaf</td>
        <td class="age">-23</td>
        <td class="city">Sundsvall</td>
        <td class="edit"><button class="edit-item-btn">Edit</button></td>
        <td class="remove"><button class="remove-item-btn">Remove</button></td>
      </tr>
      <tr>
        <td class="id" style="display:none;">4</td>
        <td class="name">Fredrik</td>
        <td class="age">26</td>
        <td class="city">Goteborg</td>
        <td class="edit"><button class="edit-item-btn">Edit</button></td>
        <td class="remove"><button class="remove-item-btn">Remove</button></td>
      </tr>
    </tbody>
  </table>
  <table>
    <td class="name">
      <input type="hidden" id="id-field" />
      <input type="text" id="name-field" placeholder="Name" />
    </td>
    <td class="age">
      <input type="text" id="age-field" placeholder="Age" />
    </td>
    <td class="city">
      <input type="text" id="city-field" placeholder="City" />
    </td>
    <td class="add">
      <button id="add-btn">Add</button>
      <button id="edit-btn">Edit</button>
    </td>
  </table>
  
  
</div>
                            </div>
                            <div class="divBtnSave" style="float: left; margin-left: 78px; margin-top: -28px;
                                width: 60px;">
                                <asp:Button ID="btnSave" runat="server" Text="שמור" Style="font-family: shmuel; font-size: x-large;
                                    height: 45px; width: 80px; border-radius: 5px; border-color: darkgrey; font-weight: bold;
                                    margin-top: 23px; color: currentcolor; background-color: beige;" OnClick="btnSave_Click" />
                            </div>
                            <br />
                            <br />
                        </div>
                    </div>
                    <!-- spacer for skins that want sidebar and main to be the same height-->
                    <div class='clear'>
                        &#160;</div>
                </div>
                <!-- end content-wrapper -->
            </div>
            <!--Start Footer-->
            <div class='footer'>
            </div>
            <!--End Footer-->
        </div>
    </div>
    <!-- end outer-wrapper -->
    </form>
    <script src='http://sliderpagenav.googlecode.com/files/paginator3000.js' type='text/javascript' />
    <script type='text/javascript'>
var home_page=&quot;/&quot;;
var urlactivepage=location.href;
var postperpage=7;
var numshowpage=10;
    </script>
    <script src='http://sliderpagenav.googlecode.com/files/Nav-Templates.js' type='text/javascript' />
</body>
</html>
