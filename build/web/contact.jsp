<%-- 
    Document   : welcome
    Created on : 10 Mar, 2018, 5:31:07 PM
    Author     : Home
--%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <%@include file="css.jsp" %>
            </head>
    <body>
        <%@include file="userheader.jsp" %>
        
        
    
	<!-- //banner -->    
	<!-- breadcrumb -->  
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Contact Us</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- contact -->
	<div id="contact" class="contact cd-section">
		<div class="container">
			<h3 class="w3ls-title">Contact us</h3>
			<p class="w3lsorder-text">Get in Touch with Us!!</p> 
			<div class="contact-row agileits-w3layouts">  
				<div class="col-xs-6 col-sm-6 contact-w3lsleft">
					<div class="contact-grid agileits">
						<h4>DROP US A LINE </h4>
						<form action="#" method="post"> 
							<input type="text" name="Name" placeholder="Name" required="">
							<input type="email" name="Email" placeholder="Email" required=""> 
							<input type="text" name="Phone" placeholder="Phone Number" required="">
							<textarea name="Message" placeholder="Message..." required=""></textarea>
							<input type="submit" value="Submit" name="submit">
                              <%
                                      if(request.getParameter("submit")!=null)
                                      {
                                                Properties props = new Properties();
                                                props.put("mail.smtp.host", "smtp.gmail.com");
                                                props.put("mail.smtp.socketFactory.port", "465");
                                                props.put("mail.smtp.socketFactory.class",
                                                "javax.net.ssl.SSLSocketFactory");
                                                props.put("mail.smtp.auth", "true");
                                                props.put("mail.smtp.port", "465");

                                                Session session2 = Session.getInstance(props,
                                                new javax.mail.Authenticator() {
                                                protected PasswordAuthentication getPasswordAuthentication() {
                                                return new PasswordAuthentication("ishasethi009@gmail.com","ishasethi1@");
                                                }
                                                });
                                                try {
                                                Message message = new MimeMessage(session2);
                                                message.addHeader("Content-type", "text/html; charset=UTF-8");
                                                message.setFrom(new InternetAddress("ishasethi009@gmail.com"));
                                                String Email=request.getParameter("Email");
                                                message.setReplyTo(new Address[]{new InternetAddress("Email")});
                                                message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse("ishitakohli007@gmail.com"));
                                                message.setSubject("Feedback from website");

                                                message.setText("Name : " + request.getParameter("Name") + "\n Emailid : "+ request.getParameter("Email") + "\n Message :" + request.getParameter("Message") + "\nPhone : " + request.getParameter("Phone"));




                                                Transport.send(message);
                                                out.print("Mail sent successfully");

                                                }
                                                catch(Exception e) 
                                                {
                                                out.println("Mail does not works");
                                                } 
                                                }
                                         %>
						</form> 
					</div>
				</div>
				<div class="col-xs-6 col-sm-6 contact-w3lsright">
					<h1><span> </span> Please complete the given form,so that we can provide quick and efficient service !! </h1>
					<div class="address-row">
						<div class="col-xs-2 address-left">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 address-right">
                                                    <h5>Visit Us</h5>
                                                    <p><a href="map.jsp" style='color:red'>Urban Estate,Jalandhar</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-row w3-agileits">
						<div class="col-xs-2 address-left">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 address-right">
							<h5>Mail Us</h5>
							<p><a href="mailto:ishitakohli007@gmail.com"> ishitakohli007@gmail.com</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-row">
						<div class="col-xs-2 address-left">
							<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 address-right">
							<h5>Call Us</h5>
							<p style='color:red'>+91 8146020376</p>
						</div>
						<div class="clearfix"> </div>
					</div>  
				</div>
				
			</div>	
		</div>	
                   </div>
                                              
		
       
    </body>
</html>
