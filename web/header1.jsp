<!--admin header without banner-->
		<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
				<div class="container">
					
					<div class="w3ls-header-right">
						<ul> 
							
                                                        <%
                                                        if(session.getAttribute("gname")==null && session.getAttribute("aname")==null)
                                                           {
                                                            out.print("<li class='head-dpdn'>" + 
								"<a href='login.jsp'><i class='fa fa-sign-in' aria-hidden='true'></i> Login</a>" +
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
                                                                                                            <h6> What to do? </h6> 
													<li><a href="add_category.jsp">Add Food Category</a></li> 
													<li><a href="add_subcategory.jsp">Add Food Subcategory</a></li> 
													<li><a href="add_product.jsp">Add Item</a></li> 
                                                                                                        <li><a href="listofcategories.jsp">Show categories</a></li> 
                                                                                                        <li><a href="listofsubcategory.jsp">Show subcategories</a></li> 
                                                                                                        <li><a href="listofproducts.jsp">Show Items</a></li> 
												</ul>
													
												
											</div> 
											</div>	
                                                                        </ul>
									
								</li>
								<li><a href="about.jsp">Add Information</a></li> 
                                                                <li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="icons.jsp">Web Icons</a></li>
										<li><a href="codes.jsp">Short Codes</a></li>     
									</ul>
								</li>  
								
							</ul>
						</div>
						
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
		</div>
   