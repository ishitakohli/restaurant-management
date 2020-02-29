<%-- 
    Document   : index
    Created on : 6 Mar, 2018, 11:48:03 AM
    Author     : Home
--%>
<%@page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat" %>  
<%@ page import="java.util.Date" %>   
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel services</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
      
        <%@include file="header2.jsp" %>
        <div class="banner-text">	
			<div class="container">
				<h2>Delicious food from the <br> <span>Best Chefs For you.</span></h2>
				<div class="agileits_search">
					
				</div> 
			</div>
		</div>
	</div>
	<!-- //banner -->   
	<!-- add-products -->
                                            
	<div class="add-products">  
		<div class="container">
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
                                             					         
                                          out.print("<a href='index.jsp'>" 
						+ "<h4>Get <span>10%<br>Discount</span></h4>"
						+ "<h5>Valid for today only </h5>"
						+ "<h6>Offer valid for lunch only<i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					         + "</a>");    
                                          }
                                          
                                        %>
					
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-right">
                                     <%
                                             SimpleDateFormat formatter1 = new SimpleDateFormat("dd/MM/yyyy");  
                                             Date date1 = new Date();
                                             SimpleDateFormat ft =  new SimpleDateFormat ("EEEE");
                                             if(ft.format(date1).equals("Thursday"))
                                             {
                                              out.print("<a href='menudiscount20.jsp'>" 
						+ "<h4>GET <span><br>20% Offer</span></h4>"
						 + "<h5>Thursday special discount</h5>"
						+ "<h6>Order Now <i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					        + "</a>"); 
						
                                             } 
                                             else
                                             {
                                                 out.print("<a href='index.jsp'>"
                                                            + "<h4>GET <span><br>20% Offer</span></h4>"
						            + "<h5>Thursday special discount</h5>"
                                                          + "<h6> Offer valid on Thursday only<i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6> ");
                                             }
                                        %>
					
				</div> 
				<div class="clearfix"> </div> 
			</div>  	 
		</div>
	</div>
                                        
                                        
                                        
                                        
                                        <div class="w3agile-spldishes">
		<div class="container">
			<h3 class="w3ls-title">Special Foods</h3>
			<div class="spldishes-agileinfo">
				<div class="col-md-3 spldishes-w3left">
					<h5 class="w3ltitle">Staple Specials</h5>
					<p>Enjoy our restaurant best food Specialities !!</p>
				</div> 
				<div class="col-md-9 spldishes-grids">
					<!-- Owl-Carousel -->
					<div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
						<a href="menu.jsp" class="item g1">
							<img class="lazyOwl" src="images/bullets.jpg" width='300px' height='300px' title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Bullets</h4>
								<span>Enjoy the delicious chinese taste of bullets</span>
							</div>
						</a>
						<a href="menu.jsp" class="item g1">
							<img class="lazyOwl" src="images/cheese.jpg" width='300px' height='300px' title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Cheese chilli</h4>
								<span>Enjoy the yummiest cheese </span>
							</div>
						</a>
						
						<a href="menu.jsp" class="item g1">
							<img class="lazyOwl" src="images/mexico.jpg" width='300px' height='300px' title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Mexican Pizza</h4>
								<span>Enjoy the taste of mexican pizza in india </span>
							</div>
						</a>
						<a href="menu.jsp" class="item g1">
							<img class="lazyOwl" src="images/daaljpg.jpg" width='300px' height='300px' alt=""/>
							<div class="agile-dish-caption">
								<h4>Daal Fry</h4>
								<span>Enjoy the assorted flavour of daal from various states  </span>
							</div>
						</a> 
						<a href="menu.jsp" class="item g1">
							<img class="lazyOwl" src="images/lolipop.jpg" width='300px' height='300px' title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Chicken Lolipop</h4>
								<span>Taste it once, you will visit again to taste it  </span>
							</div>
						</a>
						<a href="menu.jsp" class="item g1">
							<img class="lazyOwl" src="images/chicekn.jpg"  width='300px' height='300px' title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Chicken Sandwich</h4>
								<span>The most healthiest sandwich from our chef's delicacy </span>
							</div>
						</a>
						<a href="menu.jsp" class="item g1">
							<img class="lazyOwl" src="images/curry.jpg" width=200px height=200px title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Mutton curry</h4>
								<span>Delicious curry you have ever tasted</span>
							</div>
						</a>
					</div> 
				</div>  
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //add-products --> 
	<!-- order -->   	
	
	<!-- //order -->    
	<!-- deals -->
	<div class="w3agile-deals">
		<div class="container">
			<h3 class="w3ls-title">Special Services</h3>
			<div class="dealsrow">
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>FREE DELIVERY</h4>
						<p>Enjoy free delivery on orders above Rs.500</p>
					</div> 
					<div class="clearfix"> </div>
				</div> 
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-birthday-cake" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>Party Orders</h4>
						<p>Enjoy your parties with our best services.For more info call us at +91-8146020376</p>
					</div> 
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-users" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>Team up Scheme</h4>
						<p>Team up with us to enjoy the best services.For more info call us at +91-8146020376</p>
					</div>
					<div class="clearfix"> </div>
				</div> 
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-building" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>Corporate orders</h4>
						<p>For Bulk Queries & Corporate orders,please write to us at ishitakohli007@gmail.com and concerned team shall get back to you soon.
 </p>
					</div>
					<div class="clearfix"> </div>
				</div> 
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
        
        
        <div class="wthree-order">  
		<img src="images/i2.jpg" class="w3order-img" alt=""/>
		<div class="container">
			<h3 class="w3ls-title">How To Order Online Food</h3>
			<p class="w3lsorder-text">Get your favourite food in 4 simple steps.</p>
                        <div class="order-agileinfo">  
				<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-map" aria-hidden="true"></i> 
                                                <a href="map.jsp"><h5>Search Us</h5></a>
						<span>1</span>
					</div>
				</div>
                        
							<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-cutlery" aria-hidden="true"></i> 
                                                <a href="menu.jsp"><h5>Choose Food</h5></a>
						<span>2</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-credit-card" aria-hidden="true"></i>
                                                <a href="checkout.jsp"><h5>Pay Money</h5></a>
						<span>3</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-truck" aria-hidden="true"></i>
                                                <a href="index.jsp"><h5>Enjoy Food</h5></a>
						<span>4</span>
					</div>
				</div>
				<div class="clearfix"> </div> 
			</div>
		</div>
	</div>
	<!-- //deals --> 
	<!-- dishes -->
	
	<!-- //dishes --> 
	<!-- subscribe -->
	
    <div class="clearfix"> </div> 
		
	
         <%@include file="footer.jsp" %>
          
    </body>
</html>
