<%--
  Created by IntelliJ IDEA.
  User: tonyzheng
  Date: 24/9/17
  Time: 1:10 PM
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
    <link href="../Documents/css/singlePageTemplate.css" rel="stylesheet" type="text/css">
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
        <a href="Login.jsp" class="w3-button w3-block"><b>Account</b></a>
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
<div class="w3-bar-item" style="max-width:100%;margin-top:0px;margin-bottom:10px">
    <div class="w3-row w3-large w3-black">
        <div class="w3-col " style="width:20%">
            <a href="index.jsp" class="w3-button w3-block">Home</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="ProductList.jsp" class="w3-button w3-block">Shop</a>
        </div>
        <div class="w3-col" style="width:20%">
            <a href="" class="w3-button w3-block">Blog</a>
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
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16" style="margin-left: 100px">Product</span>
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
        <div class="w3-third">

            <div class="w3-white w3-text-grey">
                <div class="w3-display-container">
                    <img src="http://assets1.blurb.com/pages/website-assets/homepage/childrens-books-1d6bda0f8b82256656c458d713ddf4bcaafccf34747947be11cf054a3a5919ee.jpg"
                         style="width:100%" alt="Avatar">

                </div>
                <div class="w3-container">
                </div>
            </div>
            <br>

            <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-twothird">

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <center><h4 class="w3-text-grey w3-padding-16">- Step 1 -</h4></center>
                <div class="w3-container">
                    <h5 class="w3-opacity w3-half"><b>Weekly view</b></h5>
                    <div class="w3-quarter">
                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large" style="width: 50%">
                            Layou1
                        </button>
                    </div>
                    <div class="w3-quarter">
                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large" style="width: 50%">
                            Layou2
                        </button>
                    </div>
                    <div class="w3-quarter">
                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large" style="width: 50%">
                            Layou3
                        </button>
                    </div>
                    <div class="w3-quarter">
                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large" style="width: 50%">
                            Layou4
                        </button>
                    </div>
                    <a class="w3-text-gray">OR</a>
                    <br><br>
                    <h5 class="w3-opacity w3-half"><b>Daily view</b></h5>
                    <div class="w3-quarter">
                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large" style="width: 50%">
                            Layou1
                        </button>
                    </div>
                    <div class="w3-quarter">
                        <button class="w3-button w3-white w3-border w3-border-gray w3-round-large" style="width: 50%">
                            Layou2
                        </button>
                    </div>


                </div>
                <br>
                <hr>

                <div class="w3-container w3-white">
                    <h4 class="w3-text-grey w3-padding-16">
                        <center>-Step 2-</center>
                    </h4>
                    <br>
                    <div class="w3-container">
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">lined
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Non-lined
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Page number
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Moon cycle
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Public holiday
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Sunrise,Sunset
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Page of To-do list
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Page of personal info
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Page of password
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Page of extra note
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">Page of social media handles
                            </button>
                        </div>
                        <div class="w3-half">
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 80%">None
                            </button>
                        </div>
                    </div>
                    <br>
                    <hr>
                    <div class="w3-container">
                        <h4 class="w3-text-grey w3-padding-16">
                            <center>-Step 3-</center>
                        </h4>
                        <br>
                        <center>
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 30%;margin-right: 30px">
                                <center>preview</center>
                            </button>
                            <button class="w3-button w3-white w3-border w3-border-gray w3-round-large"
                                    style="width: 30%">
                                <center>confirm</center>
                            </button>
                        </center>
                        <br>

                    </div>
                    <br><br><br>

                </div>

                <!-- End Right Column -->
            </div>

            <!-- End Grid -->
        </div>

        <!-- End Page Container -->
    </div>


    <!-- line -->
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
            <p><a href="AboutUs.jsp">About us</a></p>
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


</div>

</body>
</html>


