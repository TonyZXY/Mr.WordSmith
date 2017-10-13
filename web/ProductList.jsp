<%@ page import="dto.User" %>
<%@ page import="view.ProductPicProductListPage" %>
<%@ page import="view.ProductPicHomePage" %>
<%--
  Created by IntelliJ IDEA.
  User: Siya Yu
  Date: 10/9/17
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = null;
    user = (User) session.getAttribute("user");
    session.setAttribute("Redirect","ProductList.jsp");
%>
<html lang="en-US">
<style>
    .cw3-col w3-container w3-margin-bottom {
        display: flex;
        align-items: center;
        justify-content: center;
    }

</style>
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
                    "    </div>\n"+
                    "<div class=\"w3-right\">"+
                    "<a href=\"Login.jsp\" class=\"w3-button w3-block\"><b>Login/Register</b></a>\n"+
                    "</div>";
        }
    %>
    <%=links%>
    <%--<div class="w3-right s3">--%>
        <%--<a href="#bag" class="w3-button w3-block"><b>Logout</b></a>--%>
    <%--</div>--%>


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
    <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>" target="_blank "><i class="fa fa-facebook-official w3-hover-opacity w3-large w3-right" style="margin-left: 10px; margin-right: 20px "></i></a>
    <a herf="https://www.instagram.com" target="_blank "><i class="fa fa-instagram w3-hover-opacity w3-large w3-right" style="margin-left: 10px" target="_blank "></i></a>
    <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>" target="_blank "><i class="fa fa-pinterest-p w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i></a>
    <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>" target="_blank "><i class="fa fa-twitter w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i></a>

</div>
</div>

<!-- function bar -->
<div class="w3-bar-item" style="max-width:100%;margin-bottom:10px">
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
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16" style="margin-left: 100px">Shop</span>
    </div>
</div>
<!-- line-->
<div class="w3-panel w3-border-bottom w3-border-grey" style="margin-bottom: 50px">
</div>

    <!-- products-->
    <div class="w3-row-padding">

        <div class="w3-col w3-container" style="width:5%"><p></p></div>

        <%=ProductPicProductListPage.getProductView()%>
        <%--<div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">--%>
        <%--<a href="ProductDetail.jsp?pid=1">--%>
        <%--<img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">--%>
        <%--<div class="w3-container w3-white">--%>
        <%--<p><b><center>product 1</center></b></p>--%>
        <%--<center><p>$ 40</p></center>--%>
        <%--</div>--%>
        <%--</a>--%>
        <%--</div>--%>

        <%--<div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">--%>
        <%--<img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">--%>
        <%--<div class="w3-container w3-white">--%>
        <%--<p><b><center>product 2</center></b></p>--%>
        <%--<center><p>$ 40</p></center>--%>

        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">--%>
        <%--<img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">--%>
        <%--<div class="w3-container w3-white">--%>
        <%--<p><b><center>product 3</center></b></p>--%>
        <%--<center><p>$ 40</p></center>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">--%>
        <%--<img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">--%>
        <%--<div class="w3-container w3-white">--%>
        <%--<p><b><center>product 4</center></b></p>--%>
        <%--<center><p>$ 40</p></center>--%>
        <%--</div>--%>
        <%--</div>--%>
        <div class="w3-col w3-container" style="width:5%"><p></p></div>
    </div>
    <br><br><br><br><br><br><br>
  
  
  <!-- product list new -->
  <div class="w3-row-padding">
    <!-- Grid -->
    <div class="w3-row-padding" id="plans">

        <%=ProductPicProductListPage.getProductView()%>

        <%--This part code used to demo the static page of the home page product part--%>

        <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<a href="ProductDetail.jsp?pid=1">--%>
        <%--<ul class="w3-ul w3-center w3-hover-shadow">--%>
        <%--<img src="images/Product 1 - Front.png" alt="Norway" style="width:100%" class="w3-hover-opacity">--%>
        <%--<div class="w3-container w3-white">--%>
        <%--<p><b>--%>
        <%--<center>product 1</center>--%>
        <%--</b></p>--%>
        <%--</div>--%>
        <%--</ul>--%>
        <%--</a>--%>
        <%--</div>--%>

        <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<ul class="w3-ul w3-center w3-hover-shadow">--%>
        <%--<img src="images/Product 1 - Front.png" alt="Norway" style="width:100%" class="w3-hover-opacity">--%>
        <%--<div class="w3-container w3-white">--%>
        <%--<p><b>--%>
        <%--<center>product 2</center>--%>
        <%--</b></p>--%>
        <%--</div>--%>

        <%--</ul>--%>
        <%--</div>--%>

        <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<ul class="w3-ul w3-center w3-hover-shadow">--%>
        <%--<img src="images/Product 1 - Front.png" alt="Norway" style="width:100%" class="w3-hover-opacity">--%>
        <%--<div class="w3-container w3-white">--%>
        <%--<p><b>--%>
        <%--<center>product 3</center>--%>
        <%--</b></p>--%>
        <%--</div>--%>

        <%--</ul>--%>
        <%--</div>--%>
    </div>
</div>

    <!-- Footer -->
<footer>
    <div class="w3-row w3-section" style="background-color:#F8F8F8;margin-bottom:70px">
        <div class="w3-row w3-section" style="background-color:#F8F8F8">
            <center>
                <div class="w3-third w3-container w3-large" style="height:250px"><br>
                    <a href="AboutUs.jsp"><i>
                        <p2 style="font-family:Times"><b>About Us</b></p2>
                    </i></a><br><br>
                    <p text-align="right" style="font-size:70%"><i class="fa fa-map-marker" style="width:30px"></i>POBox 210, Abbotsford, VIC 3067</p>
                    <p text-align="right" style="font-size:70%"><i class="fa fa-phone" style="width:30px"></i> +610425752986</p>
                    <p text-align="right" style="font-size:70%"><i class="fa fa-envelope" style="width:30px"></i>customercare@mrwordsmith.com.au</p>
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
                <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>" target="_blank "><i class="w3-xlarge fa fa-facebook-official"></i><br></a>
                <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>" target="_blank "><i class="w3-xlarge fa fa-pinterest-p"></i><br></a>
                <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>" target="_blank "><i class="w3-xlarge fa fa-twitter"></i><br></a>
                <a herf="https://www.instagram.com" target="_blank "><i class="w3-xlarge fa fa-instagram"></i></a>

            </div>
        </div>
    </div>
</footer>



</body>
</html>
