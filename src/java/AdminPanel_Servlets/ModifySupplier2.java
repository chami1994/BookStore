/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminPanel_Servlets;

import Classes.AuthorClass;
import Classes.SupplierClass;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dushara Vitiyala
 */
@WebServlet(name = "ModifySupplier2", urlPatterns = {"/ModifySupplier2"})
public class ModifySupplier2 extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ModifySupplier2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModifySupplier2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String supplierSearchName= request.getParameter("supplierName");
        SupplierClass supplier = new SupplierClass();
        supplier.setSup_Name(supplierSearchName);//set author name
        supplier.getSupplierDetails();//get details
        //set values.........
        String supplierName = supplier.getSup_Name();
        String supplierConNo= supplier.getSup_ConNo();
        String supplierMail = supplier.getSup_Mail();
        String supplierADD1 = supplier.getSup_addLine1();
        String supplierADD2 = supplier.getSup_addLine2();
        String supplierADD3 = supplier.getSup_addLine3();
        System.out.println("sup no "+supplierConNo);
        
        //..............
        request.setAttribute("searchedSupplierName", supplierName);
        request.setAttribute("searchedSupplierConNo", supplierConNo);
        request.setAttribute("searchedSupplierMail", supplierMail);
        request.setAttribute("searchedSupplierADD1", supplierADD1);
        request.setAttribute("searchedSupplierADD2", supplierADD2);
        request.setAttribute("searchedSupplierADD3", supplierADD3);
        RequestDispatcher rd = request.getRequestDispatcher("adminPanel/modifySuppliers2.jsp");
        rd.forward(request, response);        
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
