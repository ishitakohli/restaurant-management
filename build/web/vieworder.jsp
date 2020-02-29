<%-- 
    Document   : listofproducts
    Created on : 21 Mar, 2018, 12:11:08 PM
    Author     : Home
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date" %>
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
        <form name="abc" method="post"> <br>
            <h4><center> Order Start Date: <input class="datepicker"  name="dob" placeholder="From" required="" ></center></h4> <br>
            <h4><center> Order End Date: <input class="datepicker"  name="dob1" placeholder="To" required="" ></center></h4> <br>
            <center><input type="submit" name="submit" value="submit"></center>
        <%
            if(request.getParameter("submit")!=null)
            {
                                  
                     SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); 
                    
                     try
                                             {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                              {
                                                  String query= "select * from ordertable where date between ? and ? order by orderid desc ";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                   mystatement.setString(1,formatter.format(java.sql.Date.valueOf(request.getParameter("dob"))));
                                                   mystatement.setString(2,formatter.format(java.sql.Date.valueOf(request.getParameter("dob1"))));
                                                  ResultSet myresult=mystatement.executeQuery();
                                               
                                                  if(myresult.next())
                                               {
                                                      
                                                     out.print(
                                                    "<div class='container'> "  +
                                                            "<font color='black'><h1>Orders placed by customers </h1></font>" +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'><th>Order Id </th>" +
                                                             "<th>User Name </th>" +
                                                            "<th>Email Id</th>" +
                                                            "<th>Phone No. </th>" +
                                                             "<th>Address</th>" + 
                                                             "<th>Total Cost</th>" +
                                                            "<th>Placed on</th>" +
                                                            "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                   
                                                  do
                                                {
                                                     out.print("<tr><td><a href='vieworderproduct.jsp?orderid="+myresult.getString("orderid")+ "'>" + myresult.getString("orderid") + "</a></td>"
                                                        + "<td>" + myresult.getString("name") +   "</td>"
                                                        + "<td>" + myresult.getString("email") + "</td>"
                                                        + "<td>" + myresult.getString("phno") + "</td>"
                                                        + "<td>" + myresult.getString("address") + "</td>"
                                                        + "<td>" + myresult.getString("tcost") + "</td>"
                                                        + "<td>" + myresult.getString("date") + "</td>"
                                                        
                                                        +  "</td></tr>");
                                                        
                                                }
                                                  while(myresult.next());
                                                  out.print("</tbody></table>");
                                                }
                                                  else
                                                  {
                                                      out.print("No orders between these dates");
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
                                        }

                              
            
                                   
             %>                      
                                   
                                          
        </form>
       
        <%@include file="footer.jsp" %>
   <link rel="stylesheet" href="css/jquery-ui.css">
  <script src="js/jquery-ui.js"></script>
  <script>
  $( function() {
    $( ".datepicker" ).datepicker({
        dateFormat:"yy-mm-dd",
        changeMonth: true,
        changeYear: true,
        maxDate:0
     
    });
  } );
  </script>
         
    </body>
</html>
