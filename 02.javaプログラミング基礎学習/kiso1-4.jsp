<%-- 
    Document   : kiso1-4
    Created on : 2016/06/01, 10:30:51
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
            //定数と変数を宣言し、それぞれに数値を入れて四則演算を行う。

            //定数作成
            final int num = 5;
            //変数作成
            int num2 = 4;
            int num3 = 8;
            int num4 = 16;
            
            int tasi = num + num2;  //足し算
            int hiki = num - num2;  //引き算
            int kake = num * num2;  //掛け算
            int wari = 16 / num2;  //割り算
            int amari = 13 % num;  //剰余
                
                out.print(num +"＋"+ num2 +"<br>");
                out.print(num +"－"+ num2 +"<br>");
                out.print(num +"×"+ num2 +"<br>");
                out.print(num3 +"÷"+ num2 +"<br>");
                out.print(num4 +"÷"+ num);            
        %>
    </body>
</html>
