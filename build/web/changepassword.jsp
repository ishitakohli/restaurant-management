<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<%
    if(session.getAttribute("gname")==null && session.getAttribute("aname")==null)
    {
        response.sendRedirect("login.jsp");
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
    
	
            <%
            if(session.getAttribute("gname")!=null)
            {
           %>
            <%@include file="userheader.jsp" %>
            <%
            }
            else if(session.getAttribute("aname")!=null)
            {
            %>
            <%@include file="header3.jsp" %>
            <%
            }   
            %>
       
   <div class="container">
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Login</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- login-page -->
	        <div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Change Password</h3>  
			<div class="login-agileinfo"> 
				<form action="#" method="post" id="loginform"> 
					<input class="agile-ltext" type="password" name="curpass" placeholder="Current password" required="">
					<input class="agile-ltext" type="password" name="newpass" placeholder="New Password" required="">
                                        <input class="agile-ltext" type="password" name="conpass" placeholder="Confirm Password" required="">
					<div class="wthreelogin-text"> 
						<ul> 
							
							
						</ul>
					</div> 
                                        
					<input type="submit" value="Submit" name="Submit">
                                        <%
                                            if(request.getParameter("Submit")!=null)
                                            {
                                              try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                    String query="";
                                                    PreparedStatement mystatement;
                                                    if(session.getAttribute("gname")!=null)
                                                      {
                                                        
                                                  query= "update usertable set password=SHA(?) where username=? and password=SHA(?)";
                                                  mystatement=myconnection.prepareStatement(query);
                                                  mystatement.setString(1, request.getParameter("newpass") + SALT);
                                                  mystatement.setString(2, session.getAttribute("uname").toString());
                                                  mystatement.setString(3, request.getParameter("curpass") + SALT);
                                                   
                                                     }
                                                    else
                                                    {
                                                        query="update atable set password=SHA(?) where username=? and password=SHA(?)";
                                                        mystatement=myconnection.prepareStatement(query);
                                                        mystatement.setString(1, request.getParameter("newpass") + SALT);
                                                        mystatement.setString(2, session.getAttribute("aname").toString());
                                                        mystatement.setString(3, request.getParameter("curpass") + SALT);
                                                    }
                                                  
                                                  
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      out.print("Password changed");
                                                  }
                                                  else
                                                  {
                                                      out.print("Incorrect Password");
                                                  }
                                                  
                                                 } // inner try
                                            
                                                catch(Exception e)
                                                {
                                                  out.print("error occured in query due to" + e.getMessage());  
                                                }
                                                 finally
                                                {
                                                myconnection.close();
                                                }
                                            } // outer try
                                            catch(Exception e)
                                            {
                                                out.print("error occured in connection due to" + e.getMessage());
                                            }
                                           
                                         

                                    }
                      
                                            
                               %>
                                        <div id="message"> </div> 
				</form>
				
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
         
    </body>