 
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
			<li class="active"> Update Product</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- sign up-page -->
         
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Update Item</h3>  
                        <%
                                          String id=request.getParameter("pid");
                                          session.setAttribute("pid1",id);
                                          String catid1="",subcatid1="",pname1="",price1="",img1="",features="";
                                           try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from producttable where productid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,id);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                 if(myresult.next())
                                                  {
                                                     catid1=myresult.getString("catid");
                                                     subcatid1=myresult.getString("subcatid");
                                                     pname1=myresult.getString("productname");
                                                     price1=myresult.getString("price");
                                                     img1=myresult.getString("productimage");
                                                     features=myresult.getString("features");
                                                     session.setAttribute("image",img1);
                                                     
                                                  }
                                                 else
                                                 {
                                                     out.print("No records exist");
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
                                             
                               String catid="",subcatid="", pname="", imagename="",price="",path1="",features1="";
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
                                    else if(itemName1.equals("subcatbox")) //select box 2
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
                                                  String query= "update producttable set catid=?,subcatid=?,productname=?,price=?,"
                                                          + "productimage=?,features=? where productid=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,catid);
                                                  mystatement.setString(2,subcatid);
                                                  mystatement.setString(3,pname);
                                                  mystatement.setString(4,price);
                                                  mystatement.setString(5,imagename);
                                                  mystatement.setString(6,features1);
                                                  mystatement.setString(7,session.getAttribute("pid1").toString());
                                                  
                                                  
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      response.sendRedirect("listofproducts.jsp");
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
                                            <select name="subcatbox" id="subcatbox" required class="form-control"> <br>
                                                <option value=""> Choose SubCategory </option>
                                                
                                                <%
                                                                      
                                Class.forName("com.mysql.jdbc.Driver");
                                try
                                {
                                Connection myconn = DriverManager.getConnection(path+place,uname,pass);
                                try
                                {
                                String q = "select * from subcategorytable where catid=?";
                                PreparedStatement myst = myconn.prepareStatement(q);
                                myst.setString(1,catid1);
                                ResultSet myres = myst.executeQuery();
                                out.print("<option>Choose Sub Category</option>");
                                if(myres.next())
                                {
                                do
                                {
                                    if(myres.getString("subcatid").equals(subcatid1))
                                    {
                                        out.print("<option selected value=" + myres.getString("subcatid") + ">" + myres.getString("subcatname") + "</option>"); 
                                    }
                                    else
                                    {
                                out.print("<option value=" + myres.getString("subcatid") + ">" + myres.getString("subcatname") + "</option>");
                                    }
                                }
                                while(myres.next()); 
                                }
                                else
                                {
                                out.print("<option>No Sub Categories</option>");
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
                                  </div>
                                  </div>
                                    
                               
                                        
                       <input type="text" class="text" name="productname" value="<%=pname1%>" placeholder="product name" required=""> <br>
                                 <input type="text" class="text" name="price" value="<%=price1%>" placeholder="price" required="" class="form-control"> <br>
                                 <textarea name="features" class="form-control" required="" placeholder="Edit Description here"><%=features%> </textarea> <br>
                                 <% out.print("<img src='Pics/" +img1 + "'width='50px'>");%><input class="text" type="file" name="productimage" > <br>
					
					<div class="wthreelogin-text"> 
						
						<div class="clearfix"> </div>
					</div>   
                                 <input type="submit" value="Update" name="submit"> <br>
                                
                        </form>	
				
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
        <script>
            $(document).ready(function(){
                $("#catbox").change(function(){
                    category=(this).value
                    $.ajax({
                        url:'ajax.jsp',
                        type:'post',
                        data:{"catid":category},
                        beforeSend:function()
                        {
                            
                            $('#answerbox').html("<img src='images/preloader.gif' width='64px'>");
                        },
                         success:function(result)
                        {
                            $('#answerbox').html("");
                            $('#selectboxarea').html(result);
                        },
                        error:function(e)
                        {
                            $('#selectboxarea').html("error due to " +e);
                        }
                    })
                })
            })
            </script>
	<!-- //sign up-page --> 
    </body>
</html>