<%-- 
    Document   : listofproducts
    Created on : 21 Mar, 2018, 12:11:08 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>list of Items</title>
        <%@include file="css.jsp" %>
        
    </head>
    <body>
        <%@include file="header3.jsp" %>
        <form name="abc" method="post">
             <%
                                          try
                                             {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                              {
                                                  String query= "select * from categorytable";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  ResultSet myresult=mystatement.executeQuery();
                                               
                                                  if(myresult.next())
                                               {
                                                      int counter=1;
                                                     out.print(
                                                           "<div class='container'> "  +
                                                            "<font color='black'><h1> List Of Categories</h1></font>" +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'><th>Sr. no </th>" +
                                                             "<th>Category image </th>" +
                                                             "<th>Category name</th>" + 
                                                             "<th>Update</th>" + 
                                                             "<th>Delete</th>" + 
                                                             "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                   
                                                  do
                                                {
                                                     out.print("<tr><td>" + counter + "</td>"
                                                        + "<td><img src='Pics/" + myresult.getString("image") + "' width=100px</td>"
                                                        + "<td>" + myresult.getString("categoryname") + "</td>"
                                                        + "<td><a href='updatecategory.jsp?pid= "+ myresult.getString("catid") +"'>Update</a></td>" 
                                                        + "<td><a href='#' class='todelete1' pid="+ myresult.getString("catid") +"'><img src=images/delete.png width='20px'></a></td>" 
                                                        +  "</td></tr>");
                                                        counter++;
                                                }
                                                  while(myresult.next());
                                                  out.print("</tbody></table></div>");
                                                }
                                                  else
                                                  {
                                                      out.print("No categories added yet");
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
                                           
                                            
     %>
        </form>
        <%@include file="footer.jsp" %>
        <script>
        $(document).ready(function(){
            $(".todelete1").click(function(e){
               e.preventDefault();
               if(confirm("Do you really want to delete?"))
               {
               id=$(this).attr("pid")
               var pr1=$(this).parent();
               var pr=$(this).parent().parent();
                $.ajax({
                        url:'ajax.jsp',
                        type:'post',
                        data:{"pid2":id},
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
    </body>
</html>
