<%-- 
    Document   : DB12
    Created on : 2016/06/20, 15:43:51
    Author     : 1999itukinao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            //課題12:検索用のフォームを用意し、名前、年齢、誕生日を使った複合検索ができるようにしてください。
        %>
    </head>
    <body>
    <form action="/Database/DB12" method="post">
        <h1>— 検索 —</h1>
            <br>
            <br>
        名前：<input type="text" name="Name"/>
            <br>
            <br>
        年齢：<input type="number" name="Age"/>
            <br>
            <br>
        生年月日：<select name="Year">
            <option value="">--</option>
            <% for(int i = 1900; i<=2016; i++) { %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
            </select>
            年 
            <select name="Month">
            <option value="">--</option>
            <% for(int i = 1; i<=12; i++) { %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
            </select>
            月 
            <select name="Day">
            <option value="">--</option>
            <% for(int i = 1; i<=31; i++) { %>
            <option value="1">1</option>
            <% } %>
            </select>
            日
            <br>
            <br>
        <input type="submit" value="送信">
    </form>
    </body>
</html>

