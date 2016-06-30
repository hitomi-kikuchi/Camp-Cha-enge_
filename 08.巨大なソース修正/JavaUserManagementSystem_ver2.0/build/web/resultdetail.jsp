<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)hs.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMSユーザー情報詳細画面</title>
    </head>
    <body>
        <form action="Update" method="POST">
        <h1>詳細情報</h1>
        ID:<%= udd.getUserID()%><br>
        名前:<%= udd.getName()%><br>
        生年月日:<%= udd.getBirthday()%><br>
        種別:<%= jh.exTypenum(udd.getType())%><br>
        電話番号:<%= udd.getTell()%><br>
        自己紹介:<%= udd.getComment()%><br>
        登録日時:<%= udd.getNewDate()%><br>
        
        <%--アクセスルートチェック--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="update" value="変更"style="width:100px">
        </form>
        <br>
        <form action="Delete" method="POST">
        <%--アクセスルートチェック--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="delete" value="削除">
        </form>
        <br>
        <form action="SearchResult" method="POST">
        <%--アクセスルートチェック--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="SearchResult" value="検索結果画面へ戻る">
        </form>
        <br>
        <%--トップページに戻る--%>
        <%=jh.home()%>
    </body>
</html>
