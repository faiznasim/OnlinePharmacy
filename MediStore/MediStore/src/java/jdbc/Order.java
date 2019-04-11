package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author OOPs
 */
public class Order extends HttpServlet {

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
        
        String s2 = request.getParameter("name");
           String s3 = request.getParameter("email");
           String s4 = request.getParameter("product");
           String s5 = request.getParameter("quantity");
           String s6 = request.getParameter("phoneno");
           String s7 = request.getParameter("address");
           
           
           // sesson..........
           HttpSession session=request.getSession(true);
          String s11 = (String)session.getAttribute("sessname");
          
           
           
         
         
       out.println(s11);
             
         
   
          
       try {
           
           
            Class.forName("com.mysql.jdbc.Driver");
      //  out.println("driver loaded");
     Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medistore1","root" ,"");
      //  out.println("Connect");
      Statement  st =  con.createStatement();
        //  out.println("conncetion successfull");
     
       
       int rs =  st.executeUpdate("insert into medistore1.order (u_name,email,p_name,p_quantity,u_phone,address) values ('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
         // out.println(s1);
         // out.println(s2);
          out.println("<h1> order sucsefulltttt </h1>");
           
          /* if(rs == 1)
           {
           out.println("<script type=\"text/javascript\">");
       out.println("alert('send successfully');");
       out.println("</script>");
       //response.sendRedirect("home.jsp");
           }else{
       
       
       }*/
           
          String redirectedPage = "/parentPage";
          response.sendRedirect("thankyou.jsp"); 
           
           
           
        }catch(Exception e){
        out.println("error at" +e);
        }
        finally {
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
