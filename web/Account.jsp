<%@ page import="dto.User" %>
<%@ page import="view.EventViewAccountPage" %>
<%@ page import="view.OrderListViewAccountPage" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuqi Qiu / 3537646
  Date: 9/9/17
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = null;
    user = (User) session.getAttribute("user");
%>
<html>
<head>
    <title>Mr.wordSmith</title>
    <link href="css/singlePageTemplate.css" rel="stylesheet" type="text/css">
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
<body>

<!-- Links (sit on top) -->
<div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
    <div class="w3-third">
        <img src="images/icon.jpg" style="width: 15%;margin-left: 10%">
    </div>

    <div class="w3-right">
        <a href="Bag.jsp" class="w3-button w3-block"><b>Bag</b></a>
    </div>
    <div class="w3-right">
        <%
            String link;
            if (user != null) {
                link = "<a href=\"Account.jsp\" class=\"w3-button w3-block\"><b>My Account</b></a> \n " + user.getFirstName();
            } else link = "<a href=\"Login.jsp\" class=\"w3-button w3-block\"><b>Login/Register</b></a>";
        %>
        <%=link%>
    </div>
    <br>
    <br>
    <br>
    <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>" target="_blank "><i
            class="fa fa-facebook-official w3-hover-opacity w3-large w3-right"
            style="margin-left: 10px; margin-right: 20px "></i></a>
    <a herf="https://www.instagram.com" target="_blank "><i class="fa fa-instagram w3-hover-opacity w3-large w3-right"
                                                            style="margin-left: 10px" target="_blank "></i></a>
    <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>"
       target="_blank "><i class="fa fa-pinterest-p w3-hover-opacity w3-large w3-right"
                           style="margin-left: 10px"></i></a>
    <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>" target="_blank "><i
            class="fa fa-twitter w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i></a>

</div>
</div>

<!-- function bar -->
<div class="w3-bar-item" style="max-width:1686px;margin-top:0px;margin-bottom:20px">
    <div class="w3-row w3-large w3-black">
        <div class="w3-col " style="width:20%">
            <a href="index.jsp" class="w3-button w3-block">Home</a>  <!-- home button-->
        </div>
        <div class="w3-col" style="width:20%">
            <a href="ProductList.jsp" class="w3-button w3-block">Shop</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="Blog.jsp" class="w3-button w3-block">Blog</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="Contact.jsp" class="w3-button w3-block">Contact</a></div>
        <div class="w3-col" style="width:20%">
            <a href="AboutUs.jsp" class="w3-button w3-block">About Us</a>
        </div>
    </div>
</div>
<!-- title -->

<!-- sidebar -->
<div class="w3-row">
    <div class=" w3-col w3-bar-block w3-white " style="width:25%">
        <h5 class="w3-bar-item w3-center"><Strong>My Account</strong></h5>
        <div class="w3-panel w3-border-bottom w3-border-light-grey" style="margin-top: 10px;margin-bottom: 10px"></div>
        <button class="w3-bar-item w3-button tablink w3-center" onclick="openFile(event, 'My profile')">My Profile
        </button>
        <button class="w3-bar-item w3-button tablink w3-center" onclick="openFile(event, 'My order')">My Order</button>
        <button class="w3-bar-item w3-button tablink w3-center" onclick="openFile(event, 'My important date')">Important
            Dates
        </button>
    </div>

    <!-- information -->

    <div class="w3-col w3-container" style="width:70%" align="left">
        <div class="w3-padding" style="margin-left: 40px"><h4 style="font-family:Times"><i><b>Welcome
            Mr.wordSmith</b></i></h4></div>
        <div style="margin-left: 40px">
            <form action="" method="">
                <table cellspacing="2" cellpadding="1">
                    <tr>
                        <td style="font-size: small">First Name: <%=user.getFirstName()%><input type="hidden"
                                                                                                name="firstname"
                                                                                                id="firstname"
                                                                                                value=""/></td>
                    </tr>
                    <tr>
                        <td style="font-size: small">Last Name: <%=user.getLastName()%><input type="hidden"
                                                                                              name="lastname"
                                                                                              id="lastname"
                                                                                              value=""/></td>
                    </tr>
                    <tr>
                        <td style="font-size: small">Date Of Birth: <%=user.getBirthday()%><input type="hidden"
                                                                                                  name="dob" id="dob"
                                                                                                  value=""/>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: small">Email: <%=user.getEmail()%><input type="hidden" name="email"
                                                                                       id="email" value=""/></td>
                    </tr>
                    <tr>
                        <td style="font-size: small">Phone: <%=user.getPhone()%><input type="hidden" name="phone"
                                                                                       id="phone" value=""/></td>
                    </tr>
                    <tr>
                        <td style="font-size: small">Address: <%=user.getAddress()%><input type="hidden" name="address"
                                                                                           id="address" value=""/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>


        <div id="My profile" class="w3-container name" style="display:none">
            <div class="w3-col w3-container" style="width:70%">
                <form class="w3-container" style="font-size: small" action="UpdateAccountDetails" method="post"><br>
                    <h5 style="text-align:left"><b>My Profile</b></h5>
                    <p> Edit your details here</p><br>
                    <p>
                        <label>First Name</label>
                        <input class="w3-input" type="text" name="FN"></p>
                    <p>
                        <label>Last Name</label>
                        <input class="w3-input" type="text" name="LN"></p>
                    <p>
                        <label>Date Of Birth</label>
                        <input class="w3-input" placeholder="DD-MM" type="text" name="DoB"></p>
                    <p>
                        <label>Phone</label>
                        <input class="w3-input" type="text" name="PN"></p>
                    <p>
                        <label>Address</label>
                        <input class="w3-input" type="text" name="AD"></p>
                    <p>
                        <button class="w3-btn w3-black" type="submit">Save</button>
                    </p>
                </form>
            </div>
        </div>

        <div id="My important date" class="w3-container name" style="display:none">
            <div class="w3-col w3-container" style="width:70%">
                <br>
                <h5 style="text-align:left"><b>Important Dates</b></h5>
                <p style="font-size: small"> We will remember the important date for you! Leave your event details
                    to receive an email reminder 10 days prior to your event.</p><br>
                <br>
                <table cellspacing="10" cellpadding="5" style="font-size: small">

                    <th>Date</th>
                    <th>Event</th>
                    <%=EventViewAccountPage.eventView(user)%>
                    <%--<tr>--%>
                    <%--<td style="font-size: small" width="25%">Date</td>--%>
                    <%--<td style="font-size: small" width="40">Message</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td style="font-size: small" width="30%"><input type="hidden" name="e2date" id="e2date"--%>
                    <%--value=""/></td>--%>
                    <%--<td style="font-size: small" width="40%"><input type="hidden" name=id="e2event" value=""/>--%>
                    <%--</td>--%>
                    <%--<td><input class="w3-button" width="10%" value="REMOVE"></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td style="font-size: small" width="30%"><input type="hidden" name="e3date" id="e3date"--%>
                    <%--value=""/></td>--%>
                    <%--<td style="font-size: small" width="40%"><input type="hidden" name=id="e3event"--%>
                    <%--value="e3event"/></td>--%>
                    <%--<td><input class="w3-button" width="10%" value="REMOVE"></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td style="font-size: small" width="30%"><input type="hidden" name="e4date" id="e4date"--%>
                    <%--value=""/></td>--%>
                    <%--<td style="font-size: small" width="40%"><input type="hidden" name=id="e4event" value=""/>--%>
                    <%--</td>--%>
                    <%--<td><input class="w3-button" width="10%" value="REMOVE"></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td style="font-size: small" width="30%"><input type="hidden" name="e5date" id="e5date"--%>
                    <%--value=""/></td>--%>
                    <%--<td style="font-size: small" width="40%"><input type="hidden" name=id="e5event" value=""/>--%>
                    <%--</td>--%>
                    <%--<td><input class="w3-button" width="20%" value="REMOVE"></td>--%>
                    <%--</tr>--%>
                </table>
                <br>
                <form action="AddNewEvent" method="post">
                    <p style="font-size: small">
                        <label>Date</label>
                        <input class="w3-input" name="time" type="text" placeholder="DD/MM"></p>
                    <p style="font-size: small">
                        <label>Event</label>
                        <input class="w3-input" name="message" type="text"></p>
                    <p>
                        <button class="w3-btn w3-black" type="submit">Add</button>
                    </p>
                </form>
            </div>
        </div>

        <div id="My order" class="w3-container name" style="display:none">

            <div class="w3-col w3-container" style="width:70%">
                <div class="w3-padding" style="margin-left: 40px"></div>
                <form class="w3-container">
                    <br>
                    <h5 style="text-align:left"><b>My Order</b></h5>
                    <p style="font-size: small"> View your order history here</p>
                    <i><b><p style="font-size: small;font-family:Times"> * Any issues with a order please contact order
                        for Mr.WordSmith.com with your order</p></b></i>

                    <table cellspacing="10" cellpadding="5" style="font-size: small">

                        <th>Order ID</th>
                        <th>Order Placed</th>
                        <th>Order Address</th>
                        <th>Total</th>
                        <tr>
                            <td style="font-size: small" width="30%">ID</td>
                            <td style="font-size: small" width="30%">Time</td>
                            <td style="font-size: small" width="30%">Address it could be very long and please test this
                                line before used
                            </td>
                            <td style="font-size: small" width="35%">$5000</td>
                        </tr>
                        <%=OrderListViewAccountPage.getOrderListView(user)%>
                        <%--<tr>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o2summary"--%>
                        <%--id="o2summary" value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o2number" id="o2number"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o2time" id="o2time"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="35%"><input type="hidden" name="o2total" id="o2total"--%>
                        <%--value=""/></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o3summary"--%>
                        <%--id="o3summary" value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o3number" id="o3number"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o3time" id="o3time"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="35%"><input type="hidden" name="o3total" id="o3total"--%>
                        <%--value=""/></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o4summary"--%>
                        <%--id="o4summary" value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o4number" id="o4number"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o4time" id="o4time"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="35%"><input type="hidden" name="o4total" id="o4total"--%>
                        <%--value=""/></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o5summary"--%>
                        <%--id="o5summary" value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o5number" id="o5number"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="30%"><input type="hidden" name="o5time" id="o5time"--%>
                        <%--value=""/></td>--%>
                        <%--<td style="font-size: small" width="35%"><input type="hidden" name="o5total" id="o5total"--%>
                        <%--value=""/></td>--%>
                        <%--</tr>--%>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Footer -->
<div class="w3-row w3-section" style="background-color:#F8F8F8;margin-bottom:70px">
    <div class="w3-row w3-section" style="background-color:#F8F8F8">
        <center>
            <div class="w3-third w3-container w3-large" style="height:250px"><br>
                <a href="AboutUs.jsp"><i>
                    <p2 style="font-family:Times"><b>About Us</b></p2>
                </i></a><br><br>
                <p text-align="right" style="font-size:70%"><i class="fa fa-map-marker" style="width:30px"></i>PO Box
                    210, Abbotsford, VIC 3067</p>
                <p text-align="right" style="font-size:70%"><i class="fa fa-phone" style="width:30px"></i> +61
                    0425752986</p>
                <p text-align="right" style="font-size:70%"><i class="fa fa-envelope" style="width:30px"> </i>
                    customercare@mrwordsmith.com.au</p>
            </div>
        </center>
        <div class="w3-third w3-center w3-large " style="height:250px"><br>
            <a href="Contact.jsp"><i>
                <p2 style="font-family:Times"><b>Contact Us</b></p2>
            </i></a><br><br>
            <p style="font-size:70%"> FAQ</p>
            <p style="font-size:70%"> Privacy policy</p>
        </div>
        <div class="w3-third w3-center w3-large" style="height:250px">
            <br><br>
            <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>" target="_blank "><i
                    class="w3-xlarge fa fa-facebook-official"></i><br></a>
            <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>"
               target="_blank "><i class="w3-xlarge fa fa-pinterest-p"></i><br></a>
            <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>"
               target="_blank "><i class="w3-xlarge fa fa-twitter"></i><br></a>
            <a herf="https://www.instagram.com" target="_blank "><i class="w3-xlarge fa fa-instagram"></i></a>


        </div>
    </div>
</div>


<!-- click and turn off -->
<script>
    function openFile(evt, Name) {
        var i, x, tablinks;
        x = document.getElementsByClassName("name");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");

        for (i = 0; i < x.length; i++) {
            tablinks[i].className = tablinks[i].className.replace("w3-black", "");
        }
        document.getElementById(Name).style.display = "block";
        evt.currentTarget.className += " w3-black";
    }
</script>


</body>

</html>
