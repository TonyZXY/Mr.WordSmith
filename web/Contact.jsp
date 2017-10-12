<%@ page import="dto.User" %>
<%--
  Created by IntelliJ IDEA.
  User: s3607997
  Date: 10/9/17
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = null;
    user = (User)session.getAttribute("user");
    session.setAttribute("Redirect","Contact.jsp");
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

<!-- title -->
<div class="w3-row w3-container">
    <div class="w3-left w3-padding-32">
        <span class="w3-xlarge w3-border-dark-grey w3-padding-16" style="margin-left: 100px">Contact</span>
    </div>
</div>
<!-- line-->
<div class="w3-panel w3-border-bottom w3-border-grey" style="margin-bottom: 50px"></div>

<!-- The Band Section -->
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <img src="https://78.media.tumblr.com/437298bdc84379ff011473ce2b64d0e6/tumblr_owzhpf0Pqo1tmp67mo1_1280.jpg" style="max-width: 35%;align:center"><br><br><br>
    <h3 class="w3-wide"><b>FAQ</b></h3><br>
    <p align="left" style="font-family:Times"><i>What types of payment do you accept?</i><br><br>
        You can use most major credit cards, PayPal or AfterPay (available in Australia only). If your form of payment is not accepted please contact us at <u>customercare@mrwordsmith.com.au</u> and we will do our best to assist you with your purchase.</p>
    <br>
    <p align="left" style="font-family:Times"><i>Do you ship internationally?</i><br><br>
        Mr Wordsmith will ship to most countries. We have a flat rate fee of $10 AUD for shipping outside of Australia for orders below $100 AUD. Shipping is included for orders over $100 AUD. If you are having trouble entering your delivery details on our site please email us at <u>customercare@mrwordsmith.com.au</u>and we will endeavour to assist you.</p>
    <br>
    <p align="left" style="font-family:Times"><i>Can I use multiple promo codes?</i><br><br>
        Only one promo code can be used per transaction. Keep that second one for your next purchase!</p>

    <br>
    <p align="left" style="font-family:Times"><i>How long will my order take to arrive?</i><br><br>
        All orders placed by 2.00pm AEST Monday to Friday will be shipped that same day (excluding Australian public holidays). Within Australia you can expect delivery within 2 to 3 business days. International orders are shipped using express air shipping and can be expected within 3 to 10 business days after placing your order.</p>

    <br>
    <p align="left" style="font-family:Times"><i>How can I track my parcel?</i><br><br>
        Once your order has been picked and packed you will be sent an email with the tracking information. If you have any queries regarding the tracking of your order please contact us at <u>customercare@mrwordsmith.com.au.</u></p>
    <br>
    <p align="left" style="font-family:Times"><i>Help, the item I received is damaged or faulty!</i><br><br>
        Once your order has been picked and packed you will be sent an email with the tracking information. If you have any queries regarding the tracking of your order please contact us at<u>customercare@mrwordsmith.com.au.</u></p>
    <br>
    <p align="left" style="font-family:Times"><i>How do I return an item?</i><br><br>
        If the item you purchased is just not quite right for you we will accept returns within 21 days of purchase. Please ensure that you complete a returns form, then we will process your return within 21 days and refund you (excluding the original shipping cost) or process your exchange. Mr. Wordsmith will not be held liable for any loss of products being returned and encourage the use of registered post. Please refer to our returns section for full detail
    </p><br><br>
    <h3 align="center"><b>Privacy Policy</b></h3><br>
    <p align="left" style="font-family:Times">The team at Mr Wordsmith are committed to providing a quality shopping experience. We have adopted the National Privacy Principles (NPPs) contained in the Privacy Act 1988 (Cth) (the Privacy Act). The NPPs govern the way in which we collect, use, disclose, store, secure and dispose of your Personal Information. A copy of the Australian Privacy Principles may be obtained from the website of The Office of the Federal Privacy Commissioner at www.privacy.gov.au.
    </p>
    <p align="left" style="font-family:Times"><i>What is Personal Information and why do we collect it?</i><br><br>
        Personal Information is information or an opinion that identifies an individual. Examples of Personal Information we collect include: names, gender, addresses, email addresses and phone numbers. We collect your Personal Information for the primary purpose of providing our services to you, providing information to our clients and marketing. We may also use your Personal Information for secondary purposes closely related to the primary purpose, in circumstances where you would reasonably expect such use or disclosure. You may unsubscribe from our mailing/marketing lists at any time by contacting us in writing. When we collect Personal Information we will, where appropriate and where possible, explain to you why we are collecting the information and how we plan to use it. We may also collect information about how you use our website(s) or applications to help us better serve you. As an example, we may do this when you click on a link from our website(s) or visit a website which displays any one of our advertisements. This information is derived from cookies that identify the computer you used to access our website(s) or applications, and the cookies collect your server address; the time and date of your visit to the website; the pages and documents you have accessed or viewed and the type of browser you are using. When we use cookies and other tracking technologies to collect your personal and non-personally identifiable information we are collecting this information so that we can better understand your browsing and purchasing behaviour, analyse and track website usage data, determine the popularity of certain content; deliver advertising and content targeted to your interest on our website, better understand your online activity, improve our website and your online experience, count the number of visits, and for other legitimate internal business purposes. <br><br> We have engaged Google to provide advertisements on our behalf and to provide analytics services. Google may use cookies and other tracking technologies to collect non-personally identifiable information for re-marketing, traffic, demographics and interest reporting purposes via Google advertising cookies and anonymous identifiers. If you have consented (“opted-in”) in accordance with NPPs, your personal information may be merged with non-personally identifiable information collected through any Google advertising product or feature to be used by us for re-marketing, traffic, demographics and interest reporting purposes.
    </p>
    <br><br>
    <h3 align="center"><b>Sensitive Information</b></h3><br>
    <p align="left" style="font-family:Times">
        Don’t worry, we do not collect your financial information or retain credit card numbers used to purchase products or services as this information is collected by a financial institution that has their own privacy policy. If you receive a request to provide sensitive personal information (such as credit card details) in an email, do not provide this information because the request may be fraudulent. You can help us identify attempts at fraud- if anything suspicious occurs, please contact us immediately.
    </p>
    <br><br>
    <h3 align="center"><b>Third Parties</b></h3><br>
    <p align="left" style="font-family:Times">
        Where reasonable and practicable to do so, we will collect your Personal Information only from you. However in some circumstances we may be provided with information by third parties. In such a case we will take reasonable steps to ensure that you are made aware of the information provided to us by the third party.
    </p>
    <br><br>
    <h3 align="center"><b>Disclosure of Personal Information</b></h3><br>
    <p align="left" style="font-family:Times">
        Your Personal Information may be disclosed in a number of circumstances including the following: <br>
        • Third parties where you consent to the use<br>
        • Where required or authorised by law.
    </p>
    <br><br>
    <h3 align="center"><b>Security of Personal Information</b></h3><br>
    <p align="left" style="font-family:Times">
        Your Personal Information is stored in a manner that reasonably protects it from misuse and loss and from unauthorized access, modification or disclosure. When your Personal Information is no longer needed for the purpose for which it was obtained, we will take reasonable steps to destroy or permanently de-identify your Personal Information. However, most of the Personal Information is or will be stored in client files which will be kept by us for a minimum of 7 years.
    </p>
    <br><br>
    <h3 align="center"><b>Access to your Personal Information</b></h3><br>
    <p align="left" style="font-family:Times">
        You may access the Personal Information we hold about you and to update and/or correct it, subject to certain exceptions. In order to protect your Personal Information we will require identification from you before releasing the requested information and your request must come to us in writing. Cat&I won’t charge any fee for your access request, but may charge an administrative fee for onerous requests or where you have requested us to provide a copy of your Personal Information in hard copy.
    </p>
    <br><br>
    <h3 align="center"><b>Policy Updates</b></h3><br>
    <p align="left" style="font-family:Times">
        This Policy may change from time to time and is available on our website.
    </p>
    <br><br>
    <h3 align="center"><b>Privacy Policy Complaints and Enquiries</b></h3><br>
    <p align="left" style="font-family:Times">
        If you have any queries or complaints about our Privacy Policy please contact us with your concerns and we will endeavour to respond to your request within 30 days. Our contact details for all privacy related matters are: <br> Mr Wordsmith Pty Ltd<br>PO Box 210Abottsford, Victoria, Australia 3067<br><i>customercare@mrwordsmith.com.au</i>
    </p>
</div>

<!-- Footer -->
<footer>
    <div class="w3-row w3-section"style="background-color:#F8F8F8;margin-bottom:70px" >
        <div class="w3-row w3-section"style="background-color:#F8F8F8">
            <center><div class="w3-third w3-container w3-large" style="height:250px"><br>
                <a href="AboutUs.jsp"><i><p2 style="font-family:Times"><b>About Us</b></p2></i></a><br><br>
                <p text-align="right" style="font-size:70%"><i class="fa fa-map-marker" style="width:30px"></i>PO Box 210, Abbotsford, VIC 3067</p>
                <p text-align="right"style="font-size:70%"><i class="fa fa-phone" style="width:30px"></i> +61 0425752986</p>
                <p text-align="right"style="font-size:70%"><i class="fa fa-envelope" style="width:30px"> </i> customercare@mrwordsmith.com.au</p>
            </div></center>
            <div class="w3-third w3-center w3-large " style="height:250px"><br>
                <a href="Contact.jsp"><i><p2 style="font-family:Times"><b>Contact Us</b></p2></i></a><br><br>
                <p style="font-size:70%"> FAQ</p>
                <p style="font-size:70%"> Privacy policy</p>
            </div>
            <div class="w3-third w3-center w3-large" style="height:250px">
                <br><br>
                <a href="https://www.facebook.com/sharer.php?u=<?php echo $url; ?>"target="_blank "><i class="w3-xlarge fa fa-facebook-official"></i><br></a>
                <a href="https://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&media=<?php echo $imageurl; ?>&description=<?php echo $title; ?>"target="_blank "><i class="w3-xlarge fa fa-pinterest-p"></i><br></a>
                <a href="https://twitter.com/intent/tweet?url=<?php echo $url; ?>&text=<?php echo $title; ?>"target="_blank "><i class="w3-xlarge fa fa-twitter"></i><br></a>
                <a herf="https://www.instagram.com" target="_blank "><i class="w3-xlarge fa fa-instagram"></i></a>
            </div>
        </div>
    </div>
</footer>

</body>
</html>
