<%@ page import="dto.User" %><%--
  Created by IntelliJ IDEA.
  User: Yinlei Lin
  Date: 18/9/17
  Time: 10:27 AM
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
            user = (User)session.getAttribute("user");
            String link;
            if(user!=null){
                link = "<a href=\"Account.jsp\" class=\"w3-button w3-block\"><b>My Account</b></a> \n "+ user.getFirstName();
            }else link = "<a href=\"Login.jsp\" class=\"w3-button w3-block\"><b>Login</b></a>";
        %>
        <%=link%>
    </div>
    <br>
    <br>
    <br>
    <i class="fa fa-facebook-official w3-hover-opacity w3-large w3-right" style="margin-left: 10px;margin-right: 20px"></i>
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


<!-- Slideshow -->
<div class="w3-content w3-display-container">

    <div class="w3-display-container mySlides">
        <img src="http://awallpapersimages.com/wp-content/uploads/2016/10/hours-arrow-black-white.jpg" style="width:100%">

    </div>

    <div class="w3-display-container mySlides">
        <img src="https://wallpaperscraft.com/image/glasses_miscellaneous_book_cloth_black_white_31415_1366x768.jpg" style="width:100%">

    </div>



    <button class="w3-button w3-display-left w3-black" onclick="plusDivs(-1)">&#10094;</button>
    <button class="w3-button w3-display-right w3-black" onclick="plusDivs(1)">&#10095;</button>

</div>

<!-- Subscribe -->
<div class="w3-row" style="margin-top: 20px">
    <div class="w3-col w3-container" style="width:20%"><p></p></div>
    <div class="w3-col w3-container" style="width:60%">
        <div class="w3-container w3-padding w3-black">
            <h4><center>Subscribe</center></h4>
        </div>
        <div class="w3-container w3-light-gray">
            <center><p>Join our mailing list now.</p>
                <p> Have your <strong><big><a class="w3-text-red">15% off</a></big></strong> on the first order.</p>
                <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width:100%"></p></center>
            <center><p><button type="button" onclick="document.getElementById('subscribe').style.display='block'" class="w3-button w3-block w3-black">Subscribe</button></p></center>
        </div>

    </div>
    <div class="w3-col w3-container" style="width:20%"><p></p></div>
</div>


<!-- Product-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"><strong>Products</strong></span>
    </div>
    <div class="w3-col w3-container" style="width:5%"><p></p></div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 1</center></b></p>
        </div>
    </div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 2</center></b></p>

        </div>
    </div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 3</center></b></p>
        </div>
    </div>
    <div class="w3-col w3-container" style="width:5%"><p></p></div>
</div>



<!-- Ins-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"><strong>Follow us on Instagram</strong></span>
    </div>
    <div class="w3-col w3-container" style="width:5%"><p></p></div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 1</center></b></p>
        </div>
    </div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 2</center></b></p>

        </div>
    </div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 3</center></b></p>
        </div>
    </div>
    <div class="w3-col w3-container" style="width:5%"><p></p></div>
</div>

<!-- Blog -->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"><strong>Blog</strong></span>
    </div>
    <div class="w3-col w3-container" style="width:5%"><p></p></div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 1</center></b></p>
        </div>
    </div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 2</center></b></p>

        </div>
    </div>
    <div class="w3-col w3-container w3-margin-bottom" style="width: 30%">
        <img src="https://cdn.shopify.com/s/files/1/1012/7888/t/9/assets/logo.png?18127308992302308980" alt="Norway" style="width:100%" class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p><b><center>product 3</center></b></p>
        </div>
    </div>
    <div class="w3-col w3-container" style="width:5%"><p></p></div>
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




<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        if (n > x.length) {slideIndex = 1}
        if (n < 1) {slideIndex = x.length}
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex-1].style.display = "block";
    }
</script>


<!-- automatic Slideshow -->
<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel, 2000); // Change image every 2 seconds
    }
</script>

</body>
</html>
