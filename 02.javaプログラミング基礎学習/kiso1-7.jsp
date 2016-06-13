<%-- 
    Document   : kiso1-7
    Created on : 2016/06/01, 10:37:03
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
        <%
            /*
            //クエリストリングを利用して、スーパーのレジでレシートを作る仕組みを作成。
            
            http://localhost:8080/WebApplication1/kiso1-7.jsp?Total=4000&Number=6&Commondly=1
            */
            
            String Total = request.getParameter("Total"); //総額(4000円)
            String Number = request.getParameter("Number"); //個数(6個)
            String Commondly = request.getParameter("Commondly"); //商品種別(1:雑貨)
            
            int x = Integer.parseInt(Total);
            int y = Integer.parseInt(Number);
            int z = Integer.parseInt(Commondly);
            
            //①商品種別を表示
                String message = "";
                switch(z) {
                    case 1:
                        message = "雑貨";
                        break;
                    case 2:
                        message = "生鮮食品";
                        break;
                    default:
                        message = "その他";
                        break;
                }
                out.println(message);
                
            //②総額と個数から1個当たりの値段を算出。値段を表示。
                int wari = x / y;
                out.print("1個当たりの値段は"+wari+"円です");
                
            //③3000円以上購入で4%、5000円以上購入で5%のポイントが付く。購入額に応じたポイントを表示。
                if(x>5000){
                    //総額が3000円以上ならここに来ます。
                    double kake = x * 0.05;
                    out.print(x +"円購入時のポイントは"+ kake +"です");
                }else if(x>3000){
                    //総額が5000円以上ならここに来ます。
                    double kake = x * 0.04;
                    out.print(x +"円購入時のポイントは"+ kake +"です");
                }

        %>
    </body>
</html>
