<!--main header-->
<!-- banner -->
<%@ page import="java.text.SimpleDateFormat" %>  
<%@ page import="java.util.Date" %>   
	
		<!-- header -->
		<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
				<div class="container">
                                    
                                                                                    
                                        
					<div class="w3ls-header-left">
                                            <%
                                             SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
                                             Date date = new Date(); 

						out.print("<p>Free home delivery at your doorstep For Above Rs. 500</p>"
                                                        + "<p>Today's Date: " +formatter.format(date) +"</p>");
                                               
                                              %>
                                            
    
       
					</div>
					<div class="w3ls-header-right">
						<ul> 
							<li class="head-dpdn">
								<i class="fa fa-phone" aria-hidden="true"></i> Call us: +91 8146020376 
							</li>
                                                        <%
                                                        if(session.getAttribute("gname")==null && session.getAttribute("aname")==null)
                                                           {
                                                            out.print("<li class='head-dpdn'>" + 
								"<a href='login.jsp'><i class='fa fa-sign-in' aria-hidden='true'></i>Login</a>" +
					                        "<a href='signup.jsp'><i class='fa fa-user-plus' aria-hidden='true'></i> Signup</a>" +
                                                                "</li> ");
                                                          }
                                                       
                                                        else
                                                            {
                                                               out.print("<li><a href='signout.jsp'> Sign out </a></li>");
                                                               out.print("<li><a href='changepassword.jsp'> Change password </a></li>");  
                                                            }
						        
                                                                                                      
                                                        %>
							
							<li class="head-dpdn">
								<a href="help.jsp"><i class="fa fa-question-circle" aria-hidden="true"></i> Help</a>
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
				</div>
			</div>
			<!-- //header-one -->    
			<!-- navigation -->
			<div class="navigation agiletop-nav">
				<div class="container">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header w3l_logo">
							<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>  
							<h1><a href="index.jsp">Staple<span>Best Food Collection</span></a></h1>
                                                </div> 
						
						
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
		</div>