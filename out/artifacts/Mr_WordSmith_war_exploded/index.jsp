<%@ page import="dto.User" %>
<%@ page import="view.ProductPicHomePage" %>
<%@ page import="view.SubViewHomePage" %>
<%--
  Created by IntelliJ IDEA.
  User: tonyzheng
  Date: 24/9/17
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    User user = null;
    user = (User) session.getAttribute("user");
    session.setAttribute("Redirect","index.jsp");
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
    <div class="w3-third">
        <img src="images/icon.jpg" style="width: 15%;margin-left: 10%">
    </div>
<!-- logout -->
  <div class="w3-right s3">
      <a href="#bag" class="w3-button w3-block"><b>Logout</b></a>
    </div>
  
  
    <div class="w3-right">
        <a href="Bag.jsp" class="w3-button w3-block"><b>Bag</b></a>
    </div>
    <div class="w3-right">
        <%
            String link;
            if (user != null) {
                link = "<a href=\"Account.jsp\" class=\"w3-button w3-block\"><b>My Account</b></a> \n ";

            } else link = "<a href=\"Login.jsp\" class=\"w3-button w3-block\"><b>Login/Register</b></a>";
        %>
        <%=link%>
    </div>
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

<!-- subscribe -->
<%
    String view;
    if (user == null) {
        view = SubViewHomePage.view();
    } else {
        view = "";
    }
%>
<%=view%>

<%-- <div class="w3-bar-item" style="max-width:100%;margin-top:15px" align="center"> --%>
<%--<div class="w3-row w3-large">--%>
<%--<center>--%>
<%--<div class="w3-col " style="width:50%">--%>
<%--<i><b><p></p></b></i>--%>
<%--</div>--%>
<%--</center>--%>
<%--<form action="Sub" method="post">--%>
<%--<div class="w3-col" style="width:25%">--%>
<%--<input class="w3-input w3-border w3-round" style="height: 80%" name="email" type="text"--%>
<%--placeholder="Email Address">--%>
<%--</div>--%>
<%--<div class="w3-col" style="width:10%">--%>
<%--<center>--%>
<%--<button class="w3-btn w3-black" type="submit">Subscribe</button>--%>
<%--</center>--%>
<%--</div>--%>
<%--</form>--%>
<%--<br><br>--%>
<%--<b><i><p style="font-family:Times" align="center">Get a 15%-off on the 1st order by joining our mailing list! SUBSCRIBE US-%>
<%--- </p></i></b>--%>

<%--</div>--%>
<%--</div>--%>
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

<!-- products-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <i><span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family:Times"><b>New arrivals</b></span></i>
    </div>
    <!-- Grid -->
    <div class="w3-row-padding" id="plans">

        <%=ProductPicHomePage.getProducts()%>

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

<!-- Blog-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <i><span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family:Times"><b>Blog</b></span></i>
    </div>
    <!-- Grid -->
    <div class="w3-row-padding" id="plans">

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-center w3-hover-shadow">
                <a href="BlogArticle.jsp"><img src="images/Ad 6.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity"></a>
            </ul>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-center w3-hover-shadow">
                <a href="BlogArticle.jsp"><img src="images/Ad 4.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity"></a>
            </ul>
        </div>

        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-center w3-hover-shadow">
                <a href="BlogArticle.jsp"><img src="images/Ad 7.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity"></a>
            </ul>
        </div>
    </div>
</div>
<!-- Ins-->
<div class="w3-row-padding">
    <div class="w3-center w3-padding-64">
        <i><span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family:Times"><b>Follow our Instagram </b></span></i>
    </div>
    <!-- Grid -->
    <div class="w3-row-padding">
        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-center w3-hover-shadow">
                <blockquote class="instagram-media" data-instgrm-version="7"
                            style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:500px; padding:0; width:50%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);">
                    <div style="padding:8px;">
                        <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:50%;">
                            <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:60%; margin:0 auto -44px; position:relative; top:-22px; width:30px;"></div>
                        </div>
                        <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">
                            <a href="https://www.instagram.com/p/BE5l7_tDQbl/"
                               style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;"
                               target="_blank">Mr. Wordsmith (@mr.wordsmith) </a> ·
                            <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;"
                                  datetime="2016-05-02T09:30:02+00:00">2016-05-2，2:30 PDT
                            </time>
                        </p>
                    </div>
                </blockquote>
                <script async defer src="//platform.instagram.com/en_US/embeds.js"></script>
            </ul>
        </div>
        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul w3-center w3-hover-shadow">
                <blockquote class="instagram-media" data-instgrm-version="7"
                            style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:500px; padding:0; width:50%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);">
                    <div style="padding:8px;">
                        <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:50%;">
                            <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:60%; margin:0 auto -44px; position:relative; top:-22px; width:30px;"></div>
                        </div>
                        <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">
                            <a href="https://www.instagram.com/p/BE4tVCLjQdW/"
                               style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;"
                               target="_blank">Mr. Wordsmith (@mr.wordsmith) </a> ·
                            <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;"
                                  datetime="2016-05-02T01:15:23+00:00">2016-05-1，18:15 PDT
                            </time>
                        </p>
                    </div>
                </blockquote>
                <script async defer src="//platform.instagram.com/en_US/embeds.js"></script>
            </ul>
        </div>
        <div class="w3-third w3-margin-bottom">
            <ul class="w3-ul  w3-center w3-hover-shadow">
                <blockquote class="instagram-media" data-instgrm-version="7"
                            style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:500px; padding:0; width:50%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);">
                    <div style="padding:8px;">
                        <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:65%;">
                            <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:60%; margin:0 auto -44px; position:relative; top:-22px; width:30px;"></div>
                        </div>
                        <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">
                            <a href="https://www.instagram.com/p/BE2UGPjjQa5/"
                               style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;"
                               target="_blank">Mr. Wordsmith (@mr.wordsmith) </a> ·
                            <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;"
                                  datetime="2016-05-01T02:56:26+00:00">2016-04-30，19:56 PDT
                            </time>
                        </p>
                    </div>
                </blockquote>
                <script async defer src="//platform.instagram.com/en_US/embeds.js"></script>
            </ul>
            </a>
        </div>
    </div>
</div>
<br><br>


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
            x[i].style.display = "none"
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
