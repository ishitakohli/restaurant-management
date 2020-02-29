<!--admin header without banner-->
		<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
				<div class="container">
					
					<div class="w3ls-header-right">
						<ul> 
							
                                                        <%
                                                        if(session.getAttribute("uname")==null && session.getAttribute("aname")==null)
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
									
								<!-- Mega Menu -->
								<li class="dropdown">
									
									
												
                                                           <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Add Menu <b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										     <div class="row">
											<div class="col-sm-4">
												
												<ul class="multi-column-dropdown">
                                                                                                            <h6> Add menu </h6> 
													<li><a href="add_category.jsp">Add Food Category</a></li> 
													<li><a href="add_subcategory.jsp">Add Food Subcategory</a></li> 
													<li><a href="add_product.jsp">Add Item</a></li> 
                                                                                                       
                                                                                                        <li><a href="combo.jsp">Add Combo Menu</a></li> 
                                                                                                       
												</ul>
													
												
											</div> 
											</div>	
                                                                        </ul>
									
                                                           
                                                          
									
								</li>
                                                                                   <li class="dropdown">
                                                                                       <a href="#" class="dropdown-toggle" data-toggle="dropdown"> View Menu <b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										     <div class="row">
											<div class="col-sm-4">
                                                                                                  <ul class="multi-column-dropdown">
                                                                                                            <h6> View menu </h6> 
												       <li><a href="listofcategories.jsp">View Category</a></li>
                                                                                                       <li><a href="listofsubcategory.jsp">View Subcategories</a></li> 
                                                                                                        <li><a href="listofproducts.jsp">View Items</a></li>
                                                                                                      
                                                                                                      <li><a href="combofetch.jsp">View Combo Menu</a></li>

                                                                                                       
									                       </ul>
                                                                                        </div>
                                                                                     </div>
 
                                                                                             </li>
                                                               
								
							</ul>
                                                                                       <li><a href="vieworder.jsp" class="active">View order</a></li>
						</div>
						
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
		</div>
   