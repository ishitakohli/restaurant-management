package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import org.json.JSONArray;
import org.json.JSONObject;

public final class listofproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/myvars.jsp");
    _jspx_dependants.add("/css.jsp");
    _jspx_dependants.add("/header3.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

        String path=getServletContext().getInitParameter("PATH");
        String place=getServletContext().getInitParameter("PLACE");
        String uname=getServletContext().getInitParameter("UNAME");
        String pass=getServletContext().getInitParameter("PASS");
        String SALT=getServletContext().getInitParameter("SALT");
        
      out.write("\n");
      out.write("   ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>list of Items</title>\n");
      out.write("        ");
      out.write("<link href=\"css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("<link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">  \r\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> <!-- font-awesome icons -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/owl.carousel.css\" type=\"text/css\" media=\"all\"/> <!-- Owl-Carousel-CSS -->\r\n");
      out.write("<!-- //Custom Theme files --> \r\n");
      out.write("<!-- js -->\r\n");
      out.write("<script src=\"js/jquery-2.2.3.min.js\"></script>  \r\n");
      out.write("<!-- //js -->\r\n");
      out.write("<!-- web-fonts -->   \r\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Berkshire+Swash\" rel=\"stylesheet\"> \r\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900\" rel=\"stylesheet\">");
      out.write("\n");
      out.write("                \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<!--admin header without banner-->\r\n");
      out.write("\t\t<div class=\"header\">\r\n");
      out.write("\t\t\t<div class=\"w3ls-header\"><!-- header-one --> \r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"w3ls-header-right\">\r\n");
      out.write("\t\t\t\t\t\t<ul> \r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("                                                        ");

                                                        if(session.getAttribute("gname")==null && session.getAttribute("aname")==null)
                                                           {
                                                            out.print("<li class='head-dpdn'>" + 
								"<a href='login.jsp'><i class='fa fa-sign-in' aria-hidden='true'></i> Login</a>" +
					                        "<a href='signup.jsp'><i class='fa fa-user-plus' aria-hidden='true'></i> Signup</a>" +
                                                                "</li> ");
                                                          }
                                                       
                                                        else
                                                            {
                                                               out.print("<li><a href='signout.jsp'> Sign out </a></li>"); 
                                                               out.print("<li><a href='changepassword.jsp'> Change password </a></li>");  
                                                             
                                                            }
						        
                                                                                                      
                                                        
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div> \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- //header-one -->    \r\n");
      out.write("\t\t\t<!-- navigation -->\r\n");
      out.write("\t\t\t<div class=\"navigation agiletop-nav\">\r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<nav class=\"navbar navbar-default\">\r\n");
      out.write("\t\t\t\t\t\t<!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"navbar-header w3l_logo\">\r\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed navbar-toggle1\" data-toggle=\"collapse\" data-target=\"#bs-megadropdown-tabs\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t</button>  \r\n");
      out.write("\t\t\t\t\t\t\t<h1><a href=\"index.jsp\">Staple<span>Best Food Collection</span></a></h1>\r\n");
      out.write("\t\t\t\t\t\t</div> \r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-megadropdown-tabs\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"index.jsp\" class=\"active\">Home</a></li>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Mega Menu -->\r\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("                                                           <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Menu <b class=\"caret\"></b></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\r\n");
      out.write("                                                                                                            <h6> What to do? </h6> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"add_category.jsp\">Add Food Category</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"add_subcategory.jsp\">Add Food Subcategory</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"add_product.jsp\">Add Item</a></li> \r\n");
      out.write("                                                                                                        <li><a href=\"listofcategories.jsp\">Show Category</a></li> \r\n");
      out.write("                                                                                                        <li><a href=\"listofsubcategory.jsp\">Show Subcategories</a></li> \r\n");
      out.write("                                                                                                        <li><a href=\"listofproducts.jsp\">Show Items</a></li> \r\n");
      out.write("                                                                                                        <li><a href=\"vieworder.jsp\">View Order Details</a></li> \r\n");
      out.write("                                                                                                        <li><a href=\"adddietmenu.jsp\">Add diet menu</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\t\r\n");
      out.write("                                                                        </ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("                                                               \r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</nav>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- //navigation --> \r\n");
      out.write("\t\t</div>\r\n");
      out.write("   ");
      out.write("\n");
      out.write("    </div>\n");
      out.write("        ");

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
                                                  
                                                  out.print("</tbody></table>");
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
                                           
                                            
     
      out.write("\n");
      out.write("       \n");
      out.write("        ");
      out.write("<!-- footer -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"footer agileits-w3layouts\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"w3_footer_grids\">\r\n");
      out.write("\t\t\t\t<div class=\"col-xs-4 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>company</h3>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about.jsp\">About Us</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"contact.jsp\">Contact Us</a></li>  \r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div> \r\n");
      out.write("                            <br> \r\n");
      out.write("\t\t\t\t<div class=\"col-xs-4 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>help</h3>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"help.jsp\">FAQ</a></li> \r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"offers.jsp\">Offers</a></li> \r\n");
      out.write("\t\t\t\t\t</ul>  \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                            \r\n");
      out.write("\t\t\t\t<div class=\"col-xs-4 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>policy info</h3>\r\n");
      out.write("\t\t\t\t\t<ul>  \r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"terms.jsp\">Terms & Conditions</a></li>  \r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"privacy.jsp\">Privacy Policy</a></li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>   \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-xs-4 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>Menu</h3> \r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">All Day Menu</a></li> \r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">Lunch</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">Dinner</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">Flavours</a></li> \r\n");
      out.write("\t\t\t\t\t</ul>  \r\n");
      out.write("\t\t\t\t</div> \r\n");
      out.write("                            \r\n");
      out.write("                            <div class=\"col-xs-4 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>Live Weather</h3> \r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t ");

            String temp,humidity,description;
            BufferedReader myreader=null;
            String data="";  

            String url="http://api.openweathermap.org/data/2.5/weather?lat=31.294421&lon=75.583031&appid=443226502af6798025ea9e9d8e93f498&units=metric";
            try {
            URL myurl=new URL(url);
            myreader=new BufferedReader(new InputStreamReader(myurl.openStream()));
            data= myreader.readLine();
            JSONObject myobject=new JSONObject(data);
            JSONObject tempdata=myobject.getJSONObject("main");

            JSONArray myarray=myobject.getJSONArray("weather");

            JSONObject weatherforecast=myarray.getJSONObject(0);

            out.print("<li style='color:grey'>Today's forecast is " + weatherforecast.get("description") + "</li>");

            temp=tempdata.get("temp").toString();
            humidity=tempdata.get("humidity").toString();
            out.print("<li style='color:grey'>Current temperature is " + temp + " degree celcius</li>");
            out.print("<li style='color:grey'>Current Humidity is " + humidity + "</li>");


            } catch (MalformedURLException e) {

            e.printStackTrace();
            } catch (IOException e) {

            e.printStackTrace();
            } 

            
      out.write("\r\n");
      out.write("            </ul>\r\n");
      out.write("            \r\n");
      out.write("        \r\n");
      out.write("\t  \r\n");
      out.write("\t\t\t\t</div> \r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div> \r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"copyw3-agile\"> \r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<p>&copy; 2017 Staple Food. All rights reserved | Design by <a href=\"http://w3layouts.com/\">W3layouts</a></p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<!-- //footer --> \r\n");
      out.write("        \t<!-- cart-js -->\r\n");
      out.write("\t<script src=\"js/minicart.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("        w3ls.render();\r\n");
      out.write("\r\n");
      out.write("        w3ls.cart.on('w3sb_checkout', function (evt) {\r\n");
      out.write("        \tvar items, len, i;\r\n");
      out.write("\r\n");
      out.write("        \tif (this.subtotal() > 0) {\r\n");
      out.write("        \t\titems = this.items();\r\n");
      out.write("\r\n");
      out.write("        \t\tfor (i = 0, len = items.length; i < len; i++) { \r\n");
      out.write("        \t\t}\r\n");
      out.write("        \t}\r\n");
      out.write("        });\r\n");
      out.write("    </script>  \r\n");
      out.write("\t<!-- //cart-js -->\t\r\n");
      out.write("\t<!-- Owl-Carousel-JavaScript -->\r\n");
      out.write("\t<script src=\"js/owl.carousel.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\t$(document).ready(function() {\r\n");
      out.write("\t\t\t$(\"#owl-demo\").owlCarousel ({\r\n");
      out.write("\t\t\t\titems : 3,\r\n");
      out.write("\t\t\t\tlazyLoad : true,\r\n");
      out.write("\t\t\t\tautoPlay : true,\r\n");
      out.write("\t\t\t\tpagination : true,\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<!-- //Owl-Carousel-JavaScript -->  \r\n");
      out.write("\t<!-- start-smooth-scrolling -->\r\n");
      out.write("\t<script src=\"js/SmoothScroll.min.js\"></script>  \r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/easing.js\"></script>\t\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\tjQuery(document).ready(function($) {\r\n");
      out.write("\t\t\t\t$(\".scroll\").click(function(event){\t\t\r\n");
      out.write("\t\t\t\t\tevent.preventDefault();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<!-- //end-smooth-scrolling -->\t  \r\n");
      out.write("\t<!-- smooth-scrolling-of-move-up -->\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t$(document).ready(function() {\r\n");
      out.write("\t\t\t/*\r\n");
      out.write("\t\t\tvar defaults = {\r\n");
      out.write("\t\t\t\tcontainerID: 'toTop', // fading element id\r\n");
      out.write("\t\t\t\tcontainerHoverID: 'toTopHover', // fading element hover id\r\n");
      out.write("\t\t\t\tscrollSpeed: 1200,\r\n");
      out.write("\t\t\t\teasingType: 'linear' \r\n");
      out.write("\t\t\t};\r\n");
      out.write("\t\t\t*/\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<!-- //smooth-scrolling-of-move-up --> \r\n");
      out.write("\t<!-- Bootstrap core JavaScript\r\n");
      out.write("    ================================================== -->\r\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("    <script src=\"js/bootstrap.js\"></script>");
      out.write("\n");
      out.write("        <script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            $(\".todelete\").click(function(e){\n");
      out.write("               e.preventDefault();\n");
      out.write("               if(confirm(\"Do you really want to delete?\"))\n");
      out.write("               {\n");
      out.write("               id=$(this).attr(\"pid\")\n");
      out.write("               var pr1=$(this).parent();\n");
      out.write("               var pr=$(this).parent().parent();\n");
      out.write("                $.ajax({\n");
      out.write("                        url:'ajax.jsp',\n");
      out.write("                        type:'post',\n");
      out.write("                        data:{\"pid1\":id},\n");
      out.write("                        beforeSend:function()\n");
      out.write("                        {\n");
      out.write("                            \n");
      out.write("                            pr1.append(\"<img src='images/preloader.gif' width='64px'>\");\n");
      out.write("                        },\n");
      out.write("                         success:function(result)\n");
      out.write("                        {\n");
      out.write("                            \n");
      out.write("                            if($.trim(result)==\"success\")\n");
      out.write("                            {\n");
      out.write("                              pr.css({'backgroundColor':'#fb6c6c'});\n");
      out.write("                              pr.fadeOut(600,function(){\n");
      out.write("                                  pr.remove()\n");
      out.write("                              })\n");
      out.write("                            }\n");
      out.write("                        },\n");
      out.write("                        error:function(e)\n");
      out.write("                        {\n");
      out.write("                            pr1.append(\"error due to \" +e);\n");
      out.write("                        }\n");
      out.write("                    })\n");
      out.write("                 }\n");
      out.write("            })\n");
      out.write("        })\n");
      out.write("        </script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.fancybox.min.css\">\n");
      out.write("        <script src=\"js/jquery.fancybox.min.js\"> </script>\n");
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
