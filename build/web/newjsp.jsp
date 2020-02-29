<%-- 
    Document   : newjsp
    Created on : 21 Oct, 2018, 8:30:58 AM
    Author     : Home
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
              <%
       File file = new File ("C:\\Users\\Home\\Desktop\\dataset.txt");
       Scanner input = new Scanner (file);
       PrintWriter pw = new PrintWriter("C:\\Users\\Home\\Desktop\\output.xml");
       pw.println("<companies>");
       String in;
       while (input.hasNext()){
           
           in = input.nextLine();
           pw.println("<name>"+in+"</name>\n");

       }
       pw.println("</companies>");
       pw.close();
       input.close();
       %>
   }
}


    </body>
</html>
