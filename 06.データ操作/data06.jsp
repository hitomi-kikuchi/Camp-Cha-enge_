<%-- 
    Document   : data06
    Created on : 2016/06/14, 22:32:35
    Author     : 1999itukinao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            //6．HTMLについて調べましょう。
            //HTMLには入力フィールド意外にも様々なタグが存在します。
            //Webページをデザインする上で欠かせない知識なので、
            //タグを調べ、色々と使ってみましょう。
        %>
    </head>
    <body>
    <form action="test" method="post">
    <div style="text-align:center">
        
            <B>名前：</B>
        <input type="text" name="txtName">
            <br><br>
            <B>性別：</B>
        <input type="radio" name="gender" value="男" /> 男　
        <input type="radio" name="gender" value="女" /> 女
            <br><br>
            <B>年齢：</B>
        <input type="checkbox" name="prop" value="1" /> 0～19歳
        <input type="checkbox" name="prop" value="2" /> 20～39歳
        <input type="checkbox" name="prop" value="3" /> 40～59歳
        <input type="checkbox" name="prop" value="4" checked="checked" /> 60～歳以上
            <br><br>
            <B>出身地方：</B>
        <select name="出身地方">
        <option>北海道（北海道）</option>
        <option>東北（青森・岩手・秋田・宮城・山形・福島）</option>
        <option>関東（茨城・栃木・群馬・埼玉・千葉・東京・神奈川）</option>
        <option>中部（山梨・長野・新潟・富山・石川・福井・静岡・愛知・岐阜）</option>
        <option>近畿（三重・滋賀・京都・大阪・兵庫・奈良・和歌山）</option>
        <option>中国（鳥取・島根・岡山・広島・山口）</option>
        <option>四国（香川・愛媛・徳島・高知）</option>
        <option>九州（福岡・佐賀・長崎・熊本・大分・宮崎・鹿児島・沖縄）</option>
        </select>
            <br><br>
        <textarea name="freeans" rows="3" cols="40"> 趣味を記入して下さい </textarea>
            <br><br>
        <address>
            <font size="-1">
            このホームページに関するお問合せは<br>
            HTMLクイックリファレンス<br>
            ホームページ：<a href="http://www.htmq.com/" >http://www.htmq.com/</a><br>
            Eメール：<a href="mailto:info@htmq.com">info@htmq.com</a><br>
            住所：〒000-0000　○○県○○市○○町0-0-0<br>
            ＴＥＬ：000-000-0000<br>
            ＦＡＸ：000-000-0000
            </font>
        </address>
            <br><br>
        <fieldset>
        <legend>ご感想</legend>
        満足度<br><br>
        <input type="radio" name="manzoku" checked>いいと思う<br>
        <input type="radio" name="manzoku">まあまあ<br>
        <input type="radio" name="manzoku">ふつう<br>
        <input type="radio" name="manzoku">あんまり<br>
        <input type="radio" name="manzoku">よくないと思う<br><br>
        </fieldset>
            <br><br>
        <input type="submit" value="送信"> 
    </form>
    </body>
</html>
