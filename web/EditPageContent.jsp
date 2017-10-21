<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.PageContent" %>
<%@ page import="database.DatabasePageContent" %><%--
  Created by IntelliJ IDEA.
  User: TonyZheng
  Date: 21/10/17
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<PageContent> contents = DatabasePageContent.getContents();
%>
<html>
<head>
    <title>Page Content</title>
</head>
<body>

<form>
    <label>Edit page content here</label>
    <br>
    <br>
    <label>What types of payment do you accept?(Contact Page)</label>
    <label>Current: </label>
</form>

</body>
</html>
