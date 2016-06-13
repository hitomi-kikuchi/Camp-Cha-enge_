<%-- 
    Document   : kiso2-05
    Created on : 2016/06/01, 11:38:59
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
            //for文を利用して、0から100を全部足す処理。
            for(int i=0;i<101;i++) {
            int tasi = i + 1;
                out.print(i +"＋"+ 1 +"＝"+ tasi +"<br>");
            }
        %>
    </body>
</html>
