
package ourservlets;
import java.io.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
                                       PrintWriter out=response.getWriter();
                                       String uname,place,pass,path,SALT;
                                      
                                      uname = getServletContext().getInitParameter("UNAME");
                                      place = getServletContext().getInitParameter("PLACE");
                                      pass = getServletContext().getInitParameter("PASS");
                                      path = getServletContext().getInitParameter("PATH");
                                      SALT = getServletContext().getInitParameter("SALT");
                                       
                                       try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                  String query= "select * from usertable where username=? " + " and password=SHA(?)";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("username"));
                                                   mystatement.setString(2,request.getParameter("password") + SALT);
                                                  ResultSet myresult=mystatement.executeQuery();
                                                  
                                                  String query1= "select * from atable where username=? " + " and password=SHA(?)";
                                                  PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                  mystatement1.setString(1,request.getParameter("username"));
                                                  mystatement1.setString(2,request.getParameter("password") + SALT);
                                                  ResultSet myresult1=mystatement1.executeQuery();
                                                  
                                                  HttpSession session=request.getSession();
                                                  RequestDispatcher mydispatcher;
                                                  if(myresult.next())
                                                  {
                                                      if(request.getParameter("checkbox")!=null)
                                                      {
                                                          Cookie mycookie=new Cookie("username",request.getParameter("username"));
                                                          mycookie.setMaxAge(60*60*24*7);
                                                          response.addCookie(mycookie);
                                                          
                                                          Cookie mycookie1=new Cookie("name",request.getParameter("name"));
                                                          mycookie1.setMaxAge(60*60*24*7);
                                                          response.addCookie(mycookie1);

                                                          
                                                      }
                                                      session.setAttribute("gname",myresult.getString("name")); 
                                                      session.setAttribute("uname",myresult.getString("username")); 
                                                      
                                                      
                                                      mydispatcher=request.getRequestDispatcher("welcome.jsp");
                                                      mydispatcher.forward(request, response);
                                                  }
                                                  else if(myresult1.next())
                                                  {
                                                       
                                                      session.setAttribute("aname",myresult1.getString("username")); // session set for admin
                                                      mydispatcher=request.getRequestDispatcher("adminpanel.jsp");
                                                      mydispatcher.forward(request, response);
                                                  }
                                                   else
                                                  {
                                                      request.setAttribute("message","Wrong Username/Password");
                                                      mydispatcher=request.getRequestDispatcher("login.jsp");
                                                      mydispatcher.include(request, response);
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
   
}
