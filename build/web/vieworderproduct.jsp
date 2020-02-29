<%-- 
    Document   : listofproducts
    Created on : 21 Mar, 2018, 12:11:08 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>list of Items</title>
        <%@include file="css.jsp" %>
        
    </head>
    <body>
        <%@include file="header3.jsp" %>
        <%
                
    
                                      int tcost=0;
                                          try
                                             {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                              {
                                                  String query= "select * from orderhistory where orderid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1, request.getParameter("orderid"));
                                                  ResultSet myresult=mystatement.executeQuery();
                                               
                                                  if(myresult.next())
                                               {
                                                      
                                                     out.print(
                                                    "<div class='container'> "  +
                                                            "<font color='black'><h1>Order Details </h1></font>" +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'>" +
                                                           
                                                             "<th>Product Image </th>" +
                                                            "<th>Product Name</th>" +
                                                            "<th>Price </th>" +
                                                             "<th>Quantity</th>" + 
                                                             "<th>Total Cost</th>" +
                                                            "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                   
                                                  do
                                                {
                                                    tcost+=myresult.getInt("tcost");
                                                     out.print("<tr>"
                                                            
                                                             + "<td><img src='Pics/" +  myresult.getString("image")+ "'width='90px'>" + "</td>"
                                                        + "<td>" + myresult.getString("pname") +   "</td>"
                                                        + "<td>" + myresult.getString("price") + "</td>"
                                                        + "<td>" + myresult.getString("qty") + "</td>"
                                                        + "<td>" + myresult.getString("tcost") + "</td>"
                                                        +  "</td></tr>");
                                                        
                                                }
                                                  while(myresult.next());
                                                  out.print("</tbody></table>");
                                                }
                                                  else
                                                  {
                                                      out.print("No products added yet");
                                                  }
                                                 }
                                            
                                                catch(Exception e)
                                                {
                                                  out.print("error occured in query due to " + e.getMessage());  
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
                                          if(tcost>0)
                                          {
                                              out.print("<h2>Final cost: " + tcost + "/-</h2>");
                                          }
                                           
                                            
     %>
       
        <%@include file="footer.jsp" %>
        
    </body>
</html>
