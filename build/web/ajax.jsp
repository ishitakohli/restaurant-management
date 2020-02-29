<%-- 
    Document   : ajax
    Created on : 20 Mar, 2018, 11:32:25 AM
    Author     : Home
--%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>

        <%
            Thread.sleep(500);
            if(request.getParameter("emailid")!=null)
            {
                                            try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from usertable where username=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("emailid"));
                                                   
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  if(myresult.next())
                                                  {
                                                     out.print("<font color='red'> Username exists </font>");
                                                  }
                                                  else
                                                  {
                                                      out.print("<font color='green'> Username available,proceed! </font>");
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
                               else if(request.getParameter("catid")!=null)
                                         {
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from subcategorytable where catid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("catid"));
                                                   
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  out.print("<select name='selectnamebox' id='subcatbox' required class='form-control'>");
                                                  if(myresult.next())
                                                  {
                                                      out.print("<option value=''>Choose sub category now </option>" );
                                                      do
                                                      {
                                                        out.print("<option value=" + myresult.getString("subcatid") + ">" + myresult.getString("subcatname") + "</option>");  
                                                      }
                                                      while(myresult.next());
                                                     
                                                  }
                                                  else
                                                  {
                                                      out.print("<option> No subcategory </option>");
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
              else if(request.getParameter("pid2")!=null)
                                         {
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "delete from categorytable where catid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("pid2"));
                                                   
                                                  
                                                  
                                                 if(mystatement.executeUpdate()>0)
                                                    {
                                                    out.print("success");
                                                    } 
                                                  else
                                                  {
                                                      out.print("category cannot be deleted");
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
              else if(request.getParameter("pid3")!=null)
                                         {
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "delete from subcategorytable where subcatid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("pid3"));
                                                   
                                                  
                                                  
                                                 if(mystatement.executeUpdate()>0)
                                                    {
                                                    out.print("success");
                                                    } 
                                                  else
                                                  {
                                                      out.print("sub category cannot be deleted");
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
               else if(request.getParameter("pid1")!=null)
                                         {
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "delete from producttable where productid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("pid1"));
                                                   
                                                  
                                                  
                                                 if(mystatement.executeUpdate()>0)
                                                    {
                                                    out.print("success");
                                                    } 
                                                  else
                                                  {
                                                      out.print("product cannot be deleted");
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
             
             
                  else if(request.getParameter("username")!=null && request.getParameter("password")!=null)
                                          {
                                                
                                            try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from usertable where username=? " + " and password=SHA(?)";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("username"));
                                                   mystatement.setString(2,request.getParameter("password") + SALT);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  String query1= "select * from atable where username=? " + " and password=SHA(?)";
                                                  PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                  mystatement1.setString(1,request.getParameter("username"));
                                                  mystatement1.setString(2,request.getParameter("password") + SALT);
                                                  ResultSet myresult1=mystatement1.executeQuery();
                                                  
                                                  
                                                  if(myresult.next())
                                                  {
                                                                                                              
                                                      session.setAttribute("gname",myresult.getString("name")); 
                                                      session.setAttribute("uname",myresult.getString("username")); 
                                                      
                                                      
                                                      out.print("user");
                                                  }
                                                  else if(myresult1.next())
                                                  {
                                                       
                                                      session.setAttribute("aname",myresult1.getString("username")); // session set for admin
                                                      out.print("admin");
                                                  }
                                                   else
                                                  {
                                                      out.print("Wrong username/password");
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

                        else if(request.getParameter("cartid1")!=null)
                                         {
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "delete from cart where cartid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("cartid1"));
                                                   
                                                  
                                                  
                                                 if(mystatement.executeUpdate()>0)
                                                    {
                                                    out.print("success");
                                                    } 
                                                  else
                                                  {
                                                      out.print("Product cannot be deleted");
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
             
                                 else if(request.getParameter("dietid")!=null)
                                         {
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "delete from diettable where dietidid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("dietid"));
                                                   
                                                  
                                                  
                                                 if(mystatement.executeUpdate()>0)
                                                    {
                                                    out.print("success");
                                                    } 
                                                  else
                                                  {
                                                      out.print("Product cannot be deleted");
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
             
                        else if(request.getParameter("total")!=null)
                                         {
                                             
                                         String finalcost="";
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                     String q1="select sum(newtcost) as fcost from cart where uname=?";
                                                      PreparedStatement mystatement1 =myconnection.prepareStatement(q1);
                                                      mystatement1.setString(1,session.getAttribute("uname").toString());
                                                      ResultSet myresult1=mystatement1.executeQuery();
                                                      if(myresult1.next())
                                                      {
                                                          finalcost=myresult1.getString("fcost");
                                                          session.setAttribute("tcost",finalcost);
                                                          out.print("Final cost: Rs" + finalcost + "/-");
                                                      } 
                                                      else
                                                      {
                                                          out.print("cannot find sum");
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
        else if(request.getParameter("total1")!=null)
                                         {
                                             
                                         String finalcost1="";
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                     String q1="select sum(newtcost) as fcost from cart where uname=?";
                                                      PreparedStatement mystatement1 =myconnection.prepareStatement(q1);
                                                      mystatement1.setString(1,session.getAttribute("uname").toString());
                                                      ResultSet myresult1=mystatement1.executeQuery();
                                                      if(myresult1.next())
                                                      {
                                                          finalcost1=myresult1.getString("fcost");
                                                          session.setAttribute("tcost1",finalcost1);
                                                          out.print("Final cost: Rs" + finalcost1 + "/-");
                                                      } 
                                                      else
                                                      {
                                                          out.print("cannot find sum");
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
                                          

               else if(request.getParameter("total3")!=null)
                                         {
                                             
                                         String finalcost2="";
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                     String q1="select sum(price) as fcost from diettable";
                                                      PreparedStatement mystatement1 =myconnection.prepareStatement(q1);
                                                     
                                                      ResultSet myresult1=mystatement1.executeQuery();
                                                      if(myresult1.next())
                                                      {
                                                          finalcost2=myresult1.getString("fcost");
                                                          session.setAttribute("tcost2",finalcost2);
                                                          out.print("Final cost: Rs" + finalcost2 + "/-");
                                                      } 
                                                      else
                                                      {
                                                          out.print("cannot find sum");
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
            %>