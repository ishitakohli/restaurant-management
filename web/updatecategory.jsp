 
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add product</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
         <%@include file="header3.jsp" %>
	<div class="container">	
           
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active"> Update Category</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- sign up-page -->
         
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Update Category</h3>  
                        <%
                                          String id=request.getParameter("pid");
                                          session.setAttribute("pid1",id);
                                          String cname1="",img1="";
                                           try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from categorytable where catid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,id);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                 if(myresult.next())
                                                  {
                                                     cname1=myresult.getString("categoryname");
                                                      img1=myresult.getString("image");
                                                      session.setAttribute("image1",img1);
                                                     
                                                  }
                                                 else
                                                 {
                                                     out.print("No Records exist");
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
                                             
                               String cname="",imagename="",path1="";
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

                           if(itemName1.equals("categoryname"))
                              {
                                      cname=value;
                              }     
                              
                                                                        
                                        
                          }
                          else
                          {
                                  String type=myitem.getContentType();
                                  long size=myitem.getSize()/1024; //kbytes

                                  if(size==0)
                                  {
                                      imagename=session.getAttribute("image1").toString();
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
                                                  String query= "update categorytable set categoryname=?,image=? where catid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  
                                                  mystatement.setString(1,cname);
                                                  
                                                  mystatement.setString(2,imagename);
                                                 
                                                  mystatement.setString(3,session.getAttribute("pid1").toString());
                                                  
                                                  
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      response.sendRedirect("listofcategories.jsp");
                                                  }
                                                  else
                                                  {
                                                      out.print("Not updated successful");
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
			<div class="login-agileinfo"> 
			<form method="post" enctype="multipart/form-data"> 
                        
                               
                              <input type="text" class="text" name="categoryname" value="<%=cname1%>" placeholder="category name" required=""> <br>
                                 
                                 <% out.print("<img src='Pics/" +img1 + "'width='50px'>");%><input class="text" type="file" name="image" > <br>
			
                                 <input type="submit" value="Update" name="submit"> <br>
                                
                        </form>	
                           </div>
			</div>	
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
        
	<!-- //sign up-page --> 
    </body>
</html>