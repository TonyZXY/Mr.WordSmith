<%@ page import="database.DatabaseBagItems" %>
<%@ page import="dto.Item" %>
<%@ page import="dto.User" %>
<%@ page import="view.BagProductView" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tonyzheng
  Date: 10/9/17
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    User user = null;
    ArrayList<Item> bag = new ArrayList<>();
    user = (User) session.getAttribute("user");
    if (user != null) {
        bag = DatabaseBagItems.getBag(user.getUserID());
        session.setAttribute("bagItem", bag);
    }
    session.setAttribute("Redirect","Bag.jsp");

%>
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
        padding-bottom: 50px;
    }
    .footer {
        height: 50px;
        margin-top: -50px;
    }


</style>

<body>

<div class="content">
 <div class="content-inside">

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


    <%--TODO
        need to do a check login function, when no user object, display ask user to login, else display bag items--%>
    <div class="w3-row">
        <div class="w3-col w3-container" style="margin-top: 30px; width: 90%;align: center">

            <%
                String view;
                if (user == null) {
                    session.setAttribute("Redirect", "Bag.jsp");
                    view = "Please <a href=\"Login.jsp\">Login</a> before checking shopping bag";
                } else {
                    view = BagProductView.getBagView(bag);
                }

            %>

            <%=view%>

            <!-- 1/3 details -->
            <%--<form name="Update" method="post">--%>
            <%--<table cellspacing="5" cellpadding="5" align="center"><br>--%>
            <%--<tr>--%>
            <%--<th> Product</th>--%>
            <%--<th>Description</th>--%>
            <%--<th> Price</th>--%>
            <%--<th> Quantity</th>--%>
            <%--<th> Subtotal</th>--%>
            <%--</tr>--%>
            <%--<tr></tr>--%>
            <%--<%=BagProductView.getBagView(bag)%>--%>
            <%--<tr height="45%">--%>
            <%--<td width="25%" align="center"><img--%>
            <%--src="https://78.media.tumblr.com/69bcfcbbfc74ae89d1c2ff9281298a17/tumblr_ox6yb7jq3c1tmp67mo1_1280.png"--%>
            <%--width="65%"></td>--%>
            <%--<td style="font-size: small" width="25%" align="left">--%>
            <%--Name:<%=bag.get(1).getProduct().getProductName()%><input type="hidden" name="Prod1name"--%>
            <%--id="Prod1name"--%>
            <%--value="Prod1name"/><br>--%>
            <%--Product code:<%=bag.get(1).getProduct().getProductID()%><input type="hidden"--%>
            <%--name="Prod1name"--%>
            <%--id="Prod1code"--%>
            <%--value="Prod1code"/><br>--%>
            <%--<td width="15%" align="center" style="font-size: small">$ <%=bag.get(1).getProduct().getPrice()%><input style="font-size: small"--%>
            <%--type="hidden" name="Prod1Price"--%>
            <%--id="Prod1Price" value="10"/>--%>
            <%--</td>--%>
            <%--<td width="15%" align="center"><%=bag.get(1).getNumber()%><input style="font-size: small" id="Prod1Qty" name="Prod1Qty"--%>
            <%--type="number" value="0" min="0" max="10"--%>
            <%--/></td>--%>
            <%--<td width="15%" align="center"><p id="Prod1SubTol" style="font-size: small">product total price</p><input--%>
            <%--id="Prod1Tol" name="Prod1Tol" type="hidden" value="0"/></td>--%>
            <%--<td width="10%"><input type="hidden" name="productID" value=<%=bag.get(1).getProduct().getProductID()%>><button class="w3-button" formaction="RemoveBagItem" formmethod="post" style="font-size: small" type="submit">REMOVE</button></form></td>--%>
            <%--</tr>--%>

            <%--<tr height="45%">--%>
            <%--<td width="25%" height="35%" align="center"><img src=""></td>--%>
            <%--<td style="font-size: small" width="25%" align="left">--%>
            <%--Name:product 2<input type="hidden" name="Prod2name" id="Prod2name" value="Prod2name"/><br>--%>
            <%--Product code: product 2<input type="hidden" name="Prod2name" id="Prod2code" value="Prod2code"/><br>--%>
            <%--<td width="15%" align="center"> product 2 price<input style="font-size: small" type="hidden" name="Prod2Price"--%>
            <%--id="Prod2Price" value=""/></td>--%>
            <%--<td width="15%" align="center"> product 2 quantity<input style="font-size: small" id="Prod2Qty" name="Prod2Qty"--%>
            <%--type="number" value="0" min="0" max="10"--%>
            <%--/></td>--%>
            <%--<td width="15%" align="center">product total price<p style="font-size: small" id="Prod2SubTol">0</p><input--%>
            <%--id="Prod2Tol" name="Prod2Tol" type="hidden" value="0"/></td>--%>
            <%--<td width="10%"><input class="w3-button" value="REMOVE" style="font-size: small"></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
            <%--<th></th>--%>
            <%--<th></th>--%>
            <%--<th>Total</th>--%>
            <%--<th><p id="Qty">0</p><input id="TolQty" name="Tol" type="hidden" value="0"/></th>--%>
            <%--<th><p id="Price">0</p><input id="TolPrice" name="TolPrice" type="hidden" value="0"/></th>--%>
            <%--</tr>--%>

            <%--<tr>--%>
            <%--<td></td>--%>
            <%--<td></td>--%>
            <%--<td></td>--%>
            <%--<td></td>--%>
            <%--<td>--%>
            <%--<button align="right" class="w3-btn w3-black" formaction="UpdateBagItem" formmethod="post" type="submit">Update</button>--%>
            <%--</td>--%>
            <%--<td>--%>
            <%--<button align="right" class="w3-btn w3-black" formaction="CheckOut" formmethod="post" type="submit">Checkout</button>--%>
            <%--</td>--%>
            <%--</tr>--%>
            <%--</table>--%>

            <%--</form>--%>

        </div>
    </div>
    <br><br><br><br><br>

    <%--<script type="text/javascript">--%>

    <%--var calcSubTotal = function (ProdName) {--%>

    <%--var quantity = parseInt(document.getElementById(ProdName + 'Qty').value);--%>

    <%--if (quantity > 0) {--%>

    <%--var price = parseInt(document.getElementById(ProdName + 'Price').value);--%>
    <%--var subtotal = price * quantity;--%>

    <%--document.getElementById(ProdName + "SubTol").innerHTML = subtotal;--%>
    <%--document.getElementById(ProdName + "Tol").value = subtotal;--%>

    <%--return subtotal;--%>
    <%--}--%>
    <%--document.getElementById(ProdName + "SubTol").innerHTML = 0;--%>
    <%--document.getElementById(ProdName + "Tol").value = 0;--%>

    <%--return 0;--%>
    <%--}--%>

    <%--function update() {--%>

    <%--var total = calcSubTotal('Prod1') + calcSubTotal('Prod2');--%>

    <%--var quantity = parseInt(document.getElementById('Prod1Qty').value) + parseInt(document.getElementById('Prod2Qty').value);--%>
    <%--document.getElementById("Qty").innerHTML = quantity;--%>
    <%--document.getElementById("TolQty").value = quantity;--%>

    <%--document.getElementById("Price").innerHTML = total;--%>
    <%--document.getElementById("TolPrice").value = total;--%>
    <%--}--%>
    <%--</script>--%>

</div>
</div>

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
