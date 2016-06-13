<%-- 
    Document   : kiso3-3
    Created on : 2016/06/06, 20:18:14
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
            //引数が3つのメソッドを定義する。1つ目は適当な数値を、2つ目はデフォルト値が5の数値を、最後はデフォルト値がfalse(boolean)のtypeを引数として定義する。
            //1つ目の引数に2つ目の引数を掛ける計算をするメソッドを作成し、typeがfalseの時はその値を表示、trueのときはさらに2乗して表示する。
        
            String getNum(Integer x, Integer y, boolean type) {
            String ans = "";
            int kake = x * y;
            
            if(type == false){
                ans = "falseなので答えは"+ kake;
                return ans;
            }else {
                kake *= kake;
                ans = "trueなので答えは"+ kake;
                return ans;
            }
        }
        %>
        <%
            
            String Num = getNum(9, 5, false);
            out.print(Num);
        %>
    </body>
</html>
