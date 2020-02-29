 
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
        <title>Add Sub Category</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
	
            <%@include file="header3.jsp" %>
            <div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active"> Add Food Sub Category</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- sign up-page -->
         
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Add New Food Sub Category</h3>  
			<div class="login-agileinfo"> 
				<form method="post" enctype="multipart/form-data"> 
                                  
                                    
                                    <select name="catname" class="form-control"> 
                                        <option> Choose category </option>
                                        
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
                                out.print("<option value='" + myres.getString("catid") + "'>" + myres.getString("categoryname") + "</option>");
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
                                 </select>
                                 <input type="text" class="text" name="subcatname" placeholder="sub category name" required=""> <br>
                                 <input class="text" type="file" name="subcatimage"> <br>
					 
                                 <input type="submit" value="Add Sub Category" name="submit"> <br>
                               
                                        <%
                                                            
                               String  catid="", scname="", imagename="", path1="";
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

                                    if(itemName1.equals("catname")) //control's name - textbox name
                                    {
                                    catid=value;
                                    }
                                    else if(itemName1.equals("subcatname")) //control's name - textbox name
                                    {
                                    scname=value;
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
                                                    String q1="select subcatname from subcategorytable where subcatname=?";
                                                    PreparedStatement mystatement1 =myconnection.prepareStatement(q1);
                                                     mystatement1.setString(1,scname);
                                                     ResultSet myresult=mystatement1.executeQuery();
                                                     if(myresult.next())
                                                     {
                                                      
                                                        out.print(" Sub Category already exists"); 
                                                     }
                                                     
                                                      else
                                                         {
                                                  String query= "insert into subcategorytable(catid,subcatname,subcatimage) values(?,?,?)";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,catid);
                                                  mystatement.setString(2,scname);
                                                  mystatement.setString(3,imagename);
                                                  
                                                  
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      out.print("subcategory added successfully");
                                                  }
                                                  else
                                                  {
                                                      out.print("Not added successful");
                                                  }
                                                 } //else
                                                  } //try
                                            
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
                                
                        </form>	
				
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
	<!-- //sign up-page --> 
    </body>
</html>