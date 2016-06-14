<%-- 
    Document   : Standard_05
    Created on : 2016/06/13, 17:49:26
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
            //５．自分の氏名について、バイト数と文字数を取得して、表示してください。
            
            String moji = "きくちひとみ";
            
            out.print("バイト数は…"+ moji.getBytes().length +"<br>");
            out.print("文字数は…"+ moji.length());
        %>
    </body>
</html>
