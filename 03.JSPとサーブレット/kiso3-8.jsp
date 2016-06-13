<%-- 
    Document   : kiso3-8
    Created on : 2016/06/07, 15:55:50
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
            //先にInteger limit=2を定義しておき、課題7の処理のうち2人目(limitで定義した値の人数)まででループ処理を抜けるようにする。
            
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
            int limit = 2;
            for (int i=0; i<3; i++) {
                if (data.get(i) == "null") {
                continue;
                }else if(limit == i) {
                break;
                }            
                String profile = getData(i);
                out.println(profile);
            }
        %>
    </body>
</html>
