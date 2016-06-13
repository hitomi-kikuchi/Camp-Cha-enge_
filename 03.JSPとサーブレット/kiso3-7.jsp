<%-- 
    Document   : kiso3-7
    Created on : 2016/06/07, 13:21:03
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

        <%@ page import="java.util.HashMap"%>
        <%!
            //課題6の3人分のプロフィールのうち1人だけ住所が値nullの状態で定義し、
            //ループ処理で全員分のプロフィールをid以外表示する処理を実行する。
            //この際、歯抜けになっているデータはcontinueで飛ばす。
            
            //HashMapを使用
            HashMap<String, String> data = new HashMap<String, String>();
            String getData(int i){
            String profile = "";
            
                if(i == 0) {
                    data.put("id", "001");
                    data.put("name", "名前：ロロノア・ゾロ <br>");
                    data.put("birth", "生年月日：11/11 <br>");
                    data.put("add", "null <br><br>");
                    profile = (data.get("name") + data.get("birth")+data.get("add"));
                    
                }else if(i == 1) {
                    data.put("id", "002");
                    data.put("name", "名前：ナミ <br>");
                    data.put("birth", "生年月日：7/3 <br>");
                    data.put("add", "住所：東の海 コノミ諸島 ココヤシ村 <br><br>");
                    profile = (data.get("name") + data.get("birth")+data.get("add"));
                    
                }else if(i == 2) {
                    data.put("id", "003");
                    data.put("name", "名前：ウソップ <br>");
                    data.put("birth", "生年月日：4/1 <br>");
                    data.put("add", "住所：東の海 ゲッコー諸島 シロップ村 <br><br>");
                    profile = (data.get("name") + data.get("birth")+data.get("add"));
                }
                return profile;
            }
        %>
        <%
            for (int i=0; i<3; i++) {
                if (data.get(i) == "null") {
                continue;
                }            
                String profile = getData(i);
                out.println(profile);
            }
        %>

    </body>
</html>
