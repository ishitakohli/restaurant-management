<%-- 
    Document   : productdetails.jsp
    Created on : 30 Mar, 2018, 5:32:33 PM
    Author     : Home
--%>

<%@page import="java.util.ArrayList"%>
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
                              String cname1="",pimage1="",cid1="",pid2="";
                              int dis=0;
                              String final2="";
                              int q=0;
                              
                                           ArrayList pnames, price;
                                                   pnames=new ArrayList();
                                                   price=new ArrayList();
                             
                                    try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from combotable where comboid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("comboid"));
                                                  
                                                  ResultSet myresult=mystatement.executeQuery();
                                                   if(myresult.next())
                                                   {
                                                     
                                                      cname1=myresult.getString("comboname");
                                                      cid1=myresult.getString("comboid");
                                                      pimage1=myresult.getString("image");
                                                      dis =myresult.getInt("discount");
                                                     pid2=myresult.getString("productid");
                                                    
                                                      
                                                    do
                                                   {
                                                   
                                                  String pids[]=pid2.split(",");
                                                   pnames.clear();
                                                   price.clear();
                                                   int sum=0,cost=0,newtcost=0;
                                                    for(String pid:pids)
                                                   {
                                                       String query1="select * from producttable where productid=?";
                                                       PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                       mystatement1.setString(1,pid);
                                                       
                                                       ResultSet myresult1=mystatement1.executeQuery();
                                                       if(myresult1.next())
                                                       {
                                                          
                                                           pnames.add(myresult1.getString("productname"));
                                                            final2=pnames.toString().replace("[", "").replace("]", ""); // contains product names
                                                            session.setAttribute("final5",final2);
                                                           price.add(myresult1.getString("price"));
                                                           sum += Integer.parseInt(myresult1.getString("price")); //total price
                                                           session.setAttribute("sum1",sum);
                                                          
                                                           
                                        
                                                       } //if
                                                      
                                                    } //for
                                                    
                                                           
                                                       
                                                    }//do
                                                    while(myresult.next());
                                                   
                                                } //if
                                                   else
                                                   {
                                                       out.print("<h3>Combo Details could not be fetched</h3>");
                                                   }
                                                } //inner try
                                                catch(Exception e)
                                                {
                                                  out.print("error occured in query due to" + e.getMessage());  
                                                }
                                                 finally
                                                {
                                                myconnection.close();
                                                }
                                            } //outer try
                                            catch(Exception e)
                                            {
                                                out.print("error occured in connection due to" + e.getMessage());
                                            }
                                
                                 
                                                      
          %>
                                         <div class="container">
                                                
                                        <div class='row'>
                                       <div class='col-md-6'>
                                  <% out.print("<img src='Pics/" + pimage1 + "' width=300px height=300px>"); %> 
                                        </div>
                                        <div class='col-md-6'>
                                    <h2> <%= cname1  + " Combo" %></h2> <br>
                                    <b> Price: </b> <%= session.getAttribute("sum1").toString() %>  <br>
                                    <b> Products: </b> <%= session.getAttribute("final5").toString() %>  <br> 
                                    <b> Discount: </b> <%= dis + "%" %> <br>
                                    <b> Quantity: </b>
                                    <form name='abc' method='post'>
                                    <select name='qty'>
                                       
                               
                                           <%
                                            for(int x=1;x<=10;x++)
                                            {
                                                out.print("<option>" + x + "</option>");
                                            }
                                            %>
                                    </select><br>
                                          
                                 <a href='showcart.jsp'><img src=images/cart.jpg width='40px'> <input type='submit'name='submit' value='Add To Cart'></a>
                                                          
                                    <%
                                        if(request.getParameter("submit")!=null)
                                         {
                                             if(session.getAttribute("uname")!=null)
                                            {
                                                   int price1,qty,tcost,newtcost=0,newdis=0;
                                                   price1=Integer.parseInt(session.getAttribute("sum1").toString());
                                                  qty=Integer.parseInt(request.getParameter("qty"));
                                                    tcost=price1*qty;
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
                                                    mystatement1.setString(1,cid1);
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
                                                            mystatement.setString(5,cid1);
                                                            mystatement.setString(6,session.getAttribute("uname").toString());
                                                            if(mystatement.executeUpdate()>0)
                                                            {
                                                                response.sendRedirect("showcart.jsp");
                                                            }
                                                            else
                                                            {
                                                                out.print("cannot update");
                                                            }
                                                    }
                                                
                                                 else
                                                  {
                                                      
                                                    String query= "insert into cart(pid,pname,image,price,qty,tcost,dis,newtcost,uname) values(?,?,?,?,?,?,?,?,?)";
                                                    PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                    mystatement.setString(1,cid1);
                                                    mystatement.setString(2,cname1);
                                                    mystatement.setString(3,pimage1);
                                                    mystatement.setInt(4,price1);
                                                    mystatement.setInt(5,qty);
                                                   
                                                    mystatement.setInt(6,tcost);
                                                     mystatement.setInt(7,dis);
                                                     
                                                    mystatement.setInt(8,newtcost);

                                                    mystatement.setString(9,session.getAttribute("uname").toString());
                                                    
                                                   
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      response.sendRedirect("showcart.jsp");
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
