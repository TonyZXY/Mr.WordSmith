<%@ page import="dto.User" %>
<%--
  Created by IntelliJ IDEA.
  User: tonyzheng
  Date: 27/9/17
  Time: 7:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    User user = null;
    user = (User) session.getAttribute("user");
%>

<!doctype html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mr.wordSmith</title>
    <link href="2.0/login page 2.0/css/singlePageTemplate.css" rel="stylesheet" type="text/css">
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
    <script>
        function onClick(element) {
            document.getElementById("img01").src = element.src;
            document.getElementById("modal01").style.display = "block";
            var captionText = document.getElementById("caption");
            captionText.innerHTML = element.alt;
        }
    </script>
</head>
<style>
    html, body, h1, h2, h3, h4 {
        font-family: "Lato", sans-serif
    }

    html, body {

        font-family: "Lato", sans-serif;
        margin: 0;
        padding: 0;
        height: 100%;

    }

    .content {
        min-height: 100%;
    }

    .content-inside {
        padding: 20px;
        padding-bottom: 40px;
    }

    .footer {
        height: 40px;
        margin-top: -40px;
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
</style>

<body>
<div class="content">
    <div class="content-inside">
        <!-- Links (sit on top) -->
        <div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
            <div class="w3-third">
                <img src="images/icon.jpg" style="width: 18%;margin-left: 10%">
            </div>
            <!-- logout -->
            <%
                String links;
                if (user != null) {
                    links = "<div class=\"w3-right s3\">\n" +
                            "        <form>\n" +
                            "            <button formaction=\"Logout\" type=\"submit\" formmethod=\"post\" class=\"w3-button w3-block\"><b>Logout</b>\n" +
                            "            </button>\n" +
                            "        </form>\n" +
                            "    </div>\n" +
                            "    <div class=\"w3-right\">\n" +
                            "        <a href=\"Bag.jsp\" class=\"w3-button w3-block\"><b>Bag</b></a>\n" +
                            "    </div>\n" +
                            "    <div class=\"w3-right\">\n" +
                            "        <a href=\"Account.jsp\" class=\"w3-button w3-block\"><b>My Account</b></a>" +
                            "</div>";
                } else {
                    links = "<div class=\"w3-right\">\n" +
                            "        <a href=\"Bag.jsp\" class=\"w3-button w3-block\"><b>Bag</b></a>\n" +
                            "    </div>\n" +
                            "<div class=\"w3-right\">" +
                            "<a href=\"Login.jsp\" class=\"w3-button w3-block\"><b>Login/Register</b></a>\n" +
                            "</div>";
                }
            %>
            <%=links%>

            <%--<div class="w3-right s3">--%>
            <%--<a href="#bag" class="w3-button w3-block"><b>Logout</b></a>--%>
            <%--</div>--%>
            <%----%>
            <%----%>
            <%--<div class="w3-right">--%>
            <%--<a href="Bag.jsp" class="w3-button w3-block"><b>Bag</b></a>--%>
            <%--</div>--%>
            <%--<div class="w3-right">--%>
            <%--<%--%>
            <%--String link;--%>
            <%--if (user != null) {--%>
            <%--link = "<a href=\"Account.jsp\" class=\"w3-button w3-block\"><b>My Account</b></a> \n ";--%>

            <%--} else link = "<a href=\"Login.jsp\" class=\"w3-button w3-block\"><b>Login/Register</b></a>";--%>
            <%--%>--%>
            <%--<%=link%>--%>
            <%--</div>--%>
            <br>
            <br>
            <br>
            <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>" target="_blank "><i
                    class="fa fa-facebook-official w3-hover-opacity w3-large w3-right"
                    style="margin-left: 10px; margin-right: 20px "></i></a>
            <a herf="https://www.instagram.com" target="_blank "><i
                    class="fa fa-instagram w3-hover-opacity w3-large w3-right" style="margin-left: 10px"
                    target="_blank "></i></a>
            <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>"
               target="_blank "><i class="fa fa-pinterest-p w3-hover-opacity w3-large w3-right"
                                   style="margin-left: 10px"></i></a>
            <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>"
               target="_blank "><i class="fa fa-twitter w3-hover-opacity w3-large w3-right"
                                   style="margin-left: 10px"></i></a>

        </div>
    </div>

    <!-- function bar -->
    <div class="w3-bar-item" style="max-width:100%;margin-top:0px;">
        <div class="w3-row w3-large w3-black">
            <div class="w3-col " style="width:20%">
                <a href="index.jsp" class="w3-button w3-block">Home</a>
            </div>
            <div class="w3-col" style="width:20%">
                <a href="ProductList.jsp" class="w3-button w3-block">Shop</a>
            </div>
            <div class="w3-col" style="width:20%">
                <a href="Blog.jsp" class="w3-button w3-block">Blog</a>
            </div>
            <div class="w3-col" style="width:20%">
                <a href="Contact.jsp" class="w3-button w3-block">Contact</a>
            </div>
            <div class="w3-col" style="width:20%">
                <a href="AboutUs.jsp" class="w3-button w3-block">About Us</a>
            </div>
        </div>
    </div>

    <!-- title -->
    <div class="w3-row w3-container">
        <div class="w3-left w3-padding-32">
            <span class="w3-xlarge w3-border-dark-grey w3-padding-16" style="margin-left: 100px">Login/ Register</span>
        </div>
    </div>
    <!-- line-->
    <div class="w3-panel w3-border-bottom w3-border-grey" style="margin-bottom: 50px">
    </div>
    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;">

        <!-- The Grid -->
        <div class="w3-row-padding">

            <!-- Left Column -->
            <div class="w3-half">
                <!-- login -->
                <div class="w3-row">
                    <div class="w3-col w3-container">
                        <form class="w3-container" action="Login" method="post">
                            <br><br><br><br>
                            <h3 style="font-family: Times">
                                <i><b>
                                    <center>Have an account already?</center>
                                </b></i>
                            </h3>
                            <h5 style="font-family: Times">
                                <i>
                                    <center>Happy to see you!</center>
                                </i>
                            </h5>
                            <br><br>
                            <p>
                                <label>Email</label>
                                <input class="w3-input" type="email" name="UserName" required="required"
                                       pattern="[^ @]*@[^ @]*"></p>
                            <p>
                                <label>Password</label>
                                <input class="w3-input" name="Password" required="required" type="password"></p>
                            <p>
                                <u><a href="ResetPassword.jsp"><label>Forgot your Password?</label></a></u>


                                    <%
                            String LoginMessage = null;
                            String LoginDisplay = "";
                            LoginMessage = (String) session.getAttribute("message");
                            if (LoginMessage != null) {
                                LoginDisplay = "<label class=\"w3-red\"> " + LoginMessage + "<label>";
                            }
                        %>
                                    <%=LoginDisplay%>

                            <p>
                                <button class="w3-btn w3-black" type="submit">Login</button>
                            </p>
                            <br><br>

                        </form>
                    </div>
                    <br>
                </div>

                <!-- End Left Column -->
            </div>

            <!-- Right Column -->
            <div class="w3-half">

                <!-- register -->
                <div class="w3-col w3-container">
                    <form class="w3-container" action="Register" method="post">
                        <br><br><br><br>
                        <h3 style="font-family: Times">
                            <i><b>
                                <center>Don't have an account?</center>
                            </b></i>
                        </h3>
                        <h5 style="font-family: Times">
                            <i>
                                <center>Join us!</center>
                            </i>
                        </h5>
                        <br><br>
                        <p>
                            <label>Firstname</label>
                            <input class="w3-input" type="text" name="FirstName" required="required"></p>
                        <p>
                            <label>Lastname</label>
                            <input class="w3-input" type="text" name="LastName" required="required"></p>
                        <p>
                            <label>Email</label>
                            <%
                                String Email;
                                if (session.getAttribute("emailInput") != null) {
                                    Email = "<input class=\"w3-input\" type=\"email\" name=\"Email\" value=\"" +
                                            session.getAttribute("emailInput") + "\" required=\"required\" pattern=\"[^ @]*@[^ @]*\">";
                                } else {
                                    Email = "<input class=\"w3-input\" type=\"email\" name=\"Email\" required=\"required\" pattern=\"[^ @]*@[^ @]*\">";
                                }
                                session.removeAttribute("emailInput");
                            %>
                            <%=Email%>
                            <%--<input class="w3-input" type="text" name="Email" value="" required="required" pattern="[^ @]*@[^ @]*">--%>
                            <%--<input class="w3-input" type="text" name="Email" required="required" pattern="[^ @]*@[^ @]*">--%>
                        </p>
                        <p>
                            <label>Address</label>
                            <input class="w3-input" type="text" name="Address" required="required"></p>
                        <p>
                            <label>Date of birth</label>
                            <input class="w3-input" type="date" placeholder="DD-MM" name="Birthday" required="required">
                        </p>
                        <p>
                            <label>Phone Number</label>
                            <input class="w3-input" type="number" required="required" name="PhoneNumber"></p>
                        <p>
                            <label>Password</label>
                            <input class="w3-input" type="password" name="Password" id="setpwd" required="required"></p>
                        <p>
                            <label>Confirm Password</label>
                            <input class="w3-input" type="password" id="cfmpwd" required="required"
                                   oninput="validatePassword(this)">

                            <script language='javascript' type='text/javascript'>

                                var pwd = document.getElementById("setpwd")
                                    , confirmpwd = document.getElementById("cfmpwd");

                                function validatePassword() {
                                    if (pwd.value != confirmpwd.value) {
                                        confirmpwd.setCustomValidity("Passwords Don't Match");
                                    } else {
                                        confirmpwd.setCustomValidity('');
                                    }
                                }
                            </script>
                        </p>
                        <p>
                            <%
                                String RegisterMessage = null;
                                String RegisterDisplay = "";
                                RegisterMessage = (String) session.getAttribute("RegisterMessage");
                                if (RegisterMessage != null) {
                                    RegisterDisplay = "<label class=\"w3-red\"> " + RegisterMessage + "<label>";
                                }
                            %>
                            <%=RegisterDisplay%>
                        </p>
                        <p>
                            <button class="w3-btn w3-black" type="submit">Register</button>
                        </p>
                    </form>
                </div>

                <!-- End Right Column -->
            </div>

            <!-- End Grid -->
        </div>

        <!-- End Page Container -->
    </div>
</div>
</div>
<br><br>
<!-- Footer -->
<footer>
    <div class="footer">
        <div class="w3-row w3-section" style="background-color:#F8F8F8;margin-bottom:70px">
            <div class="w3-row w3-section" style="background-color:#F8F8F8">
                <center>
                    <div class="w3-third w3-container w3-large" style="height:250px"><br>
                        <a href="AboutUs.jsp"><i>
                            <p2 style="font-family:Times"><b>About Us</b></p2>
                        </i></a><br><br>
                        <p text-align="right" style="font-size:70%"><i class="fa fa-map-marker" style="width:30px"></i>POBox
                            210, Abbotsford, VIC 3067</p>
                        <p text-align="right" style="font-size:70%"><i class="fa fa-phone" style="width:30px"></i>
                            +610425752986</p>
                        <p text-align="right" style="font-size:70%"><i class="fa fa-envelope" style="width:30px"></i>customercare@mrwordsmith.com.au
                        </p>
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
    </div>
</footer>

</body>
</html>
