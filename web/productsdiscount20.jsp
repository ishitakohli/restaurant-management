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
        <title>Products</title>
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
			<li class="active">Dishes</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- products -->
	<div class="products">	 
		<div class="container">
			<div class="col-md-9 product-w3ls-left"> 
				<div class="product-top" class="form-control">
					<h4>Food Collection</h4>
					
					<div class="clearfix"> </div>
				</div>
				
                                    <%
                                         try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from producttable where subcatid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("subcategoryid2"));
                                                  ResultSet myresult=mystatement.executeQuery();
                                                   if(myresult.next())
                                                   {
                                                     out.print("<div class='products-row'>");
                                                     do
                                                     {
                                                      out.print("<div class='col-xs-6 col-sm-4 product-grids' align='center'>" 
                                                              
						           + "<a href='productdetails2.jsp?pid2=" + 
                                                           myresult.getString("productid") + "'>"
                                                              + "<img src='Pics/" +  myresult.getString("productimage")  + "'width='200px'height='200px'>"
                                                              + "</a>"
                                                               +"<br>"
                                                               + "<div class='agile-product-text'>"              
							       + "<h5><a href=productdetails2.jsp?pid2=" +myresult.getString("productid") +">"  
                                                              + myresult.getString("productname")
                                                              + "</a>"
                                                              + "</h5>"  
									+ "</div>" 
                                                           
                                                                        +"</div>"); 
					
					             }
                                                     while(myresult.next());
                                                      out.print("</div>"); 
                                                    }
                                                   else
                                                   {
                                                       out.print("<div class='col-xs-6 col-sm-4 product-grids'><h3>No products found</h3></div>");
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
	<!-- //products --> 
	
	<!-- //modal -->
	<!-- subscribe -->
	
			<div class="clearfix"> </div> 
		</div>
	</div>
        <%@include file="footer.jsp" %>
    </body>
</html>
