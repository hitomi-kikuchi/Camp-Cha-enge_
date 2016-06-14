<%-- 
    Document   : Standard_08
    Created on : 2016/06/13, 21:35:24
    Author     : 1999itukinao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.text.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //８．ファイルに自己紹介を書き出し、保存してください。
            
            //ファイル名をセット
            String filename = "C:\\develop\\Standard\\web\\Standard\\text.txt";
            //同じ階層にあるファイルを開く
            FileWriter fw = new FileWriter(filename);
            //まとめて書き込む
            BufferedWriter bw = new BufferedWriter(fw);

            bw.write("菊池 瞳");
            bw.newLine();
            bw.write("1990年4月18日生まれ");
            bw.newLine();
            bw.write("O型");
            bw.newLine();

            //ファイルを閉じる
            bw.close();
        %>
    </body>
</html>
