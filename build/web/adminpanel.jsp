<%-- 
    Document   : adminpanel
    Created on : 10 Mar, 2018, 5:50:54 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
        <%@include file="header3.jsp" %>
       
        <div class="container">
            <h1> Welcome <%=session.getAttribute("aname")%> </h1> <br> <br>
            
            <div class="row">
                <div class="col-md-4">
                    <a href="add_category.jsp"   >
                        <center><img src="images/128.png" width="200px" height="200px"></center>
                    </a>
                    
                    <a href="add_category.jsp" style='color:black' align='center'><h4><center>Add Category</center></h4> </a>
                </div>
                <br>
                <div class="col-md-4">
                    <a href="add_subcategory.jsp">
                        <center><img src="images/rest21.png" width="200px" height="200px"></center>
                    </a>
                    
                    <a href="add_subcategory.jsp" style='color:black'><h4><center>Add Sub Category </center></h4></a>
                </div>
                <br>
                 <div class="col-md-4">
                    <a href="add_product.jsp">
                        <center><img src="images/Donut.png" width="200px" height="200px"></center>
                    </a>
                     
                     <a href="add_product.jsp" style='color:black' align=""><h4><center>Add Item</center></h4></a>
                </div>
                <br>
                 <div class="col-md-4">
                    <a href="combo.jsp">
                        <center><img src="images/combo1.png" width="200px" height="200px"></center>
                    </a>
                     
                     <a href="combo.jsp" style='color:black'><h4><center>Add Combos</center></h4></a>
                </div>
                 <br>
                  <div class="col-md-4">
                    <a href="combofetch.jsp">
                        <center><img src="images/combo2.png" width="200px" height="200px"></center>
                    </a>
                     
                     <a href="combofetch.jsp" style='color:black'><h4><center>View Combos</center></h4></a>
                </div>
                 <br>
                 
                 <div class="col-md-4">
                    <a href="listofcategories.jsp">
                        <center><img src="images/food.png" width="200px" height="200px"></center>
                    </a>
                     
                     <a href="listofcategories.jsp" style='color:black'><h4><center>View Categories</center></h4></a>
                </div>
                <br>
                 <div class="col-md-4">
                    <a href="listofsubcategory.jsp">
                        <center><img src="images/212.png" width="200px" height="200px"></center>
                    </a>
                     
                     <a href="listofsubcategory.jsp" style='color:black'><h4><center>View Subcategories</center></h4></a>
                </div>
                <br>
                 <div class="col-md-4">
                    <a href="listofproducts.jsp">
                        <center><img src="images/rest8.png" width="200px" height="200px"></center>
                    </a>
                     
                     <a href="listofproducts.jsp" style='color:black'><h4><center>View Items</center></h4></a>
                </div>
                <br>
                 <div class="col-md-4">
                    <a href="vieworder.jsp">
                        <center><img src="images/order.png" width="200px" height="200px"></center>
                    </a>
                     
                     <a href="vieworder.jsp" style='color:black'><h4><center>View Orders</center></h4></a>
                </div>
             </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
