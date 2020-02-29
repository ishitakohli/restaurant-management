<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<%@ page import="java.text.SimpleDateFormat" %>  
<%@ page import="java.util.Date" %>   
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file="css.jsp" %>
        
        <script>
             function showmsg(x)
             {
                 if(x.which)
                 {
                     var charcode=x.which;
                 }
                 else
                 {
                     var charcode=x.keyCode;
                 }
                 if((charcode>=48 && charcode<=57) || charcode==8)
                 {
                     return true;
                 }
                 else 
                 {
                     return false;
                 }
             }
             
              function showmsg1(x)
             {
                 if(x.which)
                 {
                     var charcode=x.which;
                 }
                 else
                 {
                     var charcode=x.keyCode;
                 }
                 
                 if((charcode>=65 && charcode<=91) || (charcode>=97 && charcode<=122) || charcode==32 || charcode==8)
                 {
                     return true;
                 }
                 else 
                 {
                     return false;
                 }
             }
            </script>
    </head>
    <body>
<div class="container">	
    <%@include file="userheader.jsp" %>

		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Checkout</li>
		</ol>
</div>	
	<!-- //breadcrumb -->
	<!-- login-page -->
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Checkout</h3>  
			<div class="login-agileinfo"> 
				<form name="abc" method="post"> 
                                    <input class="agile-ltext" type="text" name="name"  onkeypress="return showmsg1(event)"  placeholder="Name" required="">
                                    <input class="agile-ltext" type="email" name="email" placeholder="Email id" required=""> 
                                    <input class="agile-ltext" type="text" name="phone" placeholder="Phone No" onkeypress="return showmsg(event)" maxlength="10"  required="" class="form-control"> <br><br>
                                        <textarea name="add" placeholder="Address-Remember it should be in Jalandhar only as we donot deliver outside Jalandhar" class="form-control"></textarea>
					
					<input type="submit" value="Submit" name="submit">
                                        <%
    if(request.getParameter("submit")!=null)
    {
         SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");  
                         Date date = new Date(); 
                         String a=formatter.format(date); 
         try
         {
               Connection myconnection;
               Class.forName("com.mysql.jdbc.Driver");
               myconnection=DriverManager.getConnection(path+place,uname,pass);
               try
               {
                  
                     String query= "insert into ordertable(name,email,phno,address,uname,tcost,date) values(?,?,?,?,?,?,?)";
                     PreparedStatement mystatement =myconnection.prepareStatement(query);
                     mystatement.setString(1,request.getParameter("name"));
                     mystatement.setString(2,request.getParameter("email"));
                     mystatement.setString(3,request.getParameter("phone"));
                     mystatement.setString(4,request.getParameter("add"));
                     mystatement.setString(5,session.getAttribute("uname").toString());
                     mystatement.setString(6,session.getAttribute("tcost1").toString());
                     mystatement.setString(7,a );
                     
 
                      if(mystatement.executeUpdate()>0)
                      {
                           response.sendRedirect("thanksdiscount.jsp");
                       }
                      else
                       {
                          out.print("Error");
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
                                         
				</form>
			
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %>
        
    </body>