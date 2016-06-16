<%-- 
    Document   : Data_04
    Created on : 2016/06/14, 12:10:01
    Author     : 1999itukinao
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            //5．以下の機能を実装してください。

            //名前・性別・趣味を入力するページを作成してください。
            //また、入力された名前・性別・趣味を記憶し、次にアクセスした際に
            //記録されたデータを初期値として表示してください。　　　
            //※Javaと同時に、HTMLの知識が必要になります。
            //※入力フィールドの使い方を調べてみましょう。
            
            
            HttpSession h = request.getSession(true);
        %>
        <%
            HttpSession hs = request.getSession(false);
            String checkM = (String)hs.getAttribute("checkM");
            String checkW = (String)hs.getAttribute("checkW");
        %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="/Data/Servlet05" method="post">    
        名前：<input type="text" name="name" value="<%= h.getAttribute("LastName") %>"/>
            <br>
            <br>
        性別：
        <input type="radio" name="gender" value="男" <%= h.getAttribute("checkM") %>/> 男　
        <input type="radio" name="gender" value="女" <%= h.getAttribute("checkW") %>/> 女
            <br>
            <br>
        趣味：
        <textarea name="text" rows="4" cols="40"><%= h.getAttribute("LastText") %></textarea>
            <br>
            <br>
        <input type="submit" value="送信">
    </form>
    </body>
</html>
