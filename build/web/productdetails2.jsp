<%-- 
    Document   : productdetails.jsp
    Created on : 30 Mar, 2018, 5:32:33 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Details</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
         <%@include file="userheader.jsp" %>
         <%
                              String pid1="",pname1="",price1="",pimage1="",features="";
                             
                                    try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from producttable where productid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("pid2"));
                                                  ResultSet myresult=mystatement.executeQuery();
                                                   if(myresult.next())
                                                   {
                                                      pid1=myresult.getString("productid");
                                                      pname1=myresult.getString("productname");
                                                      price1=myresult.getString("price");
                                                      pimage1=myresult.getString("productimage");
                                                      features=myresult.getString("features");
                                                    
                                                    }
                                                   else
                                                   {
                                                       out.print("<h3>Product Details could not be fetched</h3>");
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
                               <div class="container">
                                    <div class="row">
                                <div class="col-md-6">
                                 <%  out.print("<img src='Pics/" + pimage1 + "' width=300px height=300px>"); %>  
                                </div>
                                <div class="col-md-6">
                                    <h2> <%=pname1%> </h2> <br>
                                    <b> Price: </b> <%=price1%>  <br>
                                    <b> Features: </b> <%=features%> <br>
                                    <b> Quantity: </b>
                                     <form name="abc" method="post">
                                    <select name="qty">
                                       
                                        <%
                                            for(int x=1;x<=10;x++)
                                            {
                                                out.print("<option>" + x + "</option>");
                                            }
                                            %>
                                    </select> <br>
                                    <a href="showcartdiscount20.jsp"><img src=images/cart.jpg width='40px'> <input type="submit" name="submit" value="Add To Cart"></a>
                                    <%
                                        if(request.getParameter("submit")!=null)
                                         {
                                             if(session.getAttribute("uname")!=null)
                                            {
                                                   int price,qty,tcost,dis=20,newdis=0,newtcost=0;
                                                   price=Integer.parseInt(price1);
                                                  qty=Integer.parseInt(request.getParameter("qty"));
                                                  tcost=price*qty;
                                                  newdis=(dis*tcost)/100;
                                                  newtcost=tcost-newdis;
                                                  
                                                  
                                              try
                                               {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                    String q1="select * from cart where pid=? and uname=?";
                                                    PreparedStatement mystatement1 =myconnection.prepareStatement(q1);
                                                    mystatement1.setString(1,pid1);
                                                    mystatement1.setString(2,session.getAttribute("uname").toString());
                                                    ResultSet myres=mystatement1.executeQuery();
                                                    if(myres.next())
                                                    {
                                                        
                                                          String query="update cart set qty=qty+?,tcost=tcost+?,dis=?,newtcost=newtcost+? where pid=? and uname=?";
                                                          PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                            mystatement.setInt(1,qty);
                                                            mystatement.setInt(2,tcost);
                                                             mystatement.setInt(3,dis);
                                                              mystatement.setInt(4,newtcost);
                                                            mystatement.setString(5,pid1);
                                                            mystatement.setString(6,session.getAttribute("uname").toString());
                                                            if(mystatement.executeUpdate()>0)
                                                            {
                                                                response.sendRedirect("showcartdiscount20.jsp");
                                                            }
                                                            else
                                                            {
                                                                out.print("Cannot Update");
                                                            }
                                                    }
                                                
                                                 else
                                                  {
                                                      
                                                    String query= "insert into cart(pid,pname,image,price,qty,tcost,dis,newtcost,uname) values(?,?,?,?,?,?,?,?,?)";
                                                    PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                    mystatement.setString(1,pid1);
                                                    mystatement.setString(2,pname1);
                                                    mystatement.setString(3,pimage1);
                                                    mystatement.setInt(4,price);
                                                    mystatement.setInt(5,qty);
                                                    mystatement.setInt(6,tcost);
                                                    mystatement.setInt(7,dis);
                                                    mystatement.setInt(8,newtcost);
                                                    mystatement.setString(9,session.getAttribute("uname").toString());
                                                    
                                                   
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      response.sendRedirect("showcartdiscount20.jsp");
                                                  }
                                                  else
                                                  {
                                                      out.print("Error");
                                                  }
                                                  
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
                                           
                                            }
                                            else
                                            {
                                                response.sendRedirect("login.jsp");
                                            }
                                                
                                        }
                                        %>
                                     </form>
                                    
                                </div>
                                </div>
                                </div>
         
         <%@include file="footer.jsp" %>
    </body>
</html>
