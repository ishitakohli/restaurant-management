<%@page import="java.sql.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.*"%>

<%@include file="myvars.jsp" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot password</title>
        <%@include file="css.jsp" %>
    </head>
    <body>

    <%@include file="userheader.jsp" %>
    <div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Forgot Password</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- login-page -->
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Forgot Password</h3>  
			<div class="login-agileinfo"> 
				<form name="abc" method="post" id="loginform"> 
                                    <input class="agile-ltext" type="email" name="Email" placeholder="Enter your Email Id" required=""> <br>
					
                                    <input type="submit" value="Proceed to send mail to your Id" name="submit">
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
                                                String text = request.getParameter("Email");
                                                
                                                message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(text));
                                                message.setSubject("Reset password Link");
                                                
                                                Random obj=new Random();
                                               int vercode=obj.nextInt(1000);

                                                message.setText("You have requested for password reset link. Kindly click below link to reset your password\n"
                                                + " http://localhost:8080/student_portal/resetpassword.jsp?Email=" + text +  "&vercode=" + vercode);
                                                Transport.send(message);
                                                try
                                                {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "update usertable set vercode=? where username=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                 
                                                  mystatement.setInt(1,vercode);
                                                
                                                  mystatement.setString(2,text);
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                     
                                                    out.print("Mail sent successfully");
 
                                                  }
                                                  else
                                                  {
                                                      out.print("Not updated successfuly");
                                                  }
                                                }
                                                
                                                catch(Exception e)
                                                {
                                                   out.print("error occured in query due to" + e.getMessage());   
                                                }
                                                 finally
                                                {
                                                myconnection.close();
                                                }

                                           }
                                                catch(Exception e)
                                                {
                                                    out.print("error occured in connection due to" + e.getMessage()); 
                                                }
                                                        
                                                }
                                                catch(Exception e) 
                                                {
                                                out.println("Mail does not works" + e.getMessage());
                                                }
                                               
                                            }
                                            %>
				</form>
				<p>Don't have an Account? <a href="signup.jsp"> Sign Up Now!</a></p> 
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
        
    </body>