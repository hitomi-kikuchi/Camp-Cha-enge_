<%-- 
    Document   : kiso1-6
    Created on : 2016/06/01, 10:35:56
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
            //変数を宣言し、その変数の中身によって以下の表示を行う。値が1なら「1です！」
            //2なら「プログラミングキャンプ！」、それ以外なら「その他です！」

            //変則作成
            int num = 2;
            if(num == 1){
                //numが1の場合、ここに来ます。
                out.print("1です！");   
            }else if(num == 2){
                //num3が2の場合、ここに来ます。
                out.print("プログラミングキャンプ！");
            }else{
                //それ以外は、ここに来ます。
                out.print("その他です！");
            }
        %>
    </body>
</html>
