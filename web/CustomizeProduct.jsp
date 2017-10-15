<%--
  Created by IntelliJ IDEA.
  User: siyayu
  Date: 24/9/17
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="database.DatabaseProduct" %>
<%@ page import="dto.Product" %>
<%@ page import="dto.User" %>
<%
    String string = request.getParameter("pid");
    Product product = DatabaseProduct.getProduct(string);
    session.setAttribute("Redirect","CustomizeProduct.jsp?pid=MWE004");
%>
<%
    User user = null;
    user = (User)session.getAttribute("user");
%>
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
    .justify{
        text-align: left;
    }

    .options {
        position: relative;
        left: 50%;
        -webkit-transform: translate(-50%,-50%);
        transform: translate(-50%,-50%);

    }
    input[type="checkbox"],
    input[type="radio"] {
        position: absolute;
        opacity: 0;
        z-index: -1;
        vertical-align: middle;
    }
    label {
        position: relative;
        display: inline-block;
        margin-right: 10px;
        margin-bottom: 10px;
        padding-left: 30px;
        padding-right: 10px;
        line-height: 36px;
        cursor: pointer;
    }
    label::before {
        content: " ";
        position: absolute;
        top: 6px;
        left: 0;
        display: block;
        width: 24px;
        height: 24px;
        border: 2px solid #3c3c3c;
        border-radius: 4px;
        z-index: -1;
    }
    input[type="radio"] + label::before {
        border-radius: 18px;
    }
    /* Checked */
    input[type="checkbox"]:checked + label,
    input[type="radio"]:checked + label {
        padding-left: 10px;
        color: #fff;
    }
    input[type="checkbox"]:checked + label::before,
    input[type="radio"]:checked + label::before {
        top: 0;
        width: 100%;
        height: 100%;
        background: #3c3c3c;
    }
    /* Transition */
    label,
    label::before {
        -webkit-transition: .25s all ease;
        transition: .25s all ease;
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
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16" style="margin-left: 100px">Customizable Product</span>
    </div>
</div>
<!-- line-->
<div class="w3-panel w3-border-bottom w3-border-grey" style="margin-bottom: 50px">
</div>

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

    <!-- The Grid -->
    <form >
    <div class="w3-row-padding">
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
                    <div class="w3-panel w3-border-bottom w3-border-grey" style="margin-top: 20px;margin-bottom: 20px; margin-right: 100px"></div>
                    <div class="w3-row-padding">
                        <p>Quantity     1 </p>
                        <a class="w3-right w3-xlarge" style="margin-right: 100px"><strong>$<%=product.getPrice()%> AUD</strong></a>
                        <a class="w3-container" style="width: 60%"><p></p></a>
                    </div>
                    <%
                        String addButton;
                        if(user==null){
                            addButton = "<center><a href = \"Login.jsp\" class=\"w3-button w3-black w3-border w3-border-gray w3-round-large\" style=\"width: 30%\"><center>Add To Bag</center></a></center>";
                        }else {
                            addButton = "<center><button class=\"w3-button w3-black w3-border w3-border-gray w3-round-large\" formaction=\"AddCustomizeProductToBag\" formmethod=\"post\" type=\"submit\" style=\"width: 30%\" onclick=\"document.getElementById('subscribe').style.display='block'\"><center>Add to bag</center></button></center>";
                        }
                    %>
                    <%=addButton%>

                </div>

            </div>

        </div><br><br>
        <!-- Right Column -->
        <div class="w3-two">

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <center><h4 class="w3-text-grey w3-padding-16">Custom your layout</h4></center>
                <center>
                    <div class="w3-container"><center>
                        <div class="options">
                                <div class="w3-half" align="center"><input id="option1" type="radio" value="weeklylayouta" name="layout" style="text-align: justify;width: 50%" checked><label for="option1">Weekly Layout A</label></div>
                                <div class="w3-half" align="center"><input id="option2" type="radio" value="weeklylayoutb" name="layout" style="text-align: justify;width: 50%"><label for="option2">Weekly Layout B</label></div>
                                <div class="w3-half" align="center"><input id="option3" type="radio" value="weeklylayoutc" name="layout" style="text-align: justify;width: 50%"><label for="option3">Weekly Layout C</label></div>
                                <div class="w3-half" align="center"><input id="option4" type="radio" value="weeklylayoutd" name="layout" style="text-align: justify;width: 50%"><label for="option4">Weekly Layout D</label></div>
                                <div class="w3-half" align="center"><input id="option5" type="radio" value="dailylayouta" name="layout" style="text-align: justify;width: 50%"><label for="option5">Daily Layout A</label></div>
                                <div class="w3-half" align="center"><input id="option6" type="radio" value="dailylayoutb" name="layout" style="text-align: justify;width: 50%"><label for="option6">Daily Layout B</label></div>
                        </div>
                </center></div>
                    <br>

                    <div class="w3-container w3-white"><center>
                        <h4 class="w3-text-grey w3-padding-16"><center>Custom your display elements</center></h4><br>

                        <div class="w3-container">
                            <div class="options" style="align-content:center;text-align: left">
                                <form><center>
                                    <div class="w3-half" align="center"><input id="optionA" type="checkbox"  name="layout" value="1"><label for="optionA">Lined</label></div>
                                    <div class="w3-half" align="center"><input id="optionB" type="checkbox"  name="layout" value="2"><label for="optionB">Non-lined</label></div>
                                    <div class="w3-half" align="center"><input id="optionC" type="checkbox"  name="layout" value="3"><label for="optionC">Page number</label></div>
                                    <div class="w3-half" align="center"><input id="optionD" type="checkbox"  name="layout" value="4"><label for="optionD">Public holiday </label></div>
                                    <div class="w3-half" align="center"><input id="optionK" type="checkbox"  name="layout" value="5"><label for="optionK">Local holiday </label></div>
                                    <div class="w3-half" align="center"><input id="optionE" type="checkbox"  name="layout" value="6"><label for="optionE">Moon cycle</label></div>
                                    <div class="w3-half" align="center"><input id="optionF" type="checkbox"  name="layout" value="7"><label for="optionF">Sunrise,Sunset</label></div>
                                    <div class="w3-half" align="center"><input id="optionG" type="checkbox"  name="layout" value="8"><label for="optionG">Page of password</label></div>
                                    <div class="w3-half" align="center"><input id="optionH" type="checkbox"  name="layout" value="9"><label for="optionH">Page of extra note</label></div>
                                    <div class="w3-half" align="center"><input id="optionI" type="checkbox"  name="layout" value="10"><label for="optionI">Page of Social media handles</label></div>
                                    <div class="w3-half" align="center"><input id="optionJ" type="checkbox"  name="layout" value="11"><label for="optionJ">Page of personal info</label></div>
                                    <div class="w3-half" align="center"><input id="optionL" type="checkbox"  name="layout" value="12"><label for="optionL">Page of To-do list</label></div>
                                </center></form>
                            </div>
                        </div>
                    </center></div>
                <br><br>

                <br>
                <div class="w3-container">
                    <center><button class="w3-button w3-white w3-border w3-border-gray w3-round-large"  onclick="document.getElementById('id01').style.display='block'">Preview</button>
                    </center></div>
                <!-- modal preview-->
                <div id="id01" class="w3-modal">
                    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:800px">
           s             <div class="w3-center"><br>
                            <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-black w3-display-topright" title="Close Modal">&times;</span>
                        </div>
                        <form class="w3-container" action="/action_page.php">
                            <div class="w3-section">
                                <img src="2.0/images/Daily View - Layout 1 (with all options).jpg" style="width: 100%"><br>
                            </div>
                        </form>
                    </div>
                </div>
                </center>

                <br><br>

                <!-- End Right Column -->
            </div>

            <!-- End Grid -->
        </div>

        <!-- End Page Container -->
    </div>

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
<!-- Script -->
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


</body>
</html>


