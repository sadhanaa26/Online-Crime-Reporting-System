/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.cj.protocol.Resultset;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
public class InsertData2 extends HttpServlet {

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
        try {
            Connection conn = CP.createC();
            String q = "insert into accused_details(accused_name,accused_phoneno,type_of_crime,loc_of_crime,"
                    + "date_of_crime,crime_incident_desc,user_id,status)"
                    + "values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(q);
            HttpSession session=request.getSession(true);
            ps.setString(2,request.getParameter("accused_phoneno"));
            ps.setString(1,request.getParameter("accused_name"));
            ps.setString(3,request.getParameter("type_of_crime"));
            ps.setString(4,request.getParameter("loc_of_crime"));
            ps.setDate(5,java.sql.Date.valueOf(request.getParameter("date_of_crime")));
            ps.setString(6,request.getParameter("crime_incident_desc"));
            ps.setInt(7,(int)session.getAttribute("user_id"));
            ps.setString(8,"Details Submitted");
            ps.executeUpdate();
            ps.close();
            conn.close();
            RequestDispatcher rd = request.getRequestDispatcher("reported.jsp");
            rd.forward(request, response);
        }
        catch(Exception e)
        {
            e.printStackTrace();
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
