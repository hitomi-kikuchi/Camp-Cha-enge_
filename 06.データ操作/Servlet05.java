/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author 1999itukinao
 */
//5．以下の機能を実装してください。

//名前・性別・趣味を入力するページを作成してください。
//また、入力された名前・性別・趣味を記憶し、次にアクセスした際に
//記録されたデータを初期値として表示してください。　　　
//※Javaと同時に、HTMLの知識が必要になります。
//※入力フィールドの使い方を調べてみましょう。

public class Servlet05 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            //受け取るパラメータの文字コード
            request.setCharacterEncoding("UTF-8");
        
            //データの受け取り
            String n = request.getParameter("name");
            String r = request.getParameter("gender");
            String t = request.getParameter("text");
            
            //セッションを取得。trueなら新規セッションを作る
            HttpSession hs = request.getSession(false);
            //セッションに値をput
            if(r.equals("男")){
                hs.setAttribute("checkM" ,"checked");
                hs.setAttribute("checkW" ,"");
            }else if(r.equals("女")){
                hs.setAttribute("checkM" ,"");
                hs.setAttribute("checkW" ,"checked");
            }
            HttpSession h = request.getSession(true);
            //セッションへ格納
            h.setAttribute("LastName", n);
            h.setAttribute("LastMan", r);
            h.setAttribute("LastWoman", r);
            h.setAttribute("LastText", t);
           
            out.print("名前："+ n +"<br>性別："+ r +"<br>趣味："+ t +"<br>");

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
