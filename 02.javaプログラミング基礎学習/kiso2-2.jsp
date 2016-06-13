<%-- 
    Document   : kiso2-2
    Created on : 2016/06/01, 11:02:46
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
            //switch文を利用して、値が"A"なら「英語」値が"あ"なら「日本語」それ以外は何も表示しない処理。
            char x = 'A';
            String key ="";
            switch(x) {
                case'A' :
                    key = key +"英語";
                    break;
                case'あ':
                    key = key +"日本語";
                    break;
                default:
                    key = key +"";
                    break;
            }
            out.print(key);
        %>
    </body>
</html>
