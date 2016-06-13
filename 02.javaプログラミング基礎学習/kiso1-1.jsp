<%-- 
    Document   : kiso1-1
    Created on : 2016/06/01, 10:27:43
    Author     : 1999itukinao
--%>
<%
    //「Hello world.」を表示
    
    String talk = "Hello world.";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%= talk %>
    </body>
</html>
