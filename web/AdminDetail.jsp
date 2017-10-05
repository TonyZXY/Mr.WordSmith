<%--
  Created by IntelliJ IDEA.
  User: tonyzheng
  Date: 5/10/17
  Time: 10:50 AM
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
    <link href="css/1.0/css/singlePageTemplate.css" rel="stylesheet" type="text/css">
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
<style>
    html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
    .mySlides {display:none}
    .w3-tag, .fa {cursor:pointer}
    .w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>
<body>

<!-- Links (sit on top) -->

<div class="w3-panel w3-padding-16 w3-white" style="max-width:100%;margin-top:0px;margin-bottom:0px">
    <div class="w3-third">
        <img src="images/icon.jpg" style="width: 30%;margin-left: 10%">
    </div>
    <br><br><br>
    <div class="w3-container w3-right">
        <a class="w3-btn w3-black">
            Logout
        </a>
    </div>
</div>

<!-- bar -->
<div class="w3-black w3-text-black">ss</div>

<!-- sidebar -->
<div class="w3-row">
    <div class=" w3-col w3-bar-block w3-white " style="width:25%">
        <h5 class="w3-bar-item w3-center"><Strong>Admin</strong></h5>
        <div class="w3-panel w3-border-bottom w3-border-light-grey" style="margin-top: 10px;margin-bottom: 10px">
        </div>
        <button class="w3-bar-item w3-button tablink w3-center" onclick="openFile(event, 'Sales Report')" >Sales Report</button>
        <button class="w3-bar-item w3-button tablink w3-center" onclick="openFile(event, 'Stock control')" >Stock control</button>

    </div>

    <!-- information -->
    <div class="w3-col w3-container" style="width: 75%">
        <div class="w3-padding" style="margin-left: 50px"><h4><strong>Welcome Tony Zhang</strong></h4></div>

        <div id="Sales Report" class="w3-container name" style="display:none">

            <div class="w3-col w3-container" style="width:70%">
                <form class="w3-container">
                    <br>
                    from:
                    <input class="w3-input w3-border" type="date" placeholder="DD/MM/YYYY" style="width: 40%" required>
                    to
                    <input class="w3-input w3-border" type="date" placeholder="DD/MM/YYYY" style="width: 40%" required>
                    <p>
                    <center></center><button class="w3-btn w3-black">COMFIRM</button></p>
                </form>
                <hr>
            </div>
            <div class="w3-container">
                <table class="w3-table">
                    <tr>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th>Quantities</th>
                    </tr>
                    <tr>
                        <td>D12DG--1</td>
                        <td>Note book</td>
                        <td>4565</td>
                    </tr>
                    <tr>
                        <td>D12DG--2</td>
                        <td>Daily Dairy</td>
                        <td>3589</td>
                    </tr>
                </table>
            </div>

        </div>

        <div id="Stock control" class="w3-container name" style="display:none">

            <div class="w3-col w3-container" style="width:70%">
                <form class="w3-container">
                    <br>
                    <h5><center>Update stock level</center></h5><hr>
                    <table class="w3-table">
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Current Quantities</th>
                            <th>Add Quantities</th>
                        </tr>
                        <tr>
                            <td>D12DG--1</td>
                            <td>Note Book</td>
                            <td>3245</td>
                            <td><input class="w3-input w3-border" type="number"></td>
                        </tr>
                        <tr>
                            <td>D12DG--2</td>
                            <td>Dairy Daily</td>
                            <td>2548</td>
                            <td><input class="w3-input w3-border" type="number"></td>
                        </tr>
                    </table><br><br>
                    <center><button class="w3-btn w3-black">CONFIRM</button></center>
            </div>
        </div><br><br><br>



    </div>
</div>
<!-- click and turn off -->
<script>
    function openFile(evt, Name) {
        var i, x, tablinks;
        x = document.getElementsByClassName("name");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < x.length; i++) {
            tablinks[i].className = tablinks[i].className.replace("w3-black", "");
        }
        document.getElementById(Name).style.display = "block";
        evt.currentTarget.className += " w3-black";
    }
</script>


</body>
</html>
