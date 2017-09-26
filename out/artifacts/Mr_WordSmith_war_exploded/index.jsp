<%@ page import="dto.User" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="dto.Product" %>
<%@ page import="database.DatabaseGetProduct" %><%--
  Created by IntelliJ IDEA.
  User: tonyzheng
  Date: 24/9/17
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</style>
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
    <i class="fa fa-facebook-official w3-hover-opacity w3-large w3-right"
       style="margin-left: 10px; margin-right: 20px "></i>
    <i class="fa fa-instagram w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
    <!-- <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>  -->
    <i class="fa fa-twitter w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
    <i class="fa fa-linkedin w3-hover-opacity w3-large w3-right" style="margin-left: 10px"></i>
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

<!-- subscribe -->
<div class="w3-bar-item" style="max-width:100%;margin-top:20px;margin-bottom:50px">
    <div class="w3-row w3-large">
        <center>
            <div class="w3-col " style="width:50%">
                <a>Enter your e-mail now! You will get <strong><big><a class="w3-text-red">15% off</a></big></strong> on
                    your first order.</a>
            </div>
        </center>
        <div class="w3-col" style="width:30%">
            <input class="w3-input w3-border w3-round" style="height: 80%" type="text" placeholder="Email Address">
        </div>
        <div class="w3-col" style="width:20%">
            <center>
                <button href="#login" class="w3-btn w3-black">Subscribe</button>
            </center>
        </div>

    </div>
</div>


<!-- Slideshow -->
<div class="w3-content w3-display-container">

    <div class="w3-display-container mySlides">
        <img src="images/Ad 2.jpg" style="width:100%">

    </div>

    <div class="w3-display-container mySlides">
        <img src="images/Ad 3.jpg" style="width:100%">

    </div>
    <div class="w3-display-container mySlides">
        <img src="images/Ad 7.jpg" style="width:100%">

    </div>


    <button class="w3-button w3-display-left w3-black" onclick="plusDivs(-1)">&#10094;</button>
    <button class="w3-button w3-display-right w3-black" onclick="plusDivs(1)">&#10095;</button>

</div>

<!-- Subscribe
<div class="w3-row" style="margin-top: 20px">
<div class="w3-col w3-container" style="width:10%"><p></p></div>
<div class="w3-col w3-container" style="width:80%">
<div class="w3-container w3-padding w3-black">
        <h4><center>Subscribe</center></h4>
      </div>
      <div class="w3-container w3-light-gray">
        <center><p>Enter your e-mail now.</p>
        <p>You will get <strong><big><a class="w3-text-red">15% off</a></big></strong> on your first order.</p>
        <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width:100%"></p></center>
        <p><button type="button" onclick="document.getElementById('subscribe').style.display='block'" class="w3-button w3-block w3-red">Subscribe</button></p>
      </div>

</div>
   <div class="w3-col w3-container" style="width:10%"><p></p></div>
</div>-->
<%
    HashMap<String, Product> products = DatabaseGetProduct.getProducts();

%>

<!-- products-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"><strong>Products</strong></span>
    </div>
    <!-- Grid -->
    <div class="w3-row-padding" id="plans">

        <div class="w3-third w3-margin-bottom">
            <a href="ProductDetail.jsp?pid=1">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Product 1 - Front.png" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 1</center>
                    </b></p>
                </div>

            </ul>
            </a>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Product 1 - Front.png" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 2</center>
                    </b></p>
                </div>

            </ul>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Product 1 - Front.png" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 3</center>
                    </b></p>
                </div>

            </ul>
        </div>
    </div>
</div>


<!-- Ins-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"><strong>Follow us on Instagram</strong></span>
    </div>
    <!-- Grid -->
    <div class="w3-row-padding">

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Ad 1.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 1</center>
                    </b></p>
                </div>

            </ul>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Ad 5.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 2</center>
                    </b></p>
                </div>

            </ul>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Ad 8.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 3</center>
                    </b></p>
                </div>

            </ul>
        </div>
    </div>
</div>

<!-- Blog-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"><strong>Blog</strong></span>
    </div>
    <!-- Grid -->
    <div class="w3-row-padding" id="plans">

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Ad 6.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 1</center>
                    </b></p>
                </div>

            </ul>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Ad 4.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 2</center>
                    </b></p>
                </div>

            </ul>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-border w3-center w3-hover-shadow">
                <img src="images/Ad 7.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
                <div class="w3-container w3-white">
                    <p><b>
                        <center>product 3</center>
                    </b></p>
                </div>

            </ul>
        </div>
    </div>

</div>


<!-- line-->
<div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 50px">
</div>


<!-- Footer -->
<div class="w3-row w3-section">
    <center>
        <div class="w3-third w3-container w3-white w3-large" style="height:250px">
            <h2>Contact Info</h2>
            <p><i class="fa fa-map-marker" style="width:30px"></i> Mr. wordSmith</p>
            <p><i class="fa fa-phone" style="width:30px"></i> Phone: +61 044783254</p>
            <p><i class="fa fa-envelope" style="width:30px"> </i> Email: mail@mail.com</p>
        </div>
    </center>
    <div class="w3-third w3-center w3-large w3-white" style="height:250px">
        <h2>About Us</h2>
        <p><a href="#aboutus">About us</a></p>
        <p><a href="#">Shipping & Delivery</a></p>
    </div>
    <div class="w3-third w3-center w3-large" style="height:250px">
        <h2>Follow Us</h2>
        <i class="w3-xlarge fa fa-facebook-official"></i><br>
        <i class="w3-xlarge fa fa-pinterest-p"></i><br>
        <i class="w3-xlarge fa fa-twitter"></i><br>
        <!-- <i class="w3-xlarge fa fa-flickr"></i><br> -->
        <i class="w3-xlarge fa fa-linkedin"></i>
    </div>
</div>


<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        if (n > x.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = x.length
        }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex - 1].style.display = "block";
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
        if (myIndex > x.length) {
            myIndex = 1
        }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 5000); // Change image every 2 seconds
    }
</script>


</body>
</html>

