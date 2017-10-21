<%@ page import="database.DatabaseProduct" %>
<%@ page import="dto.Product" %>
<%@ page import="dto.Staff" %>
<%@ page import="view.StockControlView" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: TonyZheng
  Date: 12/10/17
  Time: 1:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Staff staff = (Staff) session.getAttribute("staff");
    ArrayList<Product> products = DatabaseProduct.getProductList();
    Product p = DatabaseProduct.getProduct("MWE001");
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
    .logoutbtn {
        background-color: #FF3300;
        border: none;
        color: white;
    }
</style>
<body>
<!-- Links (sit on top) -->

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


<!-- imformation-->
<div class="w3-container">
    <div class="w3-container w3-quarter w3-text-white">
        eeeee
    </div>

    <form class="w3-container w3-half">


        <br>
        <h5>
            <center>Update stock level</center>
        </h5>
        <hr>
        <table class="w3-table">
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Current Quantities</th>
                <th>Add Quantities</th>
            </tr>
            <%=StockControlView.getView(products)%>
            <%--<tr>--%>
            <%--<td>D12DG--1</td>--%>
            <%--<td>Note Book</td>--%>
            <%--<td>3245</td>--%>
            <%--<td><input class="w3-input w3-border" type="number" style="width:20%"></td>--%>
            <%--<td><button formaction="UpdateStockLevel" formmethod="post" type="submit" class="w3-btn w3-black" value="pid" name="Update">Update</button></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
            <%--<td>D12DG--2</td>--%>
            <%--<td>Dairy Daily</td>--%>
            <%--<td>2548</td>--%>
            <%--<td><input class="w3-input w3-border" type="number" style="width: 20%"></td>--%>
            <%--</tr>--%>
        </table>
        <br><br>
        <%--<center><button class="w3-btn w3-black">CONFIRM</button></center>--%>
    </form>
</div>


<br>
<br>
<br>
</body>
</html>