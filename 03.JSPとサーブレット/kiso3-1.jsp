<%-- 
    Document   : kiso3-1
    Created on : 2016/06/06, 20:07:04
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
            //自分のプロフィール(名前、生年月日、自己紹介)を3行に分けて表示するユーザー定義メソッドを作り、メソッドを10回呼び出す。
            
            String getName() {
                return "菊池 瞳";
            }
            String getBirth() {
                return "1990/4/18";
            }
            String getSelfintro() {
                return "趣味はDIYです";
            }
        %>
        <%
            String name = getName();
            String birth = getBirth();
            String selfintro = getSelfintro();

            for(int i = 0; i < 10; i++) {
                out.print("名前："+ name +"<br>生年月日："+ birth +"<br>自己紹介："+ selfintro +"<br><br>");
            }
        %>
    </body>
</html>
