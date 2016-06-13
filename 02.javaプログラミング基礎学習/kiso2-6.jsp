<%-- 
    Document   : kiso2-6
    Created on : 2016/06/01, 11:39:12
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
            //while文を利用して、1000を2で割り続け、100より小さくなったらループを抜ける処理。
            long num = 1000;
            while(num>100){
                long wari = num / 2;
                out.print(num +"÷"+ 2 +"="+ wari +"<br>");
                num /= 2;
            }
        %>
    </body>
</html>
