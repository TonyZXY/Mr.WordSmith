<%@ page import="dto.Staff" %><%--
  Created by IntelliJ IDEA.
  User: TonyZheng
  Date: 12/10/17
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Staff staff = (Staff)session.getAttribute("staff");
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
    <script>var __adobewebfontsappname__="dreamweaver"</script>
    <script src="http://use.edgefonts.net/source-sans-pro:n2:default.js" type="text/javascript"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
    html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
    .mySlides {display:none}
    .w3-tag, .fa {cursor:pointer}
    .w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>
<body>

<!-- Links (sit on top) -->

<div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
    <div class="w3-third">
        <img src="images/icon.jpg" style="width: 30%;margin-left: 10%">
    </div>
    <br><br><br>
    <div class="w3-container w3-right">
        <form>
            <button formaction="AdminLogout" formmethod="post" class="w3-btn w3-black">
                Logout
            </button>
        </form>
    </div>
</div>

<!-- function bar -->

<div class="w3-bar-item" style="max-width:100%;margin-top:0px;">
    <div class="w3-row w3-large w3-black">
        <div class="w3-col w3-third">
            <a href="SalesReport.jsp" class="w3-button w3-block">Sale Report</a>
        </div>
        <div class="w3-col w3-third">
            <a href="StockControl.jsp" class="w3-button w3-block">Stock Control</a>
        </div>
        <div class="w3-col w3-third">
            <a class="w3-button w3-block">Update Profile</a>
        </div>
    </div>
</div>

<!-- imformation-->
<div class="w3-container">

    <table cellspacing="2" cellpadding="1">
        <tr>
            <td style="font-size: small">First Name: <%=staff.getFirst_name()%><input type="hidden"
                                                                                    name="firstname"
                                                                                    id="firstname" value=""/>
            </td>
        </tr>
        <tr>
            <td style="font-size: small">Last Name: <%=staff.getLast_name()%><input type="hidden" name="lastname"
                                                                                  id="lastname" value=""/></td>
        </tr>
        <tr>
            <td style="font-size: small">Address: <%=staff.getAddress()%><input type="hidden" name="dob"
                                                                                      id="dob" value=""/>
            </td>
        </tr>
        <tr>
            <td style="font-size: small">Email: <%=staff.getEmail()%><input type="hidden" name="email" id="email"
                                                                           value=""/></td>
        </tr>
        <tr>
            <td style="font-size: small">Phone: <%=staff.getPhoneNumber()%><input type="hidden" name="phone" id="phone"
                                                                           value=""/></td>
        </tr>
        <tr>
            <td style="font-size: small">Position: <%=staff.getAdmin()%><input type="hidden" name="address"
                                                                               id="address" value=""/>
            </td>
        </tr>
    </table>

    <form class="w3-container" action="UpdateProfile" method="post">

        <div class="w3-section">
            <label><b>Email</b></label>
            <input class="w3-input w3-border w3-margin-bottom" type="email" placeholder="Email" name="email" style="width: 80%">
            <label><b>Address</b></label>
            <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Address" name="address" style="width: 80%">
            <label><b>Phone Number</b></label>
            <input class="w3-input w3-border w3-margin-bottom" type="tel" placeholder="Phone Number" name="phone" style="width: 80%">
            <label><b>Password</b></label>
            <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="password" style="width: 80%">
            <br>
            <br>

            <button class="w3-button w3-block w3-black w3-section w3-padding" type="submit" style="width: 50%">Update</button>
        </div>
        <!-- modal (add new staffs)-->

    </form>

</div>
</body>
</html>
