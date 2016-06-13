<%-- 
    Document   : kiso2-07
    Created on : 2016/06/01, 13:07:09
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

        <%!
            //以下の順番で、要素が格納された配列を作成。
            //10", "100", "soeda", "hayashi", "-20", "118", "END"
        %>
            <%@ page import="java.util.*" %>
        
        <%    ArrayList<String> al = new ArrayList<String>();
            
            al.add("10");
            al.add("100");
            al.add("soeda");
            al.add("hayashi");
            al.add("-20");
            al.add("118");
            al.add("END");

            out.print(al.toString());
        %>
    </body>
</html>
