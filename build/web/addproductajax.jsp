<%-- 
    Document   : addproductajax
    Created on : 26 Mar, 2018, 8:28:16 PM
    Author     : Home
--%>
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
                                                            
                             String catid="",subcatid="", pname="", imagename="",price="", path1="", features1="";
                             boolean successful=true;
                             boolean isMultipart = ServletFileUpload.isMultipartContent(request);

                      if(isMultipart)
                      {

                      FileItemFactory factory = new DiskFileItemFactory();

                      ServletFileUpload upload = new ServletFileUpload(factory);
                      List<FileItem> items = null;

                     try
                     {
                          items = upload.parseRequest(request);
                     }
                     catch (FileUploadException e)
                     {
                         e.printStackTrace();
                     }



                     for(FileItem myitem:items)
                     {
                          if (myitem.isFormField())
                          {
                              String itemName1 = myitem.getFieldName();//catsummary
                              String value=myitem.getString();//

                                    if(itemName1.equals("catname")) //select box 1
                                    {
                                    catid=value;
                                    }
                                    else if(itemName1.equals("selectnamebox")) //select box 2
                                    {
                                    subcatid=value;
                                    }
                                    else if(itemName1.equals("productname"))
                                    {
                                      pname=value;
                                    }
                                     else if(itemName1.equals("price"))
                                    {
                                      price=value;
                                    }
                                    else if(itemName1.equals("features"))
                                    {
                                      features1=value;
                                    }
                                    
                                        
                          }
                          else
                          {
                                  String type=myitem.getContentType();
                                  long size=myitem.getSize()/1024; //kbytes

                                  if(size==0)
                                  {
                                      imagename="default.jpg";
                                  }
                                  else if((type.equals("image/pjpeg") || type.equals("image/jpeg")
                                          || type.equals("image/png") || type.equals("image/x-png")
                                          || type.equals("image/gif")||type.equals("image/jpg")))
                                      {
                                  imagename=new java.util.Date().getTime()+myitem.getName();
                                  path1=config.getServletContext().getRealPath("/") + "Pics\\" + imagename;

                                  File savefile=new File(path1);
                                  myitem.write(savefile);    
                                  }
                                  else
                                  {
                                      successful=false;
                                      out.println("Only pictures are allowed");
                                  }    
                          }

                    }
                      
                     if(successful==true)
                     {
                        
                                                
                                            try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "insert into producttable(catid,subcatid,productname,price,productimage,features) values(?,?,?,?,?,?)";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,catid);
                                                  mystatement.setString(2,subcatid);
                                                  mystatement.setString(3,pname);
                                                  mystatement.setString(4,price);
                                                  mystatement.setString(5,imagename);
                                                  mystatement.setString(6,features1);
                                                 
                                                  
                                                  
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      out.print("Product added successfully");
                                                  }
                                                  else
                                                  {
                                                      out.print("Not added successful");
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

                      }
                     
                       %>
