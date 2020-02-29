<%-- 
    Document   : welcome
    Created on : 10 Mar, 2018, 5:31:07 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
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
			<li class="active">Choose Category</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- menu list -->   	
	<div class="wthree-menu">  
		<img src="images/i2.jpg" class="w3order-img" alt=""/>
		<div class="container">
			<h3 class="w3ls-title">Choose Category of food items</h3>
			<p class="w3lsorder-text">Here are your Staple Food Varieties</p>
			 
                            <%
                                 try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from categorytable";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                   if(myresult.next())
                                                   {
                                                      out.print("<div class='menu-agileinfo'>"); 
                                                     do
                                                     {
                                                     out.print("<div class='col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids'>" +
                                                              "<a href=menusubcat.jsp?categoryid="+ 
                                                               myresult.getString("catid") + ">" 
                                                             + myresult.getString("categoryname")   
                                                             + "</a>" +
                                                              "</div>") ;
					             
				                      }
                                                     while(myresult.next());
                                                     out.print("</div>");
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
                                %>
				<div class="clearfix"> </div> 
			
			
		</div> 
	</div>
	<!-- //menu list -->    
	<!-- add-products -->
	
	<!-- //add-products --> 
	<!-- subscribe -->
	
        <%@include file="footer.jsp" %>
    </body>
</html>
