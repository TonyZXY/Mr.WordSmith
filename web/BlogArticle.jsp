<%--
  Created by IntelliJ IDEA.
  User: keqinzheng
  Date: 2017/10/5
  Time: 下午7:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="dto.User" %>
<%--
  Created by IntelliJ IDEA.
  User: keqinzheng
  Date: 2017/9/24
  Time: 下午5:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = null;
    user = (User)session.getAttribute("user");
%>
<!doctype html>
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
    <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>"target="_blank "><i class="fa fa-facebook-official w3-hover-opacity w3-large w3-right" style="margin-left: 10px; margin-right: 20px "></i></a>
    <a herf="https://www.instagram.com" target="_blank "><i class="fa fa-instagram w3-hover-opacity w3-large w3-right" style="margin-left: 10px"target="_blank "></i></a>
    <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>"target="_blank "><i class="fa fa-pinterest-p w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i></a>
    <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>"target="_blank "><i class="fa fa-twitter w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i></a>

</div>
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
            <a href="Blog.jsp" class="w3-button w3-block">Blog</a>
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

<div class="w3-row w3-container">
    <div class="w3-left w3-padding-32">
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16" style="margin-left: 100px">Blog</span>
    </div>
</div>
<!-- line-->
<div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 50px;margin-bottom: 50px">
</div>


<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

    <!-- The Grid -->
    <div class="w3-row-padding">
        <!-- Left Column -->
        <div class="w3-col w3-container" style="width:10%"></div>

        <div class="w3-col w3-container" style="width:60%">
            <div class="w3-container w3-white">
                <div class="w3-container">
                    <table>
                        <tr><td width="25%" style="align: center"><img src="https://78.media.tumblr.com/74b2d410edd7fbd702c74918a47e51ef/tumblr_oxcab4OSWe1tmp67mo1_1280.jpg" style="width:60%;align:right" alt="Avatar"></td></tr>
                        <tr>
                            <td width="50%"style="text-align: left"><b><br><p> Use promo code to apply your student discount </p></b><u><p style="font-size: small;text-align: left"> We offer a 20%-off for uni students,check out more details here </p></u><p style="font-size: small;text-align: left">Publish on: 05-10-17</p></td>
                            <td width="70%"style="text-align: left"><p style="font-size: small;font-family: Times">We offer 10% student discount. If you're a student studying in Australia, you can get the discount by confirming your student status here or by registering with UNiDAYS here. If you confirm your student status , you should receive your unique student promo code instantly.To use your discount, simply enter your unique student code into the ‘Promo code or Student Code’ box at the checkout.Discount is not available on delivery charges, sale items and gift vouchers. Discount cannot be used in conjunction with any other offer.<p></td>
                        </tr>
                    </table>
                </div>
            </div><br>


            <!-- End Left Column -->
        </div>

        <!-- Right Column -->

        <!-- End Right Column -->
    </div>

    <!-- End Grid -->
</div>

<!-- End Page Container -->
</div><br><br><br><br>



<!-- Footer -->
<div class="w3-row w3-section"style="background-color:#F8F8F8;margin-bottom:70px" >
    <div class="w3-row w3-section"style="background-color:#F8F8F8">
        <center><div class="w3-third w3-container w3-large" style="height:250px"><br>
            <a href="AboutUs.jsp"><i><p2 style="font-family:Times"><b>About Us</b></p2></i></a><br><br>
            <p text-align="right" style="font-size:70%"><i class="fa fa-map-marker" style="width:30px"></i>PO Box 210, Abbotsford, VIC 3067</p>
            <p text-align="right"style="font-size:70%"><i class="fa fa-phone" style="width:30px"></i> +61 0425752986</p>
            <p text-align="right"style="font-size:70%"><i class="fa fa-envelope" style="width:30px"> </i> customercare@mrwordsmith.com.au</p>
        </div></center>
        <div class="w3-third w3-center w3-large " style="height:250px"><br>
            <a href="Contact.jsp"><i><p2 style="font-family:Times"><b>Contact Us</b></p2></i></a><br><br>
            <p style="font-size:70%"> FAQ</p>
            <p style="font-size:70%"> Privacy policy</p>
        </div>
        <div class="w3-third w3-center w3-large" style="height:250px">
            <br><br>
            <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>"target="_blank "><i class="w3-xlarge fa fa-facebook-official"></i><br></a>
            <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>"target="_blank "><i class="w3-xlarge fa fa-pinterest-p"></i><br></a>
            <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>"target="_blank "><i class="w3-xlarge fa fa-twitter"></i><br></a>
            <a herf="https://www.instagram.com" target="_blank "><i class="w3-xlarge fa fa-instagram"></i></a>
        </div>
    </div>
</div>