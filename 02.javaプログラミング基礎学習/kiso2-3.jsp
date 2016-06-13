<%-- 
    Document   : kiso2-03
    Created on : 2016/06/01, 11:37:09
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
            //for文を利用して、8を20回掛ける処理。
                long num = 1;
                for(long i = 1; i < 21; i++ ){{
                    num = num * 8;
                }
                out.print("8の"+ i +"乗は"+ num +"<br>");
                }
        %>
    </body>
</html>
