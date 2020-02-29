 
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
			<li class="active"> Add  Product</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- sign up-page -->
         
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Add new Item</h3>  
			<div class="login-agileinfo"> 
				<form method="post" id="form1" enctype="multipart/form-data"> 
                                  
                                    
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
                                    </select> <div id="answerbox"> </div> <br>
                                    <div class="">
                                        <div id="selectboxarea">
                                            <select name="subcatbox" id="subcatbox" required class="form-control"> <br>
                                                <option value=""> Choose Subcategory </option>
                                            </select> 
                                        </div>
                                    </div>
                                 <input type="text" class="text" name="productname" placeholder="product name" required=""> <br>
                                 <input type="number" class="item_price2" name="price" placeholder="price" required="" class="form-control"> <br> <br>
                                 <textarea name="features" placeholder="Enter Description here" class="form-control" required="" ></textarea> <br>
                                 <input class="text" type="file" name="productimage"> <br>
				
                                 <input type="submit" value="Add Product" name="submit"> <br>
                               
                                      
                                
                        </form>	
                       <div id="message"> </div>	
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
            <script type="text/javascript">
            $(document).ready(function(){
            $('#form1').submit(function (e) 
            {
            e.preventDefault();
            var formData = new FormData($(this)[0]);
            $.ajax(
            {
            type: 'post',
            url: 'addproductajax.jsp',
            data: formData,
            //data: $("#form1").serialize(),
            contentType: false,
            cache: false,
            processData: false,
            success: function (res) 
            {
            $('#message').show().html(res).delay(2000).fadeOut(500);
            },
            error: function(e) 
            {
            $('#message').html("Error Occured " + e);
            }
            })
            })

            })


            </script>
    </body>
</html>