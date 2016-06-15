<%-- 
    Document   : Data_01
    Created on : 2016/06/14, 11:06:19
    Author     : 1999itukinao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            //１．以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください。
            //名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）
        %>

    </head>
    <body>
    <form action="/Data/data02" method="post">
        名前：<input type="text" name="name">
            <br>
            <br>
        性別：
        <input type="radio" name="gender" value="男" /> 男　
        <input type="radio" name="gender" value="女" /> 女
            <br>
            <br>
        <textarea name="freeans" rows="4" cols="40"> 趣味を記入して下さい </textarea>
            <br>
            <br>
        <input type="submit" value="送信">
    </form>
    </body>
</html>
