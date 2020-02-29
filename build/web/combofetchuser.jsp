<%-- 
    Document   : listofproducts
    Created on : 21 Mar, 2018, 12:11:08 PM
    Author     : Home
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>list of combos</title>
        <%@include file="css.jsp" %>
        
    </head>
    <body>
        <%@include file="userheader.jsp" %>
                                   
        <%
                                          int counter=1;
                                          String final2="";


                                           ArrayList pnames, price;
                                                   pnames=new ArrayList();
                                                   price=new ArrayList();
                                                  
                                          try
                                             {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                              {
                                                  String query= "select * from combotable";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  if(myresult.next())
                                                   {
                                                       
                                                     int p=Integer.parseInt(myresult.getString("discount"));
                                                    
                                                   
                                                   out.print(
                                                           "<div class='container'> "  +
                                                            "<font color='black'><h1> List Of Combos</h1></font>" +
                                                             "<table class='table'>" +
                                                             "<thread><tr class='info'><th>Sr. no </th>" +
                                                              "<th>Add </th>" +
                                                               "<th>Image</th>" +    
                                                             "<th>Combo name </th>" +
                                                             "<th>Product Name</th>" +
                                                               "<th>Quantity</th>" +    
                                                             "<th>Price</th>" + 
                                                              
 
                                                             "<th>Discount</th>" + 
                                                            "<th>New Price</th>" + 
                                                              
                                                             "</thread>" + "</div>") ;
                                                     out.print("<tbody>");
                                                   
                                                  do
                                                   {
                                                   String a=myresult.getString("productid");
                                                   String pids[]=a.split(",");
                                                   pnames.clear();
                                                   price.clear();
                                                   int sum=0,cost=0,newtcost=0;
                                                   for(String pid:pids)
                                                   {
                                                       String query1="select * from producttable where productid=?";
                                                       PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                       mystatement1.setString(1,pid);
                                                       ResultSet myresult1=mystatement1.executeQuery();
                                                       if(myresult1.next())
                                                       {
                                                          
                                                           pnames.add(myresult1.getString("productname"));
                                                            final2=pnames.toString().replace("[", "").replace("]", "");
                                                           price.add(myresult1.getString("price"));
                                                           sum += Integer.parseInt(myresult1.getString("price"));
                                                           session.setAttribute("sum",sum);
                                                           cost=(p*sum)/100;
                                                           session.setAttribute("cost",cost);
                                                           newtcost=sum-cost;
                                                           session.setAttribute("newtcost",newtcost);
                                                       }
                                                      
                                                    }
                                                       

                                                     out.print("<tr><td>" + counter + "</td>"
                                                         + "<td>" + "<input type='checkbox' name='toselect' class='toselect' value=" + myresult.getString("comboid") + "></td>"
                                                       + "<td><img src='Pics/" + myresult.getString("image") + "' width=100px</td>"
                                                                 + "<td>" + myresult.getString("comboname") + "</td>"
                                                              + "<td>" + final2 +  "</td>"
                                                            + "<td>" + "<select name='qty'><option>1</option><option>2</option><option>3</option>"
                                                                      + "<option>4</option><option>5</option>"  + "</td>" 
                                                               + "<td>" + sum +  "</td>"
                                                         
                                                        + "<td>" + myresult.getString("discount") + "</td>"
                                                         + "<td>" + newtcost + "</td>"
                                                        +  "</td></tr>");
                                                        counter++;
                                                        String qty=request.getParameter("qty");
                                                        session.setAttribute("qty",qty);
                                                        String tcost="";
                                                        
                                                        
                                                  } //do
                                                  while(myresult.next());
                                                  out.print("</tbody></table>");
                                                 
                                                    } //if myresult1
                                                
                                                  else
                                                  {
                                                      out.print("No combos added yet");
                                                  }
                                                 } //inner try
                                            
                                                catch(Exception e)
                                                {
                                                  out.print("error occured in query due to" + e.getMessage());  
                                                }
                                                 finally
                                                {
                                                myconnection.close();
                                                }
                                            }  // outer try
                                            catch(Exception e)
                                            {
                                                out.print("error occured in connection due to" + e.getMessage());
                                            }
                                           
                                            
     %>
     <table>
              <tr>
              <td><input type="submit" name="submit1" id="select" value="Add to Cart"></td> <br>
             
              </tr>
          </table>
        <div id="show"></div>   
        <%@include file="footer.jsp" %>
        <script>
       $(document).ready(function (){

        $("#select").click(function(e){
        e.preventDefault();
        
        var data1 =[];
        $(".toselect:checked").each(function() {
            data1.push($(this).val());
            });
                    
                  $.ajax({
                        url:'productdetailsdiet.jsp',
                        type:'post',
                        data:{"data2":data1},
                        
                        success:function(result)
                        {
                            
                            if($.trim(result)=="success")
                            {
                             window.location.replace("showcart.jsp");
                             
                            };
                        },
                        error:function(e)
                        {
                            $('#show').html("Error due to " +e);
                        }
                    });
                });
                });

        </script>
    </body>
</html>
