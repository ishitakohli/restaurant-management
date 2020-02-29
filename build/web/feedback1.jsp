 
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <%@include file="css.jsp" %>
        
    </head>
    <body>
      </div>	
            <%@include file="userheader.jsp" %>
            <div class="container">
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Feedback</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- sign up-page -->
         
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Please provide your feedback </h3>  
			<div class="login-agileinfo"> 
				<form name="abc" method="post"> 
					<input class="agile-ltext" type="text"  name="name" placeholder="Name" required="" class="form-control"> 
                                        <input class="agile-ltext" type="email" name="email" placeholder="Email id" required="" class="form-control" > <br>
                                        <input class="item_price2" type="number" name="phone" placeholder="Phone no" required="" class="form-control"> <br>
                                          <h4> Please take out some time to answer the following questions:</h4>
					<div class="wthreelogin-text"> 
                                            
				<ul>
                                                  
				<li>
                                   <h4>1. How did you like our service? </h4>
                                   <select name="q1" class="form-control"><br><br>
                                       <option>Choose from following</option>
                                       <option>Excellent </option>
                                       <option>Good</option>
                                       <option>Average</option>
                                       <option>Worst</option>
                                   </select>
                                   <br>
                                   
                                   <h4>2. How did you like our food? </h4>
                                   <select name="q2" class="form-control"><br>
                                       <option>Choose from following</option>
                                       <option>Excellent </option>
                                       <option>Good</option>
                                       <option>Average</option>
                                       <option>Worst</option>
                                   </select>
                                   <br>
                         <h4>3. Did food reach on time? </h4>
                         <select name="q3" class="form-control"><br>
                                       <option>Choose from following</option>
                                       <option>Yes </option>
                                       <option>No</option>
                                       
                                   </select>
                                   <br>       
                                   
                          <h4>4. Would you visit us again? </h4>
                         <select name="q4" class="form-control"><br>
                                       <option>Choose from following</option>
                                       <option>Yes </option>
                                       <option>No</option>
                                       
                                   </select>
                                   <br>                         
                          <h4>5. If you have any other suggesions please write in the description box below ? </h4>
                          <textarea name="sugession" placeholder="Write here" class="form-control"></textarea>


								
			</li> 
			</ul>
						<div class="clearfix"> </div>
					</div>   
					<input type="submit" value="Submit" name="submit">
                                        <%
                                            if(request.getParameter("submit")!=null)
                                            {
                                              try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                   
                                                  String query= "insert into feedback values(?,?,?,?,?,?,?,?)";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("name"));
                                                  mystatement.setString(2,request.getParameter("email"));
                                                  mystatement.setString(3,request.getParameter("phone"));
                                                  mystatement.setString(4,request.getParameter("q1"));
                                                  mystatement.setString(5,request.getParameter("q2"));
                                                  mystatement.setString(6,request.getParameter("q3"));
                                                  mystatement.setString(7,request.getParameter("q4"));
                                                  mystatement.setString(8,request.getParameter("sugession"));
                                                  if(mystatement.executeUpdate()>0)
                                                  {
                                                      out.print("Feedback submitted successfully");
                                                  }
                                                  else
                                                  {
                                                      out.print("Not submitted");
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
</html>