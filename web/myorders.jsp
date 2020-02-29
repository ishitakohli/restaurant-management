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
        <%@include file="userheader.jsp" %>
        <%
                   
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
                                                      
                                                     out.print(
                                                    "<div class='container'> "  +
                                                            "<font color='black'><h1>My orders </h1></font>" +
                                                             "<table class='table'>" +
                                                              "<thread><tr class='info'>" +
                                                             
                                                            "<th> Name</th>" +
                                                            "<th>Email Id</th>" + 
                                                            "<th> Phone No </th>" +
                                                             "<th>Address</th>" +
                                                            "<th>Total Cost</th>" +
                                                            "<th>Placed on</th>" +
                                                            "<th>Product Details</th>" +
                                                            "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                   
                                                  do
                                                {
                                                     out.print("<tr>"
                                                        + "<td>" + myresult.getString("name") +   "</td>"
                                                        + "<td>" + myresult.getString("email") + "</td>"
                                                        + "<td>" + myresult.getString("phno") + "</td>"
                                                        + "<td>" + myresult.getString("address") + "</td>"
                                                        + "<td>" + myresult.getString("tcost") + "</td>"
                                                       + "<td>" + myresult.getString("date") +"</td>"
                                                        + "<td><a href='vieworderproduct.jsp?orderid="+myresult.getString("orderid")+ "'>" + "Click here" + "</a></td>"
                                                        +  "</td></tr>");
                                                        
                                                }
                                                  while(myresult.next());
                                                  out.print("</tbody></table></div>");
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
                                           
                                            
     %>
       
        <%@include file="footer.jsp" %>
       
    </body>
</html>
