 
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
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
	
            <%@include file="header5.jsp" %>
       <div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Sign Up</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- sign up-page -->
         
	<div class="login-page about">
		<img class="login-w3img" src="images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Sign Up to your account</h3>  
			<div class="login-agileinfo"> 
				<form  name="abc" method="post" id="form1"> 
					<input class="agile-ltext" type="email" id="email" name="username" placeholder="name@example.com" required=""> 
                                        <div id="answerbox"> </div> 
                                        <input class="agile-ltext" type="text" name="name" onkeypress="return showmsg1(event)" placeholder="Name" required="">
					<input class="agile-ltext" type="password" name="password" placeholder="Password" required="">
                                        <input class="agile-ltext" type="text" onkeypress="return showmsg(event)" name="pno" placeholder="Phone No" maxlength="10" required="">
                                        <input class="agile-ltext" type="text" name="dob" placeholder="Date of birth" required="" id="dob">
					<div class="wthreelogin-text"> 
						<ul> 
			                        </ul>
						<div class="clearfix"> </div>
					</div>   
					<input type="submit" value="Sign Up" name="submit">
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        <div id="msgdiv"></div>
                                        
				</form>
				<p>Already have an account?  <a href="login.jsp"> Login Now!</a></p> 
			</div>	 
		</div>
	</div>
        <%@include file="footer.jsp" %> 
        <script>
            $(document).ready(function(){
                $("#email").blur(function(){
                    emailid=(this).value
                    $.ajax({
                        url:'ajax.jsp',
                        type:'post',
                        data:{"emailid":emailid},
                        beforeSend:function()
                        {
                            $('#answerbox').html("<img src='images/preloader.gif' width='64px'>");
                        },
                         success:function(result)
                        {
                            $('#answerbox').html(result);
                        },
                        error:function(e)
                        {
                            $('#answerbox').html("error due to " +e);
                        }
                    })
                })
            })
            </script>
             <script>
            
                $("#form1").submit(function(e){
                 e.preventDefault()   
                    $.ajax({
                        url:'ajax2.jsp',
                        type:'post',
                        data:$("#form1").serialize(),
                        beforeSend:function()
                        {
                            $('#msgdiv').html("");
                        },
                       
                         success:function(result)
                        {
                            if($.trim(result)==1)
                            {
                            $('#msgdiv').html("<h5>Thanks for sign up,please check your email and click on the link to continue shopping!!</h5>");
                            }
                            else if($.trim(result)==0)
                            {
                                $("#email").val("");
                               $('#msgdiv').html("User already exists");
                            }
                            else
                            {
                                $('#msgdiv').html("Error in creating your account");
                            }
                        },
                        error:function(e)
                        {
                            $('#msgdiv').html("error due to " +e);
                        }
                    })
                })
            
            </script>
            
  
  <link rel="stylesheet" href="css/jquery-ui.css">
  <script src="js/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#dob" ).datepicker({
        dateFormat:"yy/mm/dd",
        changeMonth: true,
        changeYear: true,
        maxDate:0

    });
  } );
  </script>
 </body>
</html>