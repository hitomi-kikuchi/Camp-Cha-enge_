<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
<%
    if(!udb.getName().equals("") && udb.getYear()!=null && 
            udb.getMonth()!=null && udb.getDay()!=null && 
            udb.getType()!=null && !udb.getTell().equals("") && 
            !udb.getComment().equals("")) { 
%>
        <h1>登録確認</h1>
        名前:<%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%= udb.getType()%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい"><br><br>
        </form>
        <%  }else {
            //未入力のチェック
                if(udb.getName().equals("")) {
                    out.println("名前の項目が未入力です<br>");
                }else if(udb.getYear().equals("")) {
                    out.println("生まれ年の項目が未入力です<br>");
                }else if(udb.getMonth().equals("")) {
                    out.println("生まれ月の項目が未入力です<br>");
                }else if(udb.getDay().equals("")) {
                    out.println("生まれ日の項目が未入力です<br>");
                }else if(udb.getType().equals("")) {
                    out.println("種別の項目が未入力です<br>");
                }else if(udb.getTell().equals("")) {
                    out.println("電話番号の項目が未入力です<br>");
                }else if(udb.getComment().equals("")) {
                    out.println("コメントの項目が未入力です<br>");
                }
            }
        %>
        <form action="insert" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <%//TOP PAGEに戻る %>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
