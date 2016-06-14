<%-- 
    Document   : Standard_02
    Created on : 2016/06/13, 17:43:53
    Author     : 1999itukinao
--%>

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //２．現在の日時を「年-月-日 時:分:秒」で表示してください。
            
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String DandT = sdf.format(date);
            
            out.print(DandT);
        %>
    </body>
</html>
