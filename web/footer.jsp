<!-- footer -->
<%@page import="java.io.BufferedReader"
import="java.io.BufferedWriter"
import="java.io.IOException"
import="java.io.InputStream"
import="java.io.InputStreamReader"
import="java.io.OutputStream"
import="java.io.OutputStreamWriter"
import="java.net.HttpURLConnection"
import="java.net.MalformedURLException"
import="java.net.URL"
import="java.net.URLEncoder"
import="org.json.JSONArray"
import="org.json.JSONObject" %>

	<div class="footer agileits-w3layouts">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-xs-4 col-sm-6 footer-grids w3-agileits">
					<h3>company</h3>
					<ul>
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>  
						
					</ul>
				</div> 
                            <br> 
				<div class="col-xs-4 col-sm-6 footer-grids w3-agileits">
					<h3>help</h3>
					<ul>
						<li><a href="help.jsp">FAQ</a></li> 
						
						<li><a href="offers.jsp">Offers</a></li> 
					</ul>  
				</div>
                            
				<div class="col-xs-4 col-sm-6 footer-grids w3-agileits">
					<h3>policy info</h3>
					<ul>  
						<li><a href="terms.jsp">Terms & Conditions</a></li>  
						<li><a href="privacy.jsp">Privacy Policy</a></li>
						
					</ul>   
				</div>
				<div class="col-xs-4 col-sm-6 footer-grids w3-agileits">
					<h3>Menu</h3> 
					<ul>
						<li><a href="menu.jsp">All Day Menu</a></li> 
						<li><a href="menu.jsp">Lunch</a></li>
						<li><a href="menu.jsp">Dinner</a></li>
						<li><a href="menu.jsp">Flavours</a></li> 
					</ul>  
				</div> 
                            
                            <div class="col-xs-4 col-sm-6 footer-grids w3-agileits">
					<h3>Live Weather</h3> 
					<ul>
		 <%
            String temp,humidity,description;
            BufferedReader myreader=null;
            String data="";  

            String url="http://api.openweathermap.org/data/2.5/weather?lat=31.294421&lon=75.583031&appid=443226502af6798025ea9e9d8e93f498&units=metric";
            try {
            URL myurl=new URL(url);
            myreader=new BufferedReader(new InputStreamReader(myurl.openStream()));
            data= myreader.readLine();
            JSONObject myobject=new JSONObject(data);
            JSONObject tempdata=myobject.getJSONObject("main");

            JSONArray myarray=myobject.getJSONArray("weather");

            JSONObject weatherforecast=myarray.getJSONObject(0);

            out.print("<li style='color:grey'>Today's forecast is " + weatherforecast.get("description") + "</li>");

            temp=tempdata.get("temp").toString();
            humidity=tempdata.get("humidity").toString();
            out.print("<li style='color:grey'>Current temperature is " + temp + " degree celcius</li>");
            out.print("<li style='color:grey'>Current Humidity is " + humidity + "</li>");


            } catch (MalformedURLException e) {

            e.printStackTrace();
            } catch (IOException e) {

            e.printStackTrace();
            } 

            %>
            </ul>
            
        
	  
				</div> 

				<div class="clearfix"> </div>
			</div>
		</div> 
	</div>
	<div class="copyw3-agile"> 
		<div class="container">
			<p>&copy; 2017 Staple Food. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	</div>

	<!-- //footer --> 
        	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->	
	<!-- Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel ({
				items : 3,
				lazyLoad : true,
				autoPlay : true,
				pagination : true,
			});
		});
	</script>
	<!-- //Owl-Carousel-JavaScript -->  
	<!-- start-smooth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>  
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	  
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>