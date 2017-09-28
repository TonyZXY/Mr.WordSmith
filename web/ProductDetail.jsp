<%@ page import="database.DatabaseGetProduct" %>
<%@ page import="dto.Product" %>
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

    Product product = DatabaseGetProduct.getProduct(string);
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
<div class="w3-bar-item" style="max-width:100%;margin-top:20px;margin-bottom:10px">
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
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16"  style="margin-left: 100px">Product</span>
    </div>
    <!-- line-->
    <div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 50px;margin-bottom: 50px">
    </div>

    <!-- product picture-->
    <div class="w3-row-padding" style="margin-top: 20px">
        <div class="w3-col w3-container" style="width: 20%"><p></p></div>
        <div class="w3-col w3-container " style="width: 30%">
            <%--<img src="http://assets1.blurb.com/pages/website-assets/homepage/childrens-books-1d6bda0f8b82256656c458d713ddf4bcaafccf34747947be11cf054a3a5919ee.jpg" style="width:75%; margin-top: 50px">--%>
            <%="<img src=\""+product.getProductImg1()+"\" style=\"width:75%; margin-top: 50px\">"%>
        </div>
        <div class="w3-col w3-container" style="width:50%">
            <div class="w3-container">
                <h4><strong><%=product.getProductName()%></strong></h4><br>
                <h8><small><a class="w3-text-gray">product code: <%=product.getProductID()%>   Size: A5</a></small></h8>
            </div>
            <br>
            <div class="w3-container">
                <p>Shades</p>
                <!-- line -->
                <div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 10px;margin-bottom: 20px; margin-right: 100px">
                </div>
                <!-- Photo grid (modal) -->
                <div class="w3-row-padding">
                    <div class="w3-quarter">
                        <%="<img src=\""+product.getProductImg2()+"\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"\" class=\"w3-hover-opacity\">"%>
                    </div>

                    <div class="w3-quarter">
                        <%="<img src=\""+product.getProductImg2()+"\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"\" class=\"w3-hover-opacity\">"%>
                    </div>

                    <div class="w3-quarter">
                        <%="<img src=\""+product.getProductImg2()+"\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"\" class=\"w3-hover-opacity\">"%>
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
                <div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 20px;margin-bottom: 20px; margin-right: 100px">
                </div>
                <div class="w3-row-padding">
                    <p>Quantity    <input type="number"input id="Prodty" name="ProdQty" type="number" value="0" min="0" max="10"/></p>
                    <a class="w3-right w3-xlarge" style="margin-right: 100px"><strong>$<%=product.getPrice()%> AUD</strong></a>
                    <a class="w3-container" style="width: 60%"><p></p></a>
                </div><br><br>
                <button type="button" style="width: 30%; margin-left: 150px" onclick="document.getElementById('subscribe').style.display='block'" class="w3-button w3-block w3-black w3-large">Add To Bag</button>
            </div>

        </div>

    </div>
    <!-- product description bar-->
    <div class="w3-padding w3-black" style="margin-top: 80px;max-width:100%">
        <center><a class="w3-large">Product Description</a></center>
    </div>
    <div class="w3-container" style="margin-left: 100px;margin-top: 50px;margin-bottom: 50px">

        <h3><strong><%=product.getProductName()%></strong></h3><br>
        <p>Premium quality </p>
        <p>Calendar year</p>
        <p>Off-white 250 GSM paper</p>
        <p>Lined</p>
        <p>Size: A5</p>
        <p>Shade: Black</p>
    </div>
    <br><br><br>

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





</body>
</html>
