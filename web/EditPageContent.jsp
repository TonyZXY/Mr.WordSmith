<%@ page import="database.DatabasePageContent" %>
<%@ page import="dto.PageContent" %>
<%@ page import="dto.Staff" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Objects" %>
<%--
  Created by IntelliJ IDEA.
  User: TonyZheng
  Date: 21/10/17
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<PageContent> contents = DatabasePageContent.getContents();
    session.setAttribute("content",contents);
    Staff staff = (Staff) session.getAttribute("staff");
%>
<!doctype html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mr.wordSmith</title>
    <link href="css/1.0/css/singlePageTemplate.css" rel="stylesheet" type="text/css">
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
    ul {
        list-style-type: none;
        overflow: hidden;
        background-color: #333;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover:not(.active) {
        background-color: #111;
    }

    .active {
        background-color: #FF3300;
    }
    .logoutbtn{
        background-color: #FF3300;
        border: none;
        color: white;

    }
    .select {
        display:flex;
        flex-direction: column;
        position:relative;
        width:250px;
        height:40px;
    }

    .option {
        padding:0 30px 0 10px;
        min-height:40px;
        display:flex;
        align-items:center;
        background:#F8F8F8;
        border-top:#F8F8F8 solid 1px;
        position:absolute;
        top:0;
        width: 100%;
        pointer-events:none;
        order:2;
        z-index:1;
        transition:background .4s ease-in-out;
        box-sizing:border-box;
        overflow:hidden;
        white-space:nowrap;

    }

    .option:hover {
        background:#D8D8D8;
    }

    .select:focus .option {
        position:relative;
        pointer-events:all;
    }

    input {
        opacity:0;
        position:absolute;
        left:-99999px;
    }

    input:checked + label {
        order: 1;
        z-index:2;
        background:#F8F8F8;
        border-top:none;
        position:relative;
    }

    input:checked + label:after {
        content:'';
        width: 0;
        height: 0;
        border-left: 5px solid transparent;
        border-right: 5px solid transparent;
        border-top: 5px solid white;
        position:absolute;
        right:10px;
        top:calc(50% - 2.5px);
        pointer-events:none;
        z-index:3;
    }

    input:checked + label:before {
        position:absolute;
        right:0;
        height: 40px;
        width: 40px;
        content: '';
        background:#F8F8F8;
    }

</style>
<body>

<div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
    <div class="w3-third">
        <img src="images/icon.jpg" style="width: 15%;margin-left: 10%">
    </div>
</div>

<!-- function bar （1/5 of each selection）-->

<div style="max-width:100%;margin-top:0px;">
    <ul>
        <li><a href="SalesReport.jsp">Sale Report</a></li>
        <li><a href="StockControl.jsp">Stock Control</a></li>
        <li><a href="EditPageContent.jsp">Edit Content</a></li>
        <li style="float:right"><a class="active">
            <form><button formaction="AdminLogout" class="logoutbtn"formmethod="post">> LOG OUT</button></form>
        </a></li>
        <%
            String link;
            if (!Objects.equals(staff.getAdmin(), "Admin")) {
                link =
                        "        <li><a href=\"UpdateProfile.jsp\">Update Profile</a></li>";
            } else {
                link =  "        <li><a href=\"StuffManagement.jsp\">Staff Management</a></li>";

            }
        %>
        <%=link%>

        <%--<li><a href="StuffManagement.jsp">Staff Management</a></li>--%>
    </ul>

</div>
</div>

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

    <!-- The Grid -->
    <div class="w3-row-padding">
        <form action="EditContent" method="post">
            <div class="w3-half">

                <div class="w3-container">
                    <div class="w3-col w3-container"><p></p></div>
                    <h5><b>Edit Content here</b></h5>
                </div>
                <%=view.PageContent.editPageContentView(contents)%>
                <%--<br>--%>
                <%--<div class="w3-container">--%>
                    <%--<label>First line </label>--%>
                    <%--<br>--%>
                    <%--<label>Current content</label>--%>
                    <%--<center></center>--%>
                    <%--<textarea rows="10" cols="50" name="FirstLine"></textarea>--%>

                    <%--<br><br>--%>

                <button type="submit" class="w3-btn w3-black" style="width: 30%">Submit</button>
                <!-- End Left Column -->
            </div>

        </form>
        <!-- End Grid -->
    </div>

    <!-- End Page Container -->
</div>





</body>
</html>




