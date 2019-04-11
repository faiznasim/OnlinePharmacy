<%-- 
    Document   : index
    Created on : Feb 27, 2015, 7:39:57 PM
    Author     : OOPs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="home.css">
         <title>JSP Page</title>
        
         <style>
            
        .but{
  
        width: 100px; height: 40px;
        color : red;

   border-top: 1px solid #96d1f8;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#728cdb), to(#65a9d7));
   background: -webkit-linear-gradient(top, #728cdb, #65a9d7);
   background: -moz-linear-gradient(top, #728cdb, #65a9d7);
   background: -ms-linear-gradient(top, #728cdb, #65a9d7);
   background: -o-linear-gradient(top, #728cdb, #65a9d7);
   padding: 5px 10px;
   -webkit-border-radius: 8px;
   -moz-border-radius: 8px;
   border-radius: 8px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 20px;
   font-family: Georgia, serif;
   text-decoration: none;
   vertical-align: middle;
  cursor: pointer;
}
        </style>

<link href="responsiveslides.css" rel="stylesheet" type="text/css"/>
<link href="themes.css" rel="stylesheet" type="text/css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="responsiveslides.min.js" type="text/javascript"></script>
  <script>
      
      $(function () {

      // Slideshow 1
      $("#slider1").responsiveSlides({
        auto: true,
        pager: false,
        nav: true,
        speed: 500,
        maxwidth: 1200,
        namespace: "centered-btns"
      });
   });
  </script>
  
  

  
    </head>
    <body>
       
        <%@ include file="header.jsp" %>
         
        <div  class="hotel-book-back" style=" margin-top: 269px; width: 104%; margin-left: -23px;">
            
            <div class="about-block" style="font-size: 15px; color:  #ffffff;">
                <h2 class="heading"> About Us  </h2>



             <br/>
             <br/>
Abdullah Al-Sakin <br/>
Ahsanullah University Of Science and Technology <br/>
Department of Computer Science and Engineering <br/>
Email: sakin.aust.cse@gmail.com<br/>
Phone No: 01758840869<br/><br/><br/><br/>

Syed faiz Nasim <br/>
Ahsanullah University Of Science and Technology <br/>
Department of Computer Science and Engineering <br/>
Email: syed.aust@gmail.com<br/>
Phone No: 01521345465<br/><br/><br/><br/>

Rifat Ahamed Nihal <br/>
Ahsanullah University Of Science and Technology <br/>
Department of Computer Science and Engineering <br/>
Email: nihal.aust@gmail.com<br/>
Phone No: 01521675446<br/><br/><br/><br/>

            </div>
        </div>
           
    </body>
    <%@ include file="footer.jsp" %>
    
</html>
