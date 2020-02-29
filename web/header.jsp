<!--user header with banner-->
<!-- banner -->
	<div class="banner">
		<!-- header -->
		<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
				<div class="container">
					<div class="w3ls-header-left">
						<p>Free home delivery at your doorstep For Above Rs. 500</p>
					</div>
					<div class="w3ls-header-right">
						<ul> 
							<li class="head-dpdn">
								<i class="fa fa-phone" aria-hidden="true"></i> Call us: +91 8146020376 
							</li>
                                                        <%
                                                        if(session.getAttribute("uname")==null && session.getAttribute("aname")==null && session.getAttribute("gname")==null)
                                                           {
                                                            out.print("<li class='head-dpdn'>" + 
								"<a href='login.jsp'><i class='fa fa-sign-in' aria-hidden='true'></i> Login</a>" +
					                        "<a href='signup.jsp'><i class='fa fa-user-plus' aria-hidden='true'></i>Signup</a>" +
                                                                "</li> ");
                                                          }
                                                       
                                                        else
                                                            {
                                                               out.print("<li><a href='signout.jsp'> Sign out </a></li>");  
                                                               out.print("<li><a href='changepassword.jsp'> Change password </a></li>"); 
                                                               out.print("<li><a href='myorders.jsp'> My Orders </a></li>");
                                                            }
						        
                                                                                                      
                                                        %>
							<li class="head-dpdn">
								<a href="offers.jsp"><i class="fa fa-gift" aria-hidden="true"></i> Offers</a>
							</li> 
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
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="index.jsp" class="active">Home</a></li>	
								<!-- Mega Menu -->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="row">
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>Food type</h6>  
													<li><a href="menu.jsp">Choose Categories</a></li> 
													<li><a href="menusubcat.jsp">Choose Subcategories</a></li> 
													<li><a href="products.jsp">Choose Food Items</a></li> 
                                                                                                        <li><a href="productdetails.jsp">View Item Details</a></li> 
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>Cuisine</h6> 
													<li><a href="menu.jsp">Indian Recipes</a></li> 
													<li><a href="menu.jsp">American Recipes</a></li> 
													<li><a href="menu.jsp">French Recipes</a></li> 
													<li><a href="menu.jsp">Italian Recipes</a></li> 
												</ul>
                                                                                        </div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>Box type</h6> 
													<li><a href="menu.jsp">Diet</a></li> 
													<li><a href="menu.jsp">Mini</a></li> 
													<li><a href="menu.jsp">Regular</a></li> 
													<li><a href="menu.jsp">Special</a></li> 
												</ul>
                                                                                       
											</div> 
											<div class="clearfix"></div>
										</div>
									</ul>
								</li>
								<li><a href="about.jsp">About</a></li> 
								
								<li><a href="contact.jsp">Contact Us</a></li>
							</ul>
						</div>
						
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
		</div>