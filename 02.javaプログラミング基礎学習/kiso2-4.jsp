<%-- 
    Document   : kiso2-4
    Created on : 2016/06/01, 11:38:45
    Author     : 1999itukinao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           //for文を利用して、"A"を30個連結する処理。
           String moji = "A";
           for(int i = 0; i < 30; i++) {
            out.print(moji);
        }
       %>
    </body>
</html>
