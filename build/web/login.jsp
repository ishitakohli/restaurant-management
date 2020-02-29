<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
Cookie[] mycookies=request.getCookies();
if(mycookies!=null)
{
    boolean flag=false;
    for(Cookie mycookie:mycookies)
    {
      if(mycookie.getName().equals("username"))  
      {
          session.setAttribute("uname",mycookie.getValue());
          
          flag=true;
      }
      else if(mycookie.getName().equals("name"))
      {
          session.setAttribute("gname",mycookie.getValue());
          
          flag=true;
 
      }
     
    }
      if(flag)
      {
        response.sendRedirect("welcome.jsp");
      }
      
}
 
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
     	
    <%@include file="header5.jsp" %>
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
			<h3 class="w3ls-title w3ls-title1">Login to your account</h3>  
			<div class="login-agileinfo"> 
				<form action="mylogin" method="post" id="loginform"> 
					<input class="agile-ltext" type="text" name="username" placeholder="Username" required="">
					<input class="agile-ltext" type="password" name="password" placeholder="Password" required="">
					<div class="wthreelogin-text"> 
						<ul> 
							<li>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i> 
									<span> Remember me ?</span> 
								</label> 
							</li>
							<li><a href="forgotpass.jsp">Forgot password?</a> </li>
						</ul>
						<div class="clearfix"> </div>
					</div>   
					<input type="submit" value="LOGIN" name="submit">
                                        <div id="message">
                                            <%
                                                if(request.getAttribute("message")!=null)
                                                {
                                                    out.print(request.getAttribute("message"));
                                                }
                                            %>
                                        </div> 
				</form>
				<p>Don't have an Account? <a href="signup.jsp"> Sign Up Now!</a></p> 
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
    </div>    
    </body>