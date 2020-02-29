<%-- 
    Document   : welcome
    Created on : 10 Mar, 2018, 5:31:07 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Help</title>
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
			<li class="active">Help</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- help-page -->
	<div class="help about">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">How can we help you</h3>  
			<div class="faq-w3agile"> 
				<h5>Top 5 Frequently asked questions(FAQ)</h5> 
				<ul class="faq">
					<li class="item1"><a href="#" title="click here">Why did I receive a wrong product?</a>
						<ul>
							<li class="subitem1"><p> If so, please contact us or mail us.</p></li>										
						</ul>
					</li>
					<li class="item2"><a href="#" title="click here">What if I did not receive the food within 30 minutes?</a>
						<ul>
                                                    <li class="subitem1"><p> If so, our team will offer you a discount of 5%.</p></li>									
						</ul>
					</li>
					<li class="item3"><a href="#" title="click here">How do I place a cancellation request? </a>
						<ul>
							<li class="subitem1"><p>If you call us within 10 minutes after order has been placed then your order will be cancelled else you have to pay for it.</p></li>										
						</ul>
					</li>
					<li class="item4"><a href="#" title="click here">How long does it take for refund after cancellation?</a>
						<ul>
							<li class="subitem1"><p>Our restaurant only provides only cash on delivery service.</p></li>										
						</ul>
					</li> 
					<li class="item5"><a href="#" title="click here">How to track my order ?</a>
						<ul>
							<li class="subitem1"><p>Our delivery boy will contact you within 30 minutes when he reaches near your place.</p></li>										
						</ul>
					</li>
					
				</ul>
				<!-- script for tabs -->
				<script type="text/javascript">
					$(function() {
					
						var menu_ul = $('.faq > li > ul'),
							   menu_a  = $('.faq > li > a');
						
						menu_ul.hide();
					
						menu_a.click(function(e) {
							e.preventDefault();
							if(!$(this).hasClass('active')) {
								menu_a.removeClass('active');
								menu_ul.filter(':visible').slideUp('normal');
								$(this).addClass('active').next().stop(true,true).slideDown('normal');
							} else {
								$(this).removeClass('active');
								$(this).next().stop(true,true).slideUp('normal');
							}
						});
					
					});
				</script>
				<!-- script for tabs --> 
			</div>  
			
		</div>
	</div>
	<!-- //help-page -->  
	<!-- subscribe -->
	        
        <%@include file="footer.jsp" %>
    </body>
</html>
