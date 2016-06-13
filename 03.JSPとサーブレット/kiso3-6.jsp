<%-- 
    Document   : kiso3-6
    Created on : 2016/06/07, 10:28:13
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
            //引数に1つのid(数値)をとり、3人分のプロフィール(項目は課題5参照)をあらかじめメソッド内で定義しておく。
            //引数のid値により戻り値として返却するプロフィールを誰のものにするか選択する。それ以降などは課題5と同じ扱いに。
            
            //HashMapを使用
            HashMap<String, String> data = new HashMap<String, String>();
            String getData(int id){
            String profile = "";
            
                if(id == 001) {
                    data.put("id", "001");
                    data.put("name", "名前：ロロノア・ゾロ <br>");
                    data.put("birth", "生年月日：11/11 <br>");
                    data.put("add", "住所：東の海 シモツキ村 <br><br>");
                    profile = (data.get("name") + data.get("birth")+data.get("add"));
                    
                }else if(id == 002) {
                    data.put("id", "002");
                    data.put("name", "名前：ナミ <br>");
                    data.put("birth", "生年月日：7/3 <br>");
                    data.put("add", "住所：東の海 コノミ諸島 ココヤシ村 <br><br>");
                    profile = (data.get("name") + data.get("birth")+data.get("add"));
                    
                }else if(id == 003) {
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
            int id = 003;
            
            String profile = getData(id);
            out.println(profile);
        %>

    </body>
</html>
