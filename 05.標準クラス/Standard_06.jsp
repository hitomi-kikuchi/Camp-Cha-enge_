<%-- 
    Document   : Standard_06
    Created on : 2016/06/13, 17:49:41
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
            //６．自分のメールアドレスの「@」以降の文字を取得して、表示してください。

            String add = "ani301418ta@gmail.com";
            out.print(add.substring(11));
        %>
    </body>
</html>
