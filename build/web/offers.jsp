<%-- 
    Document   : welcome
    Created on : 10 Mar, 2018, 5:31:07 PM
    Author     : Home
--%>
<%@page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat" %>  
<%@ page import="java.util.Date" %>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Offers</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
        <%@include file="userheader.jsp" %>
        
         
	</div>
	<!-- //banner -->    
	<!-- breadcrumb -->  
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Offers</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- offers-page -->
	<div class="offers about"> 
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Our Offers</h3>  
			
			<div class="offers-wthreerow2">
				<div class="add-products-row">
					<div class="w3ls-add-grids">
						<%
                                        Calendar cal=Calendar.getInstance();
                                        cal.set(Calendar.HOUR_OF_DAY,13);
                                        cal.set(Calendar.MINUTE,0);
                                        cal.set(Calendar.SECOND,0);
                                        cal.set(Calendar.MILLISECOND,0);
                                        boolean afterSix=Calendar.getInstance().after(cal);
                                        
                                        Calendar cal1=Calendar.getInstance();
                                        cal1.set(Calendar.HOUR_OF_DAY,16);
                                        cal1.set(Calendar.MINUTE,0);
                                        cal1.set(Calendar.SECOND,0);
                                        cal1.set(Calendar.MILLISECOND,0);
                                        
                                        boolean beforeFour=Calendar.getInstance().before(cal1);
                                          
                                          if(afterSix && beforeFour)
                                          {
                                            out.print("<a href='menudiscount.jsp'>" 
						+ "<h4>Get <span>10%<br>Discount</span></h4>"
						+ "<h5>Valid for today only </h5>"
						+ "<h6>Order Now <i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					         + "</a>");    
                                          }
                                          else
                                          {
                                             					         
                                          out.print("<a href='offers.jsp'>" 
						+ "<h4>Get <span>10%<br>Discount</span></h4>"
						+ "<h5>Valid for today only </h5>"
						+ "<h6>Offer valid for lunch only <i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					         + "</a>");    
                                          }
                                          
                                        %>
					
					</div>
					<div class="w3ls-add-grids w3ls-add-grids-right">
                                         <%
                                             SimpleDateFormat formatter1 = new SimpleDateFormat("dd/MM/yyyy");  
                                             Date date1 = new Date();
                                             SimpleDateFormat ft =  new SimpleDateFormat ("EEEE");
                                             if(ft.format(date1).equals("Sunday"))
                                             {
                                              out.print("<a href='menudiscount20.jsp'>" 
						+ "<h4>GET <span><br>20% Offer</span></h4>"
						 + "<h5>Sunday special discount</h5>"
						+ "<h6>Order Now <i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					        + "</a>"); 
						
                                             } 
                                             else
                                             {
                                                 out.print("<a href='offers.jsp'>"
                                                            + "<h4>GET <span><br>20% Offer</span></h4>"
						            + "<h5>Sunday special discount</h5>"
                                                          + "<h6> Offer valid on Sunday only<i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6> ");
                                             }
                                        %>

					</div> 
					<div class="clearfix"> </div> 
				</div>  
			</div>
		</div>
	</div>
	<!-- //offers-page -->  
	<!-- subscribe -->
	        <%@include file="footer.jsp" %>
    </body>
</html>
