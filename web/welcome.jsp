<%-- 
    Document   : welcome
    Created on : 10 Mar, 2018, 5:31:07 PM
    Author     : Home
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
        <%@include file="userheader.jsp" %>
        <div class="container">
            <%
                                   GregorianCalendar time = new GregorianCalendar();
                                    int hour = time.get(Calendar.HOUR_OF_DAY);
                                    int min = time.get(Calendar.MINUTE);
                                    int day = time.get(Calendar.DAY_OF_MONTH);
                                    int month = time.get(Calendar.MONTH) + 1;
                                    int year = time.get(Calendar.YEAR);
                                    if (hour < 12)
                                    {
                                    out.print("<h1>Good Morning " + session.getAttribute("gname") +"</h1>");
                                    }
                                   else if (hour < 17 && !(hour == 12))
                                   {
                                     out.print("<h1>Good Afternoon " + session.getAttribute("gname") +"</h1>");  
                                   }
                                    
                                   else if (hour == 12)
                                   {
                                    out.print("<h1>Good Noon " +  session.getAttribute("gname") +"</h1>" );
                                   }
                                   else 
                                   {
                                    out.print("<h1>Good Evening " + session.getAttribute("gname") +"</h1>");
                                   }
                                                                              
                                       
                                          
                                          
                %>
           
        <div class="row">
                <div class="col-md-4">
                    <a href="menu.jsp">
                        <img src="images/icon2.png" width="200px"  height="200px">
                    </a>
                    <br>
                    <a href="menu.jsp" style='color:black'><h4>Choose Category of food items </h4></a>
                </div>
            
                <div class="col-md-4">
                    <a href="showcart.jsp">
                        <img src="images/cart1.png" width="200px" height="200px">
                    </a>
                    <br>
                    <a href="showcart.jsp" style='color:black'><h4>Show cart of food items</h4> </a>
                </div>
             <div class="col-md-4">
                    <a href="checkout.jsp">
                        <img src="images/payment.png" width="200px"  height="200px">
                    </a>
                    <br>
                    <a href="checkout.jsp" style='color:black'><h4>Checkout to pay your order</h4></a>
                </div>
        </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
