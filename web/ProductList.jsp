<%--
  Created by IntelliJ IDEA.
  User: Siya Yu
  Date: 10/9/17
  Time: 1:44 PM
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
        <a href="Login.jsp" class="w3-button w3-block"><b>Login/ Register</b></a>
    </div>
    <br>
    <br>
    <br>
    <i class="fa fa-facebook-official w3-hover-opacity w3-large w3-right" style="margin-left: 10px, margin-right: 20px"></i>
    <i class="fa fa-instagram w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
    <!-- <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>  -->
    <i class="fa fa-twitter w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
    <i class="fa fa-linkedin w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
</div>


<!-- function bar -->
<div class="w3-bar-item" style="max-width:100%;margin-top:0px;margin-bottom:10px">
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

<!-- title -->
<div class="w3-row w3-container">
    <div class="w3-left w3-padding-32">
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16"  style="margin-left: 100px">Products</span>
    </div>
    <!-- line-->
    <div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 50px;margin-bottom: 10px">
    </div>

    <!-- products-->
    <div class="w3-row-padding">
        <div class="w3-center w3-padding-32">
            <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">All Products</span>
        </div>
        <div class="w3-col w3-container" style="width:5%"><p></p></div>
        <div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">
            <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
            <div class="w3-container w3-white">
                <p><b><center>product 1</center></b></p>
                <center><p>$ 40</p></center>
            </div>
        </div>
        <div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">
            <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
            <div class="w3-container w3-white">
                <p><b><center>product 2</center></b></p>
                <center><p>$ 40</p></center>

            </div>
        </div>
        <div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">
            <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
            <div class="w3-container w3-white">
                <p><b><center>product 3</center></b></p>
                <center><p>$ 40</p></center>
            </div>
        </div>
        <div class="w3-col w3-container w3-margin-bottom" style="width: 22.5%">
            <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
            <div class="w3-container w3-white">
                <p><b><center>product 4</center></b></p>
                <center><p>$ 40</p></center>
            </div>
        </div>
        <div class="w3-col w3-container" style="width:5%"><p></p></div>
    </div>
    <br><br><br><br><br><br><br>




    <!-- line -->
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






</div>


</body>
</html>
