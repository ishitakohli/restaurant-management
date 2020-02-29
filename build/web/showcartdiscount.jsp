<%-- 
    Document   : productdetails.jsp
    Created on : 30 Mar, 2018, 5:32:33 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<!DOCTYPE html>
<%
    if(request.getParameter("submit1")!=null)
    {
       response.sendRedirect("menudiscount.jsp");
    }
    else if(request.getParameter("submit2")!=null)
    {
        response.sendRedirect("checkoutdiscount.jsp");
    }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Details</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
         <%@include file="userheader.jsp" %>
         <div class="container">
             <form name="form1" method="post">
         <%
           String finalcost="";
           int flag=1;
                                             try
                                              {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from cart where uname=?";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,session.getAttribute("uname").toString());
                                                   
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  if(myresult.next())
                                                  {
                                                      flag=0;
                                                     
                                                      int counter=1;
                                                      out.print("<font color='black'><h1> List Of Items Added</h1></font>" +
                                                    "<div class='container'> "  +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'><th>Sr. no </th>" +
                                                             "<th>Image </th>" +
                                                             "<th>Name</th>" + 
                                                             "<th>Price</th>" +
                                                             "<th>Quantity</th>" +
                                                             "<th>Total cost</th>" +
                                                              "<th> Discount </th>" +
                                                               "<th> New cost</th>" +
                                                              "<th>Delete</th>" +
                                                             "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                      do
                                                      {
                                                     out.print("<tr><td>" + counter + "</td>"
                                                        + "<td>" +"<a data-fancybox='gallery' href='Pics/" + myresult.getString("image") + "'>" +"<img src='Pics/" + myresult.getString("image") + "' width=100px</a></td>"
                                                        + "<td>" + myresult.getString("pname") + "</td>"
                                                        + "<td>" + myresult.getString("price") + "</td>"
                                                        + "<td>" + myresult.getString("qty") + "</td>"
                                                        + "<td>" + myresult.getString("tcost") + "</td>"
                                                        + "<td>" + myresult.getString("dis") + "</td>"
                                                        + "<td>" + myresult.getString("newtcost") + "</td>"
                                                         + "<td><a href='#' class='todelete' pid="+ myresult.getString("cartid") +"><img src=images/delete.png width='20px'></a></td>" 
                                                        +  "</td></tr>");
                                                      counter++;
                                                        
                                                      }
                                                  while(myresult.next());
                                                  out.print("</tbody></table>");
                                                  
                                                }
                                                  
                                                  else
                                                  {
                                                      out.print("<h2><font color='red'> Cart is empty:( </font></h2>");
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
                                             if(flag==0)
                                             {
                                                 out.print("<h2><div id='msg1'>Final Cost: Rs" + finalcost + "</div></h2>");
                                             }
                                    
          %>   
          <table>
              <tr>
                  <td><input type="submit" name="submit1" value="Continue Shopping"></td>
                    <td><input type="submit" name="submit2" value="Checkout"></td>
              </tr>
          </table>
             </form>
         </div>                              
         <%@include file="footer.jsp" %>
          <script>
              function calculatetotal()
                {
                $.ajax({
                url:"ajax.jsp",
                data:{"total1":"true"},
                type:"post",
                beforeSend:function()
                {
                $("#msg1").html("Loading..")
                },
                success:function(result)
                {
                $("#msg1").html(result)
                
                },
                error:function()
                {
                $("#msg1").html("error in ajax")
                }

                }) 


                }

     
        $(document).ready(function(){
               calculatetotal();

            $(".todelete").click(function(e){
               e.preventDefault();
               if(confirm("Do you really want to delete?"))
               {
               id=$(this).attr("pid")
               var pr1=$(this).parent();
               var pr=$(this).parent().parent();
                $.ajax({
                        url:'ajax.jsp',
                        type:'post',
                        data:{"cartid1":id},
                        beforeSend:function()
                        {
                            
                            pr1.append("<img src='images/preloader.gif' width='64px'>");
                        },
                         success:function(result)
                        {
                            
                            if($.trim(result)=="success")
                            {
                              pr.css({'backgroundColor':'#fb6c6c'});
                              pr.fadeOut(600,function(){
                                  pr.remove()
                               calculatetotal();

                              })
                            }
                        },
                        error:function(e)
                        {
                            pr1.append("error due to " +e);
                        }
                    })
                 }
            })
        })
        </script>
        
            <link rel="stylesheet" href="css/jquery.fancybox.min.css">
            <script src="js/jquery.fancybox.min.js"> </script>
    </body>
</html>
