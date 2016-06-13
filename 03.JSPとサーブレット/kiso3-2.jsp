<%-- 
    Document   : kiso3-2
    Created on : 2016/06/06, 20:00:53
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
            //引数として数値を受け取り、その値が奇数か偶数か判別＆表示する処理をメソッドとして制作し、適当な数値に対して奇数・偶数の判別を行う。
            
            String Num(int num) {
            
                if(num % 2 == 0) {
                    return "偶数";
                }else{
                    return "奇数";
                }
            }
        %>
        
        <%
            int num = 645;
            
            String NUM = Num(num);
            out.println(num +"は"+ NUM +"です");
        %>
    </body>
</html>
