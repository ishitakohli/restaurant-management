<%-- 
    Document   : productdetails.jsp
    Created on : 30 Mar, 2018, 5:32:33 PM
    Author     : Home
--%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
 
         <%
             if(session.getAttribute("uname")!=null)
             {
                           String cids="",cname1="",pid1="",cimage1="",dis1="",sum1="";  
                               String data[]= request.getParameterValues("data2[]");
                              String a= session.getAttribute("sum").toString();
                              String b=session.getAttribute("newtcost").toString();
                              String c=session.getAttribute("qty").toString();

                              int d=Integer.parseInt(a)*Integer.parseInt(c);
                                
                                    try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                
                                                try
                                                {
                                                    String pids="";
                                                  String final1="";
                                                    for(int x=0;x<data.length;x++)
                                                    {
                                                            pids+=data[x] + ",";
                                                    
                                                     
                                                    final1= pids.substring(0,pids.length()-1);
                                                    } 

                                                
                                                  String query= "select * from combotable where comboid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,final1);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                   if(myresult.next())
                                                   {
                                                      
                                                      cname1=myresult.getString("comboname");
                                                      pid1=myresult.getString("productid");
                                                      dis1=myresult.getString("discount");
                                                      cimage1=myresult.getString("image");
                                                  
                                                
                                                    String q1="select * from cart where pid=? and uname=?";
                                                    PreparedStatement mystatement1 =myconnection.prepareStatement(q1);
                                                    mystatement1.setString(1,final1);
                                                    mystatement1.setString(2,session.getAttribute("uname").toString());
                                                    ResultSet myres=mystatement1.executeQuery();
                                                    if(myres.next())
                                                    {
                                                        
                                              String q2= "update cart set qty=qty+?,tcost=tcost+?,dis=?,newtcost=newtcost+? where pid=? and uname=?";
                                                    PreparedStatement mystatement3 =myconnection.prepareStatement(q2);
                                                            mystatement3.setString(1,c);
                                                            mystatement3.setInt(2,d);
                                                             mystatement3.setString(3,dis1);
                                                            mystatement3.setString(4,b);
                                                            mystatement3.setString(5,final1);
                                                            mystatement3.setString(6,session.getAttribute("uname").toString());
                                                            if(mystatement3.executeUpdate()>0)
                                                            {
                                                                out.print("success");
                                                            }
                                                            else
                                                            {
                                                                out.print("error");
                                                            }
                                                    }
                                                
                                                 else
                                                   {
                                                      
                                               String query1= "insert into cart(pid,pname,image,price,qty,tcost,dis,newtcost,uname) values(?,?,?,?,?,?,?,?,?)";
                                                    PreparedStatement mystatement2 =myconnection.prepareStatement(query1);
                                                    mystatement2.setString(1,final1);
                                                    mystatement2.setString(2,cname1);
                                                    mystatement2.setString(3,cimage1);
                                                    mystatement2.setString(4,a);
                                                    mystatement2.setString(5,c);
                                                   
                                                    mystatement2.setInt(6,d );
                                                     mystatement2.setString(7,dis1);
                                                     
                                                    mystatement2.setString(8,b);

                                                    mystatement2.setString(9,session.getAttribute("uname").toString());
                                                    
                                                   
                                                  if(mystatement2.executeUpdate()>0)
                                                  {
                                                      response.sendRedirect("success");
                                                  }
                                                  else
                                                  {
                                                      out.print("Error");
                                                  }
                                                  
                                                  }
                                                }
                                                }// inner try
                                                
                                                catch(Exception e)
                                                {
                                                  out.print("error occured in query due to" + e.getMessage());  
                                                }
                                                 finally
                                                {
                                                myconnection.close();
                                                }
                                               }  // outer try
                                            catch(Exception e)
                                            {
                                                out.print("error occured in connection due to" + e.getMessage());
                                            }
                                           
                                            } //if      
                                            else
                                            {
                                                response.sendRedirect("login.jsp");
                                            }
                                                
                                                                                 
          %>
                              
           
                                              
                                       
                                   