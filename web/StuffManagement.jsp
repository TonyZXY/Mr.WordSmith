<%@ page import="database.DatabaseStaff" %>
<%@ page import="dto.Staff" %>
<%@ page import="view.StaffManagementView" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: TonyZheng
  Date: 12/10/17
  Time: 1:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Staff staff = (Staff) session.getAttribute("staff");
    ArrayList<Staff> staffs = DatabaseStaff.getAllStaff();

%>
<!doctype html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mr.wordSmith</title>
    <link href="css/1.0/css/singlePageTemplate.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/lib/w3-theme-blue-grey.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">

    <!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
    <script>var __adobewebfontsappname__ = "dreamweaver"</script>
    <script src="http://use.edgefonts.net/source-sans-pro:n2:default.js" type="text/javascript"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
    html, body, h1, h2, h3, h4 {
        font-family: "Lato", sans-serif
    }

    .mySlides {
        display: none
    }

    .w3-tag, .fa {
        cursor: pointer
    }

    .w3-tag {
        height: 15px;
        width: 15px;
        padding: 0;
        margin-top: 6px
    }
    ul {
        list-style-type: none;
        overflow: hidden;
        background-color: #333;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover:not(.active) {
        background-color: #111;
    }

    .active {
        background-color: #FF3300;
    }
    .logoutbtn {
        background-color: #FF3300;
        border: none;
        color: white;
    }
</style>
<body>


<!-- Links (sit on top) -->

<div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
    <div class="w3-third">
        <img src="images/icon.jpg" style="width: 15%;margin-left: 10%">
    </div>
</div>

<!-- function bar （1/5 of each selection）-->

<div style="max-width:100%;margin-top:0px;">
    <ul>
        <li><a href="SalesReport.jsp">Sale Report</a></li>
        <li><a href="StockControl.jsp">Stock Control</a></li>
        <li><a href="EditPageContent.jsp">Edit Content</a></li>
        <li><a href="StuffManagement.jsp">Staff Management</a></li>

        <li style="float:right"><a class="active">
            <form><button formaction="AdminLogout" class="logoutbtn"formmethod="post">> LOG OUT</button></form>
        </a></li>
    </ul>
</div>

<!-- imformation-->
<div class="w3-container">
    <br>
    <h5>
        <center>Staff</center>
    </h5>
    <hr>
    <table class="w3-table">
        <tr>
            <th>Staff ID</th>
            <th>Name</th>
            <th>Contact Number</th>
            <th>Admin type</th>
            <th></th>
        </tr>

        <%=StaffManagementView.getView(staffs)%>
        <%--<tr>--%>
        <%--<form>--%>
        <%--<td>ID</td>--%>
        <%--<td>First Name</td>--%>
        <%--<td>Phone</td>--%>
        <%--<td>Admin</td>--%>
        <%--<td><button class="w3-btn w3-black w3-round" style="width: auto" formmethod="post" formaction="RemoveStaff" name="id" value="">REMOVE</button></td>--%>
        <%--</form>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>E55149</td>--%>
        <%--<td>Yoyo</td>--%>
        <%--<td>dd/mm/yyyy</td>--%>
        <%--<td>xxxxxxxx</td>--%>
        <%--<td><a class="w3-btn w3-black w3-round" style="width: auto">remove</a></td>--%>
        <%--</tr>--%>
    </table>
    <br><br>
    <!-- modal (add new staffs)-->
    <center>
        <div class="w3-container">
            <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black w3-round">
                Add new staff
            </button>

            <div id="id01" class="w3-modal">
                <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

                    <div class="w3-center"><br>
                        <span onclick="document.getElementById('id01').style.display='none'"
                              class="w3-button w3-xlarge w3-hover-black w3-display-topright"
                              title="Close Modal">&times;</span>

                    </div>
                    <br><br>

                    <form class="w3-container" action="AddNewStaffServlet" method="post">
                        <div class="w3-section">

                            <input class="w3-input w3-border w3-margin-bottom" type="text" width="40%"
                                   placeholder="Staff ID"
                                   name="id" required="required" style="width: 80%">

                            <input class="w3-input w3-border w3-margin-bottom" type="text" width="40%"
                                   placeholder="First Name"
                                   name="FirstName" required="required" style="width: 80%">

                            <input class="w3-input w3-border w3-margin-bottom" type="text" width="40%"
                                   placeholder="Last Name"
                                   name="LastName" required="required" style="width: 80%">

                            <input class="w3-input w3-border w3-margin-bottom" type="email" width="40%"
                                   placeholder="Email"
                                   name="email" required="required" style="width: 80%">

                            <input class="w3-input w3-border w3-margin-bottom" type="text" width="40%"
                                   placeholder="Address"
                                   name="address" required="required" style="width: 80%">

                            <input class="w3-input w3-border w3-margin-bottom" type="number" width="40%"
                                   placeholder="Phone Number"
                                   name="phone" required="required" style="width: 80%">

                            <input class="w3-input w3-border" type="password" width="40%" placeholder="Password"
                                   name="password" required="required" style="width: 80%">
                            <br><label>*Admin type</label>
                            <select name="admin" id="">
                                <option value="Staff">staff</option>
                                <option value="Manager">manager</option>
                            </select>
                            <br>
                            <br>
                            <button class="w3-button w3-block w3-black w3-section w3-padding" type="submit"
                                    style="width: 50%">Add
                            </button>
                        </div>
                    </form>
                    <br>

                </div>
            </div>
        </div>
    </center>


</div>
</body>
</html>
