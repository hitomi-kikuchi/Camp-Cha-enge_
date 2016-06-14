<%-- 
    Document   : Standard_03
    Created on : 2016/06/13, 17:54:46
    Author     : 1999itukinao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //３．2016年11月4日 10時0分0秒のタイムスタンプを作成し、「年-月-日 時:分:秒」で表示してください。
            
            Calendar cal = Calendar.getInstance();
            cal.set(2016,11,4,10,00,00);
            Date d = cal.getTime();
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
            String DandT = sdf.format(d);
            out.print(d);
        %>
    </body>
</html>
