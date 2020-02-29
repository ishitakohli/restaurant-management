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
    
        <%
                                int records_perpage=10, offset,pageno;
                                double totalrecords=0,totalpages=0;
                                          try
                                             {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                            try
                                              {
                                                  String query2="select count(*) from producttable";
                                                 PreparedStatement mystatement2=myconnection.prepareStatement(query2);
                                                 ResultSet myres2=mystatement2.executeQuery();
                                                 if(myres2.next()) 
                                                    {
                                                    totalrecords=myres2.getInt(1);
                                                    }
                                                    if(request.getParameter("pageno")!=null)
                                                    {
                                                    pageno=Integer.parseInt(request.getParameter("pageno"));
                                                    }
                                                    else
                                                    {
                                                    pageno=1;
                                                    }
                                                    offset=records_perpage * (pageno-1);
                                                    
                                                 String query= "select categoryname,subcatname,productname,price,productimage,productid"
                                                          + " from producttable,categorytable,subcategorytable where producttable.catid=categorytable.catid and "
                                                          + "producttable.subcatid=subcategorytable.subcatid order by productname" 
                                                         + " limit "
                                                         + offset + " ," +records_perpage;
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  ResultSet myresult=mystatement.executeQuery();
                                               
                                                  if(myresult.next())
                                               {
                                                      int counter=1;
                                                     out.print(
                                                    "<div class='container'> "  +
                                                            "<font color='black'><h1> List Of Items </h1></font>" +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'><th>Sr. no </th>" +
                                                             "<th>Product image </th>" +
                                                            "<th>Category </th>" +
                                                            "<th>Subcategory </th>" +
                                                             "<th>Product name</th>" + 
                                                             "<th>Price</th>" +
                                                             "<th>Update</th>" +
                                                             "<th>Delete</th>" +
                                                             "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                   
                                                  do
                                                {
                                                     out.print("<tr><td>" + counter + "</td>"
                                                        + "<td>" + "<a data-fancybox='gallery' href='Pics/" + myresult.getString("productimage") + "'>" + "<img src='Pics/" + myresult.getString("productimage") + "' width=100px</a></td>"
                                                        + "<td>" + myresult.getString("categoryname") + "</td>"
                                                        + "<td>" + myresult.getString("subcatname") + "</td>"
                                                        + "<td>" + myresult.getString("productname") + "</td>"
                                                        + "<td>" + myresult.getString("price") + "</td>"
                                                        + "<td><a href='updateproduct.jsp?pid="+ myresult.getString("productid") +"'>Update</a></td>" 
                                                        + "<td><a href='#' class='todelete' pid="+ myresult.getString("productid") +"'><img src=images/delete.png width='20px'></a></td>" 
                                                        +  "</td></tr>");
                                                        counter++;
                                                }
                                                  while(myresult.next());
                                                  
                                                  totalpages=Math.ceil(totalrecords/records_perpage);
                                                    if(totalpages>1)
                                                    { 
                                                out.print( 
                                                        "<table width='5%' align='center' cellpadding='20px' cellspacing='2px' border='10px' border-spacing='40px' border-color='pink'><tr><td> Page </td>");
                                                    for(int i=1;i<=totalpages;i++)
                                                    {
                                                    if(i==pageno)
                                                    {
                                                           out.print("<td>"
                                                            
                                                            +"<font color='red'>" + i + "</font></td>");
                                                    }
                                                    else
                                                    {
                                                    out.print("<td>"
                                                            + "<a href=listofproducts.jsp?pageno="+ i +" >"
                                                            +  i  +   "</a></td>");
                                                    }
                                                    }
                                                    }
                                                    out.print("</tr></table>");
                                                  
                                                  out.print("</tbody></table></div>");
                                                  }
                                                  else
                                                  {
                                                      out.print("No products added yet");
                                                  }
                                                 }
                                            
                                                catch(Exception e)
                                                {
                                                  out.print("error occured in query due to " + e.getMessage());  
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
       
        <%@include file="footer.jsp" %>

        <script>
        $(document).ready(function(){
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
                        data:{"pid1":id},
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
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <script src="js/jquery.fancybox.min.js"> </script>

        
    </body>
</html>
