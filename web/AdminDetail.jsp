<%@ page import="dto.Staff" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: Mr.wordSmith team
  Date: 5/10/17
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Staff staff = (Staff) session.getAttribute("staff");
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
<!-- style of text and title-->
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
    .logoutbtn{
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
        <li style="float:right"><a class="active">
            <form><button formaction="AdminLogout" class="logoutbtn"formmethod="post">> LOG OUT</button></form>
        </a></li>

        <%
            String link;
            if (!Objects.equals(staff.getAdmin(), "Admin")) {
                link =
                        "        <li><a href=\"UpdateProfile.jsp\">Update Profile</a></li>";
            } else {
                link =  "        <li><a href=\"StuffManagement.jsp\">Staff Management</a></li>";

            }
        %>
        <%=link%>
        <%--<li><a href="StuffManagement.jsp">Staff Management</a></li>--%>
    </ul>
    </div>
</div>

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

    <!-- The Grid -->
    <div class="w3-row-padding">

        <!-- Left Column -->
        <div class="w3-half">
            <div class="w3-row">
                <div class="w3-col w3-container" style="margin-top: 70px;margin-left:50%">
                    <h4><strong>Welcome , <%=staff.getFirst_name()%>
                    </strong></h4>
                    <table cellspacing="2" cellpadding="1" style="align-content: center">
                        <tr>
                            <td style="font-size: small">First Name: <%=staff.getFirst_name()%><input type="hidden"
                                                                                                      name="firstname"
                                                                                                      id="firstname"
                                                                                                      value=""/></td>
                        </tr>
                        <tr>
                            <td style="font-size: small">Last Name: <%=staff.getLast_name()%><input type="hidden"
                                                                                                    name="lastname"
                                                                                                    id="lastname"
                                                                                                    value=""/></td>
                        </tr>
                        <tr>
                            <td style="font-size: small">Address: <%=staff.getAddress()%><input type="hidden" name="dob"
                                                                                                id="dob" value=""/></td>
                        </tr>
                        <tr>
                            <td style="font-size: small">Email: <%=staff.getEmail()%><input type="hidden" name="email"
                                                                                            id="email" value=""/></td>
                        </tr>
                        <tr>
                            <td style="font-size: small">Phone: <%=staff.getPhoneNumber()%><input type="hidden"
                                                                                                  name="phone"
                                                                                                  id="phone" value=""/>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: small">Admin type: <%=staff.getAdmin()%><input type="hidden"
                                                                                                 name="address"
                                                                                                 id="address" value=""/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-half">

            <div class="w3-col w3-container" style="margin-top: 70px;margin-right:30px">
                <img src="images/adminicon.jpg" style="width: 30%">
            </div>

        </div>

        <!-- End Right Column -->
    </div>

    <!-- End Grid -->
</div>

<!-- End Page Container -->
</div>


</body>
</html>
