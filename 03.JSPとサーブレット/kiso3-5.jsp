<%-- 
    Document   : kiso3-5
    Created on : 2016/06/06, 23:16:12
    Author     : 1999itukinao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%!
            //戻り値としてある人物のid(数値),名前,生年月日、住所を返却するメソッドを作成し、受け取った後はid以外の値を表示する。
            
            String getId() {
                return "000";
            }
            String getName() {
                return "モンキー・D・ルフィ";
            }
            String getBirth() {
                return "5/5";
            }
            String getAdd() {
                return "東の海 ドーン島 ゴア王国 フーシャ村";
            }
        %>
        <%
            String id = getId();
            String name = getName();
            String birth = getBirth();
            String add = getAdd();

            out.print("名前："+ name +"<br>生年月日："+ birth +"<br>住所："+ add +"<br>");
        %>
