 
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
        <title>Update Sub category</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
        <%@include file="header3.jsp" %>

	<div class="container">	
            		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active"> Update Sub category</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- sign up-page -->
         
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Update Sub category</h3>  
                        <%
                                          String id=request.getParameter("pid");
                                          session.setAttribute("pid1",id);
                                          String catid1="",sname1="",img1="";
                                           try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from subcategorytable where subcatid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,id);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                 if(myresult.next())
                                                  {
                                                     catid1=myresult.getString("catid");
                                                     
                                                     sname1=myresult.getString("subcatname");
                                                     
                                                     img1=myresult.getString("subcatimage");
                                                     
                                                     session.setAttribute("image",img1);
                                                     
                                                  }
                                                 else
                                                 {
                                                     out.print("no records exist");
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
                                             
                               String catid="", sname="", imagename="",path1="";
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
                                   
                                    else if(itemName1.equals("subcatname"))
                                    {
                                      sname=value;
                                    }
                                    
                                                                       
                                        
                          }
                          else
                          {
                                  String type=myitem.getContentType();
                                  long size=myitem.getSize()/1024; //kbytes

                                  if(size==0)
                                  {
                                      imagename=session.getAttribute("image").toString();
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
                                                  String query= "update subcategorytable set catid=?,subcatname=?,subcatimage=? where subcatid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,catid);
                                                  
                                                  mystatement.setString(2,sname);
                                                  
                                                  mystatement.setString(3,imagename);
                                                  
                                                  mystatement.setString(4,session.getAttribute("pid1").toString());
                                                  
                                                  
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      response.sendRedirect("listofsubcategory.jsp");
                                                  }
                                                  else
                                                  {
                                                      out.print("Not updated successfuly");
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
                                  
                                    
                                    <select name="catname" id="catbox" required class="form-control"> 
                                        <option value=""> Choose category </option>
                                        
                                        <%
                                               
                                               
                                Class.forName("com.mysql.jdbc.Driver");
                                try
                                {
                                Connection myconn = DriverManager.getConnection(path+place,uname,pass);
                                try
                                {
                                String q = "select catid,categoryname from categorytable";
                                PreparedStatement myst = myconn.prepareStatement(q);
                                ResultSet myres = myst.executeQuery();
                                if(myres.next())
                                {
                                do
                                {
                                    if(myres.getString("catid").equals(catid1))
                                    {
                                        out.print("<option selected value=" + myres.getString("catid") + ">" + myres.getString("categoryname") + "</option>"); 
                                    }
                                    else
                                    {
                                out.print("<option value=" + myres.getString("catid") + ">" + myres.getString("categoryname") + "</option>");
                                    }
                                }
                                while(myres.next()); 
                                }
                                else
                                {
                                out.print("<option>No Categories</option>");
                                }

                                }
                                catch(Exception e)
                                {
                                out.print("Error in query" + e.getMessage());
                                }
                                finally
                                {
                                myconn.close();
                                }
                                } 
                                catch(Exception e)
                                {
                                out.print("Error in connection" + e.getMessage());
                                } 

                                 %>
                                    </select> <div id="answerbox"> </div> <br>
                                    <div class="">
                                        <div id="selectboxarea">
                                           
                                  </div>
                                  </div>
                                    
                               
                                        
                       <input type="text" class="text" name="subcatname" value="<%=sname1%>" placeholder="sub category name" required=""> <br>
                                
                                 <% out.print("<img src='Pics/" +img1 + "'width='50px'>");%><input class="text" type="file" name="subcatimage" > <br>
			 
                                 <input type="submit" value="Update" name="submit"> <br>
                                
                        </form>	
				
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
        
	<!-- //sign up-page --> 
    </body>
</html>