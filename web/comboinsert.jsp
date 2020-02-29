<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
                       <%
                                  
                                            String data[]=request.getParameterValues("data2[]");
                                           
                                            String comboname=request.getParameter("comboname");
                                            String discount=request.getParameter("discount1");
                                              
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
                                                    
                                                    String query1="select productimage from producttable where productid=?";
                                                    PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                    mystatement1.setString(1,data[0]);
                                                    ResultSet myresult=mystatement1.executeQuery();
                                                    if(myresult.next())
                                                    {
                                                     String a=myresult.getString("productimage"); 
                                                     
                                                String query="insert into combotable(comboname,productid,discount,image) values(?,?,?,?)";    
                                                PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                mystatement.setString(1,comboname);
                                                mystatement.setString(2,final1);
                                                mystatement.setString(3,discount);
                                                mystatement.setString(4,a);

                                                 if(mystatement.executeUpdate()>0)
                                                {
                                                  
                                                 out.print("success");
                                                }
                                                 else
                                                 {
                                                     out.print("error");
                                                 }
                                                    
                                                } //if
                                               } //try
                                                catch(Exception e)
                                                {
                                                  out.print("error occured in insert query due to" + e.getMessage());  
                                                }
                                               
                                            } //try
                                       catch(Exception e)
                                       {
                                           out.print("error occured in conneection due to" + e.getMessage());
                                       }
                       
                      
                      
                       %>
                                
                        