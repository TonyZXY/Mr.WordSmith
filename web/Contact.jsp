<%@ page import="dto.User" %><%--
  Created by IntelliJ IDEA.
  User: s3607997
  Date: 10/9/17
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mr.wordSmith</title>
    <link href="css/singlePageTemplate.css" rel="stylesheet" type="text/css">
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
<body>

<!-- Links (sit on top) -->

<div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
    <a><strong>MR.</strong>wordsmith</a>

    <div class="w3-right s3">
        <a href="Bag.jsp" class="w3-button w3-block"><b>Bag</b></a>
    </div>
    <div class="w3-right s3">
        <%
            User user = null;
            user = (User) session.getAttribute("user");
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
    <i class="fa fa-facebook-official w3-hover-opacity w3-large w3-right" style="margin-left: 10px; margin-right: 20px "></i>
    <i class="fa fa-instagram w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
    <!-- <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>  -->
    <i class="fa fa-twitter w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
    <i class="fa fa-linkedin w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
</div>


<!-- function bar -->
<div class="w3-bar-item" style="max-width:100%;margin-top:0px;margin-bottom:20px">
    <div class="w3-row w3-large w3-black">
        <div class="w3-col " style="width:20%">
            <a href="index.jsp" class="w3-button w3-block">Home</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="ProductList.jsp" class="w3-button w3-block">Shop</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="#Blog" class="w3-button w3-block">Blog</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="Contact.jsp" class="w3-button w3-block">Contact</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="AboutUs.jsp" class="w3-button w3-block">AboutUs</a>
        </div>
    </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px">
    <center><img class="w3-image" src="https://cmkt-image-prd.global.ssl.fastly.net/0.1.0/ps/2784005/580/410/m1/fpnw/wm0/3-(1)-.jpg?1496285655&s=83d62028e29a4f40e9fb253381d34ce7" alt="Hamburger Catering" width="1000" height="800"></center>
    <div class="w3-display-middle w3-padding-large w3-opacity">
        <h1 class="w3-xxxlarge w3-text-white"><b>Contact</b></h1>
    </div>
</header>
<br><br><br>


<!-- The Band Section -->
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h3 class="w3-wide"><b>Shipping & Delivery</b></h3><br>
    <p class="w3-justify">.</p>
    <h3 class="w3-wide"><b>Returns & Exchange</b></h3>
    <br>
    <p class="w3-justify">We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
        ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur
        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    <h3 class="w3-wide"><b>FAQ</b></h3><br>
    <p class="w3-justify">We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
        ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur
        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
</div>


<!-- line-->
<div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 50px">
</div>

<!-- Footer -->
<footer class="w3-padding-64 w3-white w3-small w3-center" id="footer">
    <div class="w3-row-padding">
        <div class="w3-col s4">
            <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" class="w3-round" alt="Norway">
            <h4>Mr.wordSmith</h4>
        </div>

        <div class="w3-col s4">
            <h4><strong>About</strong></h4>
            <p><a href="AboutUs.jsp">About us</a></p>
            <p><a href="#">Shipping & Delivery</a></p>

            <p><a href="#">Help</a></p>

            <br><br><br>
            <i class="fa fa-facebook-official w3-hover-opacity w3-large" style="margin-right: 10px"></i>
            <i class="fa fa-instagram w3-hover-opacity w3-large" style="margin-right: 10px"></i>
            <i class="fa fa-twitter w3-hover-opacity w3-large" style="margin-right: 10px"></i>
            <i class="fa fa-linkedin w3-hover-opacity w3-large"></i>
            <!-- <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
             <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>  -->


        </div>

        <div class="w3-col s4 w3-justify">
            <h4><strong>Company</strong></h4>
            <p><i class="fa fa-fw fa-map-marker"></i> Mr.wordSmith</p>
            <p><i class="fa fa-fw fa-phone"></i> 0044123123</p>
            <p><i class="fa fa-fw fa-envelope"></i> ex@mail.com</p>
            <br>
            <h4><strong>We accept</strong></h4>
            <p><i class="fa fa-fw fa-cc-paypal"></i> Paypal</p>
            <p><i class="fa fa-fw fa-credit-card"></i> Credit Card</p>

        </div>
    </div>
</footer>






</body>
</html>
