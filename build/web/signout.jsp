<%-- 
    Document   : signout
    Created on : 13 Mar, 2018, 12:35:14 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign out</title>
    </head>
    <body>
        <%
            Cookie mycookie=new Cookie("username","");
            mycookie.setMaxAge(0);
            response.addCookie(mycookie);
            
           Cookie mycookie1=new Cookie("name","");
            mycookie1.setMaxAge(0);
            response.addCookie(mycookie1);

           
            
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
