<%-- 
    Document   : kiso3-4
    Created on : 2016/06/06, 20:29:07
    Author     : 1999itukinao
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            //課題1で定義したメソッドに追記する形として、戻り値　true(boolean)　を返却するように修正し、
            //メソッドの呼び出し側でtrueを受け取れたら「この処理は正しく実行できました」そうでないなら「正しく実行できませんでした」と表示する。
            
            String getName() {
                return "菊池 瞳";
            }
            String getBirth() {
                return "1990/4/18";
            }
            String getSelfintro() {
                return "趣味はDIYです";
            }
            boolean Type(){
                return true;
            }
        %>    
        <%    
                String name = getName();
                String birth = getBirth();
                String selfintro = getSelfintro();
                boolean  type = Type();
            
            for(int i = 0; i < 10; i++) {
                out.print("名前："+ name +"<br>生年月日："+ birth +"<br>自己紹介："+ selfintro +"<br><br>");
            }
            if(type == true){
                out.print("この処理は正しく実行できました");
            }else {
                out.print("正しく実行できませんでした");
            }
        %>
    </body>
</html>
