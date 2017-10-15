<%@ page import="database.DatabaseProduct" %>
<%@ page import="dto.Product" %>
<%@ page import="dto.User" %>

<%--
  Created by IntelliJ IDEA.
  User: Siya Yu
  Date: 10/9/17
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String string = request.getParameter("pid");
    Product product = DatabaseProduct.getProduct(string);
    session.setAttribute("Redirect","ProductDetail.jsp?pid="+string);
%>
<% User user = null;
    user = (User) session.getAttribute("user");
%>
<html>

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
    html,body{

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

<!-- title -->
<div class="w3-row w3-container">
    <div class="w3-left w3-padding-32">
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16" style="margin-left: 100px">Product</span>
    </div>
</div>
<!-- line-->
<div class="w3-panel w3-border-bottom w3-border-grey" style="margin-bottom: 50px"></div>

    <!-- product picture-->
    <div class="w3-row-padding" style="margin-top: 20px">
        <div class="w3-col w3-container" style="width: 20%"><p></p></div>
        <div class="w3-col w3-container " style="width: 30%">
            <%--<img src="http://assets1.blurb.com/pages/website-assets/homepage/childrens-books-1d6bda0f8b82256656c458d713ddf4bcaafccf34747947be11cf054a3a5919ee.jpg" style="width:75%; margin-top: 50px">--%>
            <%="<img src=\"" + product.getProductImg1() + "\" style=\"width:75%; margin-top: 50px\">"%>
        </div>
        <div class="w3-col w3-container" style="width:50%">
            <div class="w3-container">
                <h4><strong><%=product.getProductName()%>
                </strong></h4><br>
                <h8>
                    <small><a class="w3-text-gray">product code: <%=product.getProductID()%>   Size: A5</a></small>
                </h8>
            </div>
            <br>
            <div class="w3-container">
                <p>Shades</p>
                <!-- line -->
                <div class="w3-panel w3-border-bottom w3-border-grey"
                     style="margin-top: 10px;margin-bottom: 20px; margin-right: 100px">
                </div>
                <!-- Photo grid (modal) -->
                <div class="w3-row-padding">
                    <div class="w3-quarter">
                        <%="<img src=\"" + product.getProductImg2() + "\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"\" class=\"w3-hover-opacity\">"%>
                    </div>

                    <div class="w3-quarter">
                        <%="<img src=\"" + product.getProductImg2() + "\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"\" class=\"w3-hover-opacity\">"%>
                    </div>

                    <div class="w3-quarter">
                        <%="<img src=\"" + product.getProductImg2() + "\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"\" class=\"w3-hover-opacity\">"%>
                    </div>
                </div>


                <!-- Modal for full size images on click-->
                <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
                    <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
                    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
                        <img id="img01" class="w3-image">
                        <p id="caption"></p>
                    </div>
                </div>
                <!-- line -->
                <div class="w3-panel w3-border-bottom w3-border-grey"
                     style="margin-top: 20px;margin-bottom: 20px; margin-right: 100px">
                </div>
                <form action="AddProduct" method="post">
                    <div class="w3-row-padding">
                        <input type="hidden" name="pid" value="<%=string%>">
                        <p>Quantity &nbsp;<input type="number" input id="Prodty" name="ProdQty" type="number" value="0" min="0" max="10"/></p>
                        <a class="w3-right w3-xlarge" style="margin-right: 100px"><strong>$<%=product.getPrice()%>
                            AUD</strong></a>
                        <a class="w3-container" style="width: 60%"><p></p></a>
                    </div>
                    <br><br>
                    <%
                        String button ;
                        if(user==null){
                            button = "<button href=\"Login.jsp\" style=\"width:30%; margin-left:0px\"\n" +
                                    "                            onclick=\"document.getElementById('subscribe').style.display='block'\"\n" +
                                    "                            class=\"w3-button w3-block w3-black\">Add To Bag\n" +
                                    "                    </button>";
                        }else {
                            button="<button type=\"submit\" style=\"width:30%; margin-left:0px\"\n" +
                                    "                            onclick=\"document.getElementById('id05').style.display='block'\"\n" +
                                    "                            class=\"w3-button w3-block w3-black\">Add To Bag\n" +
                                    "                    </button>";
                        }
                    %>
                    <%=button%>
                </form>
                <!-- modal (order placed successfully)-->
                <div id="id05" class="w3-modal">
                    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:300px">
                        <div class="w3-center"><br>
                            <span onclick="document.getElementById('id05').style.display='none'" class="w3-button w3-xlarge w3-hover-black w3-display-topright" title="Close Modal">&times;</span>
                        </div>
                        <form class="w3-container" action="">
                            <div class="w3-section" align="center"><br><br>
                                <img src="images/icon.jpg" style="width: 18%">
                                <i><b><p style="font-family: Times"> Item added successfully!  </p></b></i><br><br><br>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- product description bar-->
    <div class="w3-padding w3-black" style="margin-top: 80px;max-width:100%">
        <center><a class="w3-large">Product Description</a></center>
    </div>
    <div class="w3-container" style="margin-left: 100px;margin-top: 50px;margin-bottom: 50px">

        <p style="font-size: small"><strong><%=product.getProductName()%>
        </strong></p><br>
        <p style="font-size: small">Premium quality </p>
        <p style="font-size: small">Calendar year</p>
        <p style="font-size: small">Off-white 250 GSM paper</p>
        <p style="font-size: small">Lined</p>
        <p style="font-size: small">Size: A5</p>
        <p style="font-size: small">Shade: Black</p>
    </div>
    <br><br><br>
</div></div>

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
    </div>
</footer>


</body>
</html>
