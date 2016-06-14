<%-- 
    Document   : Standard_07
    Created on : 2016/06/13, 21:28:56
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
            //７．以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、結果を表示してください。
            //「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」

            String chikan = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
            String c = chikan.replace("I", "い");

            out.print(c.replace("U", "う"));

        %>
    </body>
</html>
