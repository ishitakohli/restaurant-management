<%-- 
    Document   : ajax2
    Created on : 26 Mar, 2018, 12:16:29 PM
    Author     : Home
--%>
<%@page import="java.sql.*"%>
<%@include file="myvars.jsp" %>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
<%
                                               Random obj=new Random();
                                               int vercode=obj.nextInt(1000);
                                          
                                               try
                                            {
                                                Connection myconnection;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                myconnection=DriverManager.getConnection(path+place,uname,pass);
                                                try
                                                {
                                                    String query1="select * from usertable where username=?";
                                                    PreparedStatement mystatement1 =myconnection.prepareStatement(query1);
                                                    mystatement1.setString(1,request.getParameter("username"));
                                                    ResultSet myresult=mystatement1.executeQuery();
                                                    if(myresult.next())
                                                    {
                                                       out.print("0");   
                                                    }
                                                    else
                                                    {
                                                        Properties props = new Properties();
                                                props.put("mail.smtp.host", "smtp.gmail.com");
                                                props.put("mail.smtp.socketFactory.port", "465");
                                                props.put("mail.smtp.socketFactory.class",
                                                "javax.net.ssl.SSLSocketFactory");
                                                props.put("mail.smtp.auth", "true");
                                                props.put("mail.smtp.port", "465");

                                                Session session2 = Session.getInstance(props,
                                                new javax.mail.Authenticator() {
                                                protected PasswordAuthentication getPasswordAuthentication() {
                                                return new PasswordAuthentication("ishasethi009@gmail.com","ishasethi1@");
                                                }
                                                });
                                                try {
                                                Message message = new MimeMessage(session2);
                                                message.addHeader("Content-type", "text/html; charset=UTF-8");
                                                message.setFrom(new InternetAddress("ishasethi009@gmail.com"));
                                                 String text=request.getParameter("username");
                                                
                                                message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(text));
                                                message.setSubject("Sign up request");
                                                 
                                                message.setText("You have signed up to staple foods, please confirm your email id to enjoy the delicious food\n"
                                                + " http://localhost:8080/student_portal/login.jsp?Email=" + text );


                                                Transport.send(message);
                                                
                                                  
                                                }
                                                catch(Exception e) 
                                                {
                                                out.println("Mail does not works");
                                                } 
                                                
                                                
                                                  String query= "insert into usertable values(?,?,SHA(?),?,?,?)";
                                                  PreparedStatement mystatement =myconnection.prepareStatement(query);
                                                  mystatement.setString(1,request.getParameter("username"));
                                                  mystatement.setString(2,request.getParameter("name"));
                                                  mystatement.setString(3,request.getParameter("password") + SALT);
                                                  mystatement.setString(4,request.getParameter("pno"));
                                                  mystatement.setInt(5,vercode);
                                                  mystatement.setString(6,request.getParameter("dob"));
                                                  
                                                  if(mystatement.executeUpdate()>0)
                                                {
                                                 out.print("1");
                                                }
                                                 
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
