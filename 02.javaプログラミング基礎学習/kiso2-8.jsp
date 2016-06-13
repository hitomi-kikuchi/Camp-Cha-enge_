<%-- 
    Document   : kiso2-8
    Created on : 2016/06/01, 13:09:22
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
            //７で作成した配列の"soeda"を"33"に変更
        %>
            <%@ page import="java.util.*" %>
        <%
            ArrayList<String> al = new ArrayList<String>();
            
            al.add("10");
            al.add("100");
            al.add("soeda");
            al.add("hayashi");
            al.add("-20");
            al.add("118");
            al.add("END");

            al.set(2, "33");
            
            out.print(al.toString());

        %>
    </body>
</html>
