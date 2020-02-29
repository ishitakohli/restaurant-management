<%@page import="java.util.Properties"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<!DOCTYPE html>
<%
    int orderid=0,tcost=0,pid1=0;
    String address="";
                                             try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from ordertable where uname=? order by orderid desc";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,session.getAttribute("uname").toString());
                                                   
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  if(myresult.next())
                                                  {
                                                     orderid=Integer.parseInt(myresult.getString("orderid"));
                                                     tcost=Integer.parseInt(myresult.getString("tcost"));
                                                     address=myresult.getString("address");
                                                    
                                                     try
                                                     {
                                                         String query1= "select * from cart where uname=?";
                                                         PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                         mystatement1.setString(1,session.getAttribute("uname").toString());
                                                        
                                                         ResultSet myresult1=mystatement1.executeQuery();
                                                  
                                                  if(myresult1.next())
                                                  {
                                                      pid1=Integer.parseInt(myresult1.getString("pid"));
                                                      do
                                                      {
                                                        String query2="insert into orderhistory(orderid,pid,pname,image,price,qty,tcost,newtcost) values(?,?,?,?,?,?,?,?)"; 
                                                         PreparedStatement mystatement2 =myconnection.prepareStatement(query2);
                                                          mystatement2.setString(1,String.valueOf(orderid));
                                                          mystatement2.setInt(2,pid1);
                                                          mystatement2.setString(3,myresult1.getString("pname"));
                                                          mystatement2.setString(4,myresult1.getString("image"));
                                                          mystatement2.setString(5,myresult1.getString("price"));
                                                          mystatement2.setString(6,myresult1.getString("qty"));
                                                          mystatement2.setString(7,myresult1.getString("tcost"));
                                                           mystatement2.setString(8,myresult1.getString("newtcost"));
                                                          mystatement2.executeUpdate();
                                                      } //do
                                                      while(myresult1.next());
                                                      
                                                      String query3="delete from cart where uname=?";
                                                      PreparedStatement mystatement3 =myconnection.prepareStatement(query3);
                                                      mystatement3.setString(1, session.getAttribute("uname").toString());
                                                      mystatement3.executeUpdate();
                                                     } //if
                                                    
                                                  } //try
                                                     catch(Exception e)
                                                     {
                                                        out.print("error occurred due to" + e.getMessage());   
                                                     }
                                                  } //outer if
                                                 
                                                 } //outer try
                                            
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanks</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
<div class="container">	
    <%@include file="userheader.jsp" %>
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Thanks</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- login-page -->
	<div class="login-page about">
		
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Thanks for shopping with us!</h3>  
			
                            <h3>Your order is successfully placed </h3>	
                            
                            <h4> Order details are as follows: </h4>
                            <h4> Order Id:  <% out.print(orderid); %> </h4>
                            <h4> Final Cost:<% out.print("Rs" +  tcost +"/-"); %> </h4>
                            <h4> Delivery Address: <% out.print(address); %> </h4>
                            <h4> It will reach your place in 25-30 minutes </h4>
                            <h4> Please note payment mode will be cash on delivery only. </h4>
                            <h4> Product Details: </h4>
                            <%
                                             try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                
                                                  String query= "select * from orderhistory where orderid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,String.valueOf(orderid));
                                                   
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  if(myresult.next())
                                                  {
                                                
                                                     
                                                   int counter=1;
                                                      out.print(
                                                    "<div class='container'> "  +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'><th>Sr. no </th>" +
                                                             "<th>Image </th>" +
                                                             "<th>Name</th>" + 
                                                             "<th>Price</th>" +
                                                             "<th>Quantity</th>" +
                                                             "<th>Original cost</th>" +
                                                               "<th>Discounted cost</th>" +
                                                      
                                                             "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                      do
                                                      {
                                                     out.print("<tr><td>" + counter + "</td>"
                                                        + "<td><img src='Pics/" + myresult.getString("image") + "' width=100px</td>"
                                                        + "<td>" + myresult.getString("pname") + "</td>"
                                                        + "<td>" + myresult.getString("price") + "</td>"
                                                        + "<td>" + myresult.getString("qty") + "</td>"
                                                        + "<td>" + myresult.getString("tcost") + "</td>"
                                                         + "<td>" + myresult.getString("newtcost") + "</td>"
                                                        +  "</td></tr>");
                                                      counter++;
                                                        
                                                      } //do
                                                  while(myresult.next());
                                                  out.print("</tbody></table>");
                                                  
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
                            
			 
		</div>
	</div>
        <%@include file="footer.jsp" %>
        
    </body>