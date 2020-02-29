<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="css.jsp" %>
    </head>
    <body>

    <%@include file="userheader.jsp" %>
    <div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Reset password</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- login-page -->
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Reset Password</h3>  
			<div class="login-agileinfo"> 
				<form name="abc" method="post" id="loginform"> 
					<input class="agile-ltext" type="text" name="vercode" placeholder="Please find the code in the link" required="">
                                        <input class="agile-ltext" type="password" name="password" placeholder="Enter new Password" required="" class="form-control">
                                        <input class="agile-ltext" type="password" name="password1" placeholder="Confirm Password" required="" class="form-control">
				        <input type="submit" value="Continue to login again" name="submit">
                                     <%
                                            if(request.getParameter("submit")!=null)
                                            {
                                                if(request.getParameter("password").equals(request.getParameter("password1")))
                                                {
                                               try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from usertable where vercode=? and username=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("vercode"));
                                                  mystatement.setString(2,request.getParameter("Email"));
                                                   
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  if(myresult.next())
                                                  {
                                                    
                                                    try
                                                    {
                                                        String query1="update usertable set password=SHA(?) where username=?";
                                                        PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                        mystatement1.setString(1,request.getParameter("password") + SALT);
                                                        mystatement1.setString(2,request.getParameter("Email"));
                                                        if(mystatement1.executeUpdate()>0)
                                                        {
                                                           response.sendRedirect("login.jsp");
                                                        }
                                                        else
                                                        {
                                                          out.print("Does not work");  
                                                        }

                                                        
                                                    }// inner try
                                                    catch(Exception e)
                                                    {
                                                        out.print("error occurred in update query due to" + e.getMessage());   
                                                    }
                                                  } //if
                                                 } //inner try
                                                  catch(Exception e)
                                                     {
                                                        out.print("error occurred in select query due to" + e.getMessage());   
                                                     }
                                            } //outer try
                                                catch(Exception e)
                                                    {
                                                    
                                                   out.print("error occurred in connection due to" + e.getMessage());   
                                                   } 
                                                }
                                                else
                                                {
                                                    out.print("Passwords does not match");
                                                }
                                            }
                                        
                                       %>
                                        
				</form>
				
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
           </body>
</html>