<%-- 
    Document   : Standard_09
    Created on : 2016/06/13, 22:26:21
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
            //９．ファイルから自己紹介を読み出し、表示してください。
            
            //ファイル名をセット
            String filename = "C:\\develop\\Standard\\web\\Standard\\text.txt";
            //読み込みモードでオブジェクト生成
            FileReader fr = new FileReader(filename);
            //読み込み用にバッファリング（高速化）
            BufferedReader br = new BufferedReader(fr);
            //brにBufferedReaderオブジェクトが格納された後nullが出るまでstrを表示
            String str;
            while((str = br.readLine()) != null){
                out.print(str);
            }
            br.close();
        %>
    </body>
</html>
