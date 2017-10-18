<%--
  Created by IntelliJ IDEA.
  User: Mr.wordSmith team
  Date: 5/10/17
  Time: 11:47 AM
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
<!-- style of text and title -->
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

    body {
        height: 100%;
        width: 100%;
        width: 1000px;
        height: 800px;
        background-image: url("images/Ad 4.jpg");
        background-repeat: no-repeat;
        background-size: cover;

        filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="images/Ad 4.jpg", sizingMethod=scale);
        -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/Ad 4.jpg',sizingMethod='scale')";
    }

</style>
<body>

<!-- Links (sit on top) -->


<!--function bar -->

<div class="w3-display-middle w3-large" style="max-width: 50%;max-height: 100%">
    <center>
        <div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="width: 70%">
            <center><img src="images/icon.jpg" style="width: 15%;margin-top: 5%"></center>
            <b><p style="font-family:'Helvetica Neue'">ADMINISTRATION SYSTEM</p></b>
            <form action="AdminLogin" method="post">
                <br>
                <input class="w3-input w3-border" type="text" placeholder="Staff ID" style="width: 70%" name="id">
                <br>
                <input class="w3-input w3-border" type="password" placeholder="Password" style="width: 70%"
                       name="password"><br>
                <p>
                    <button type="submit" class="w3-btn w3-black" style="width: 70%">LOGIN</button>
                </p>
                <br>
            </form>
        </div>
    </center>
</div>

</body>
</html>


