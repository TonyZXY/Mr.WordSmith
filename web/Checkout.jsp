<%--
  Created by IntelliJ IDEA.
  User: tonyzheng
  Date: 14/9/17
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.          <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                            <center><h4 class="w3-text-grey w3-padding-16">- Step 1 -</h4></center>
                            <div class="w3-container">
                                <div class="w3-container">
                                    <div class="w3-half">
                                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                                style="width: 80%">Layout A
                                        </button><br>
                                    </div>
                                    <div class="w3-half">
                                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                                style="width: 80%">Layout B
                                        </button>
                                    </div><div><p></p></div>
                                </div>
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
    <script>var __adobewebfontsappname__="dreamweaver"</script>
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
    html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
    .mySlides {display:none}
    .w3-tag, .fa {cursor:pointer}
    .w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>
<body>

<!-- Links (sit on top) -->
<div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
    <div class="w3-third">
        <img src="4.0/images/icon.jpg" style="width: 15%;margin-left: 10%">
    </div>

    <div class="w3-right">
        <a href="#bag" class="w3-button w3-block"><b>Bag</b></a>
    </div>
    <div class="w3-right">
        <a href="#login" class="w3-button w3-block"><b>Account</b></a>
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
<div class="w3-bar-item" style="max-width:100%;margin-bottom:10px">
    <div class="w3-row w3-large w3-black">
        <div class="w3-col " style="width:20%">
            <a href="#" class="w3-button w3-block">Home</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="#shop" class="w3-button w3-block">Shop</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="#Blog" class="w3-button w3-block">Blog</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="#contact" class="w3-button w3-block">Contact</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="#AboutUs" class="w3-button w3-block">About Us</a>
        </div>
    </div>
</div>

<!-- title -->
<div class="w3-row w3-container">
    <div class="w3-left w3-padding-32">
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16"  style="margin-left: 100px">Checkout</span>
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

            <!-- shipping details -->
            <div class="w3-container">
                <div class="w3-col w3-container"><p></p></div>
                <h5><b>1. Shipping Details</b></h5>
            </div><br>
            <form>
                <div class="w3-row-padding" >
                    <div class="w3-half">
                        <label>First Name</label>
                        <input class="w3-input w3-border" type="text" >
                    </div>
                    <div class="w3-half">
                        <label>Last Name</label>
                        <input class="w3-input w3-border" type="text" >
                    </div>
                </div><br>
                <div class="w3-row-padding">
                    <div class="w3-half">
                        <label>Contact Phone</label>
                        <input class="w3-input w3-border" type="text" >
                    </div>
                    <div class="w3-half">
                        <label>Postcode</label>
                        <input class="w3-input w3-border" type="text" >
                    </div>
                </div><br>

                <div class="w3-row-padding">
                    <div class="w3-half">
                    <label>Shipping Address</label>
                    <input class="w3-input w3-border" type="text" >
                    </div>

                </div>
            </form><br><br><br><br><br><br><br><br><br><br><br><br><br>

            <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-half">
            <div class="w3-container">
                <div class="w3-col w3-container"><p></p></div>
                <h5><b>2. Payment Method</b></h5>
            </div><br>
            <div class="w3-container">
                <!-- paypal and card-->
                <div class="w3-container w3-half">
                    <a href="#paypal" onclick="myFunction('Demo1')" class="w3-bar-item w3-btn w3-block"><img src="../images/B1.jpg" style="width: 60%"></a>
                    <div id="Demo1" class="w3-hide w3-container">
                        <br>
                        <a herf="#paypal" class="w3-btn w3-black"style="width: 50%;align:center"><b>Paypal</b></a>
                        <br><hr><br>
                        <div class="w3-row-padding">
                            <form>
                                <label>Card Number</label>
                                <input class="w3-input w3-border" type="text" ><br>
                                <label>Expiry Date</label>
                                <input class="w3-input w3-border" type="text" ><br>
                                <label>CVV</label>
                                <input class="w3-input w3-border" type="text" ><br>
                                <label>Name on Card</label>
                                <input class="w3-input w3-border" type="text" >
                            </form>
                            <br>
                            <center><a class="w3-btn w3-black" style="width: 50%"><b>Pay card</b></a></center>

                        </div>
                    </div>
                </div>
                <!-- afterpay -->
                <div class="w3-container w3-half">
                    <a href="#afterpay"  onclick="myFunction('Demo2')" class="w3-btn w3-bar-item w3-block"><img src="../images/B2.jpg" style="width: 60%"></a>
                    <div id="Demo2" class="w3-hide w3-container">
                        <br>
                        <div class="w3-justify">
                            <p style="text-align: left"> <b>With Afterpay you can recieve your order now and pay in 4 equal fortnightly payments with no interest.</b><br><br>Available to customers in Australia with a debit or credit card. When you click 'Place Order' with Afterpay, you will be redirected to Afterpay to complete your order.</p>
                        </div>
                        <br><br>
                        <center><a class="w3-btn w3-black" style="width: 50%"><b>Afterpay</b></a></center>
                    </div>
                </div>
            </div>


            <!-- End Right Column -->
        </div>

        <!-- End Grid -->
    </div>

    <!-- End Page Container -->
</div>



<!-- Footer -->
<div class="w3-row w3-section"style="background-color:#F8F8F8;margin-bottom:70px" >
    <div class="w3-row w3-section"style="background-color:#F8F8F8">
        <center><div class="w3-third w3-container w3-large" style="height:250px; background-color:#F8F8F8"><br>
            <a href="#aboutus"><i><p2 style="font-family:Times"><b>About Us</b></p2></i></a><br><br>
            <p text-align="right" style="font-size:70%"><i class="fa fa-map-marker" style="width:30px"></i>PO Box 210, Abbotsford, VIC 3067</p>
            <p text-align="right"style="font-size:70%"><i class="fa fa-phone" style="width:30px"></i> +61 0425752986</p>
            <p text-align="right"style="font-size:70%"><i class="fa fa-envelope" style="width:30px"> </i> customercare@mrwordsmith.com.au</p>
        </div></center>
        <div class="w3-third w3-center w3-large " style="height:250px; background-color:#F8F8F8"><br>
            <a href="#contact"><i><p2 style="font-family:Times"><b>Contact Us</b></p2></i></a><br><br>
            <p style="font-size:70%"> FAQ</p>
            <p style="font-size:70%"> Privacy policy</p>
        </div>
        <div class="w3-third w3-center w3-large" style="height:250px; background-color:#F8F8F8">
            <br><br>
            <i class="w3-xlarge fa fa-facebook-official"></i><br>
            <i class="w3-xlarge fa fa-pinterest-p"></i><br>
            <i class="w3-xlarge fa fa-twitter"></i><br>
            <!-- <i class="w3-xlarge fa fa-flickr"></i><br> -->
            <i class="w3-xlarge fa fa-linkedin"></i>
        </div>
    </div>


<!-- Active Accordions -->
<script>
    function myFunction(id) {
        var x = document.getElementById(id);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
            x.previousElementSibling.className =
                x.previousElementSibling.className.replace("w3-black", "w3-red");
        } else {
            x.className = x.className.replace(" w3-show", "");
            x.previousElementSibling.className =
                x.previousElementSibling.className.replace("w3-red", "w3-black");
        }
    }
</script>

</body>
</html>










