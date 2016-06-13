<%-- 
    Document   : kiso2-1
    Created on : 2016/06/01, 10:54:57
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
            //switch文を利用して、値が1なら「one」値が2なら「two」それ以外は「想定外」と表示する処理。
            int x = 3;
            String num = "";
            switch(x) {
                case 1:
                    num = num +"one";
                    break;
                case 2:
                    num = num +"two";
                    break;
                default:
                    num = num +"想定外";
                    break;
            }
            out.print(num);
        %>
    </body>
</html>
