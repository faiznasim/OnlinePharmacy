

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

        <div class="header-block" style="clear:both">
                <div class="left-block">
                    <div class="logotext">WELCOME TO MediStore.com </div>
                    
                    <span class="tagline">your search END here</span>
                </div>
                <div class="right-block">
                 
          <% HttpSession nsession = request.getSession(false);
          String data=(String)session.getAttribute( "sessname" );
        // out.println(data);
         if(data!=null) {
         %>
         <input type="submit" value="Logout" onclick="location.href='logout'" class="but" />
         <%}
        else
        {%>
            <div style="float: left"><input class="but" type="button" onClick="location.href='Login.jsp'"  value="Login" name="three" /></div>
            <div style="float: right"><input class="but" type="button" onClick="location.href='Registeration.jsp'"  value="Signup" name="three"/></div>
        <% 
           // out.println("Session is not active");
        }
        %>

   

   
                    

                    
                    
                
                    
                    
                </div> 
            <div/>
           
            <%-- Navigation Menu --%>
           <div id='cssmenu'>
            <ul>
             <li ><a href='home.jsp'><span>Home</span></a></li>
             
             <li><a href='avail_check.jsp'><span>Check Available Medicine</span></a></li>
             <li><a href='check.jsp'><span>Check Your Order</span></a></li>
             <li><a href='order_your_own.jsp'>Order Your Own<span></span></a></li>
             <li class='last'><a href='contact_us.jsp'><span>Contact US</span></a></li>
             <li><a href='aboutus.jsp'><span>About Us</span></a></li>
             
            </ul>
            </div>
            
           <%-- Slider start--%>
     <div class="rslides_container">
      <ul class="rslides" id="slider1">
         <li><img src="4.jpg" alt=""></li>
         <li><img src="5.jpg" alt=""></li>
        <li><img src="7.jpg" alt=""></li>
        <li><img src="8.jpg" alt=""></li>
        <li><img src="1.jpg" alt=""/></li>
        <li><img src="2.jpg" alt=""></li>
        <li><img src="3.jpg" alt=""></li>
        
      </ul>
    </div>
           
           
   
            <%-- DATA BASE CONNECTIVITY--%>
            <%--
try{
        Class.forName("com.mysql.jdbc.Driver");
        out.println("driver loaded");
     Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root" ,"root");
        out.println("Connect");
      Statement  st =  con.createStatement();
          out.println("conncetion successfull");
         
       
            
            out.println("recod is inserted");
            
}
            
            catch(Exception e)
                    {
                    
                    }
            out.close();
            
            --%>