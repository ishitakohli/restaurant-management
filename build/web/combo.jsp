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
    <title>List of combos</title>
        <%@include file="css.jsp" %>
        
    </head>
    <body>
        
        <%@include file="header3.jsp" %>
        
        <form name="form1" id="form1" method="post">
            
            <br>
            <h4><center>Add Combo Name: <input type="text" id="combo" name="combo" placeholder="Combo Name"  required="" ></center></h4> <br>
            <h4><center>Add Discount: <input type="text" id="discount" name="discount" placeholder="Discount"  required="" ></center></h4> <br>
            
            
            
        <%
              
                                                
                                          try
                                             {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                              {
                                                  String query= "select * from producttable order by productname";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  int counter=1;
                                                  if(myresult.next())
                                               {
                                                     
                                                out.print( "<div class='container'> "  +
                                                            "<font color='black'><h3> List Of Items to add in combos </h3></font>" +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'>"
                                                        + "<th> Sr. No </th>"
                                                      +  "<th>Add</th>"
                                                        +"<th>Product image</th>"
                                                        + "<th>Product Name</th>"
                                                        + "<th>Price</th>"
                                                        
                                                 + "</thread>" 
                                                 + "</div>");
                                                 out.print("<tbody>");
                                                do
                                                {

                                                out.print("<tr>"
                                                        + "<td>" + counter + "</td>" 
                                                        + "<td>" + "<input type='checkbox' name='toadd' id='toadd' value=" + myresult.getString("productid") + "></td>"
                                                + "<td>" + "<img src='Pics/" + myresult.getString("productimage") + "' width=100px</a></td>"
                                                + "<td>" + myresult.getString("productname") + "</td>"
                                                + "<td>" + myresult.getString("price") + "</td>"
                                               
                                               
                                                + "</tr>"); 

                                                counter ++;

                                                }
                                                while(myresult.next());
                                               
                                                out.println("</tbody></table>");
                                                } 

                                                  else
                                                  {
                                                      out.print("No items added yet");
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
          <h3><center><input type='button' name='submit' value='Add' id='add'></center></h3> 
          <div id="show"></div>
        </form>
          
          
          <script type="text/javascript">
$(document).ready(function (){

$("#add").click(function(e){
e.preventDefault();
var combo = $("#combo").val()
var dis=$("#discount").val()
var data1 = [];
$(":checked").each(function() {
    data1.push($(this).val());
});

                  $.ajax({
                        url:'comboinsert.jsp',
                        type:'post',
                        data:{"data2":data1,"comboname":combo,"discount1":dis,},
                        
                        success:function(result)
                        {
                            
                            if($.trim(result)=="success")
                            {
                             $('#show').html("Combo Successfully Added");
                             
                            };
                        },
                        error:function(e)
                        {
                            $('#show').html("Error due to " + e);
                        } 
                    });
});
});


</script>

 
             
   
       
      
     <%@include file="footer.jsp" %>
        
    </body>
</html>
