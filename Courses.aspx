<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>הקורסים שלי</title>
    <link href="Styles/StyleSheetPage.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">        var addthis_config = { "data_track_addressbar": true };</script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-531b9b3c6d138d16"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />
    <%--   <-- בדיקה-->--%>
    <%--<link href="Styles/demo.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script src="lib/underscore-min.js" type="text/javascript"></script>
    <script src="lib/backbone.js" type="text/javascript"></script>
    <script src="lib/backbone.validation.js" type="text/javascript"></script>
    <script src="lib/Backbone.ModalDialog.js" type="text/javascript"></script>
    <script src="lib/demo.js" type="text/javascript"></script>--%>
     <script language="javascript" type="text/javascript">
        function addRow(tableID) {

            var table = document.getElementById(tableID);

            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);

            var cell1 = row.insertCell(0);
            var element1 = document.createElement("input");
            element1.type = "checkbox";
            element1.name = "chkbox[]";
            cell1.appendChild(element1);


            var cell2 = row.insertCell(1);
            goImage = new Image();
            goImage.src = "Images/go.jpg";
            goImage.style.height = "20px";
            goImage.onclick = function () {
                document.location = "Sheet.aspx";
            }
            cell2.appendChild(goImage);


            var cell3 = row.insertCell(2);
            var element2 = document.createElement("input");
            element2.type = "text";
            element2.dir = "rtl";
            element2.width = "140px";
            element2.name = "txtbox[]";
            addClass(element2, inputCourses);
            cell3.appendChild(element2);


        }

        function deleteRow(tableID) {
            try {
                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;

                for (var i = 0; i < rowCount; i++) {
                    var row = table.rows[i];
                    var chkbox = row.cells[0].childNodes[0];
                    if (null != chkbox && true == chkbox.checked) {
                        table.deleteRow(i);
                        rowCount--;
                        i--;
                    }
                }

            } catch (e) {
                alert(e);
            }
        }

        function addClass(obj,class1) {
            obj.className = class1;
        }
 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id='outer-wrapper'>
        <div id='wrap2'>
            <!-- skip links for text browsers -->
        </div>
        <!-- Menu Start -->
        <div class='menu' style="margin-top: 65px;">
            <%--  <img src="Images/dana_logo.png" height="80px" width="110px" style="float: left; margin-top: 40px;"
                alt="logo" />--%>
            <ul style="margin-right: 221px;">
                <li>
                    <img src="Images/dana_logo.png" height="80px" width="110px" style="float: left; margin-top: 40px;
                        margin-left: -121px;" /></li>
                <li style="margin-top: 55px;"><a href='Detail2.aspx'>עדכון פרופיל</a></li>
                <li style="margin-top: 55px; font-weight: bold; text-decoration: underline;"><a href='Courses.aspx'
                    style="font-weight: bold; color: goldenrod;">קורסים</a></li>
                <li style="margin-top: 55px;"><a href='#'>ראשי</a></li>
            </ul>
        </div>
        <!-- Menu End -->
        <div class='container' style="height: 380px;">
            <div style="margin-top: -57px;">
                <asp:Label ID="lblUser" runat="server" Text="שם הסטודנט" Style="font-family: shmuel;"></asp:Label>
                <img src="Images/profile.png" height="80px" width="80px" />
            </div>
            <div id='content-wrapper'>
              <table id="dataTable" width="350px" runat="server">
                    <tr>
                        <td colspan="3" style="font-weight: bold; font-weight: bold; font-family: shmuel; background-color: beige;
                            font-size: x-large;">
                            שם הקורס
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="chk" />
                        </td>
                        <td>
                            <asp:ImageButton ID="imgBtmGo" runat="server" ImageUrl="Images/go.jpg" Height="20px"
                                Width="20px" OnClick="imgBtmGo_Click" />
                        </td>
                        <td dir="rtl">
                            <input id="txtCourse" type="text" runat="server" />
                        </td>
                    </tr>
                </table>

                 &nbsp;&nbsp;
                    <input type="button" value="הוסף קורס" onclick="addRow('dataTable')" style="font-family: shmuel;
                        font-size: larger; background: transparent; font-weight: bold;" />
                    <input type="button" value="מחק קורס" onclick="deleteRow('dataTable')" style="font-family: shmuel;
                        font-size: larger; background: transparent; font-weight: bold; margin-right: 18px;" />
                <div id='main-wrapper'>
                 
                </div>
            </div>
            <%-- <asp:ImageButton ID="imgBtnaddfolder" runat="server" ImageUrl="Images/addfolder.png"
                        Height="30px" Width="30px" Style="margin-top: -3px;" />&nbsp;&nbsp;
                    <asp:Label ID="lblAddFolder" runat="server" Text="הוספת קורס" Style="font-family: shmuel;
                        font-size: x-large; margin-right: 2px; margin-top: -13px;"></asp:Label>--%>
        </div>
        
        <%--         <div>--%>
        <%-- <asp:ImageButton ID="imgBtnaddfolder" runat="server" ImageUrl="Images/addfolder.png"
                        Height="30px" Width="30px" Style="margin-top: -3px;"/>--%>
 
        </div>
    </div>
    <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
        <a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2">
        </a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4">
        </a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style">
        </a>
    </div>
    </div>
    </form>
</body>
<%--<script type="text/javascript">
    $(document).ready(
	function () {
	    _.templateSettings = { interpolate: /\{\{(.+?)\}\}/g };
	    $("#addPersonButton").click(
			function (event) {
			    event.preventDefault();
			    event.stopPropagation();

			    // Create the modal view
			    var model = new PersonModel();
			    var view = new AddPersonView({ model: model });
			    view.render().showModal({
			        x: event.pageX,
			        y: event.pageY
			    });
			});--%>

<%--//	    _people = new PeopleCollection();
//	    _people.add(new PersonModel({ name: "Person 1", email: "person1@email.com", phone: "011-11-111" }));
//	    _people.add(new PersonModel({ name: "Person 2", email: "person2@email.com", phone: "022-22-222" }));
//	    _people.add(new PersonModel({ name: "Person 3", email: "person3@email.com", phone: "03-333-333" }));

	    _peopleList = new PeopleListView(
			{
			    collection: _people,
			    el: "#people"
			});

	    _peopleList.render();

	    additionalTests();
	});

    function additionalTests() {
        $("#test-no-config").click(
			function (event) {
			    event.preventDefault();
			    event.stopPropagation();

			    var model = new PersonModel();
			    var view = new AddPersonView({ model: model });
			    view.render().showModal();
			});

        $("#test-anchor-header-left").click(
			function (event) {
			    event.preventDefault();
			    event.stopPropagation();

			    var model = new PersonModel();
			    var view = new AddPersonView({ model: model });
			    view.render().showModal(
					{
					    "slideFromAbove": true,
					    "targetContainer": $("#header"),
					    css: {
					        "left": "0px",
					        "top": "0px"
					    }
					});
			});

        $("#test-anchor-header-right").click(
			function (event) {
			    event.preventDefault();
			    event.stopPropagation();

			    var model = new PersonModel();
			    var view = new AddPersonView({ model: model });
			    view.render().showModal(
					{
					    "slideFromBelow": true,
					    "targetContainer": $("#header"),
					    css: {
					        "right": "0px",
					        "top": "0px"
					    }
					});
			});

        $("#test-permanent").click(
			function (event) {
			    event.preventDefault();
			    var view = new PermanentView();
			    view.render().showModal({ permanentlyVisible: true });
			});
    }
	
</script>--%>
</html>
