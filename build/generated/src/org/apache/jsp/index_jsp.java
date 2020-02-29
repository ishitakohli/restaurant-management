package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
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

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/myvars.jsp");
    _jspx_dependants.add("/css.jsp");
    _jspx_dependants.add("/header2.jsp");
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
      out.write("  \n");
      out.write("   \n");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Hotel services</title>\n");
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("        ");
      out.write("<!--main header-->\r\n");
      out.write("<!-- banner -->\r\n");
      out.write("  \r\n");
      out.write("   \r\n");
      out.write("\t<div class=\"banner\">\r\n");
      out.write("\t\t<!-- header -->\r\n");
      out.write("\t\t<div class=\"header\">\r\n");
      out.write("\t\t\t<div class=\"w3ls-header\"><!-- header-one --> \r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("                                    \r\n");
      out.write("                                                                                    \r\n");
      out.write("                                        \r\n");
      out.write("\t\t\t\t\t<div class=\"w3ls-header-left\">\r\n");
      out.write("                                            ");

                                             SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
                                             Date date = new Date(); 

						out.print("<p>Free home delivery at your doorstep For Above Rs. 500</p>"
                                                        + "<p>Today's Date: " +formatter.format(date) +"</p>");
                                               
                                              
      out.write("\r\n");
      out.write("                                            \r\n");
      out.write("    \r\n");
      out.write("       \r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"w3ls-header-right\">\r\n");
      out.write("\t\t\t\t\t\t<ul> \r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"head-dpdn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-phone\" aria-hidden=\"true\"></i> Call us: +91 8146020376 \r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("                                                        ");

                                                        if(session.getAttribute("gname")==null && session.getAttribute("aname")==null)
                                                           {
                                                            out.print("<li class='head-dpdn'>" + 
								"<a href='login.jsp'><i class='fa fa-sign-in' aria-hidden='true'></i>Login</a>" +
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
      out.write("\t\t\t\t\t\t\t<li class=\"head-dpdn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"help.jsp\"><i class=\"fa fa-question-circle\" aria-hidden=\"true\"></i> Help</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
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
      out.write("                                                </div> \r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</nav>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- //navigation --> \r\n");
      out.write("\t\t</div>");
      out.write("\n");
      out.write("        <div class=\"banner-text\">\t\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<h2>Delicious food from the <br> <span>Best Chefs For you.</span></h2>\n");
      out.write("\t\t\t\t<div class=\"agileits_search\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //banner -->   \n");
      out.write("\t<!-- add-products -->\n");
      out.write("                                            \n");
      out.write("\t<div class=\"add-products\">  \n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"add-products-row\">\n");
      out.write("\t\t\t\t<div class=\"w3ls-add-grids\">\n");
      out.write("                                    ");

                                        Calendar cal=Calendar.getInstance();
                                        cal.set(Calendar.HOUR_OF_DAY,13);
                                        cal.set(Calendar.MINUTE,0);
                                        cal.set(Calendar.SECOND,0);
                                        cal.set(Calendar.MILLISECOND,0);
                                        boolean afterSix=Calendar.getInstance().after(cal);
                                        
                                        Calendar cal1=Calendar.getInstance();
                                        cal1.set(Calendar.HOUR_OF_DAY,16);
                                        cal1.set(Calendar.MINUTE,0);
                                        cal1.set(Calendar.SECOND,0);
                                        cal1.set(Calendar.MILLISECOND,0);
                                        
                                        boolean beforeFour=Calendar.getInstance().before(cal1);
                                          
                                          if(afterSix && beforeFour)
                                          {
                                            out.print("<a href='menudiscount.jsp'>" 
						+ "<h4>Get <span>10%<br>Discount</span></h4>"
						+ "<h5>Valid for today only </h5>"
						+ "<h6>Order Now <i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					         + "</a>");    
                                          }
                                          else
                                          {
                                             					         
                                          out.print("<a href='index.jsp'>" 
						+ "<h4>Get <span>10%<br>Discount</span></h4>"
						+ "<h5>Valid for today only </h5>"
						+ "<h6>Offer valid for lunch only<i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					         + "</a>");    
                                          }
                                          
                                        
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"w3ls-add-grids w3ls-add-grids-right\">\n");
      out.write("                                     ");

                                             SimpleDateFormat formatter1 = new SimpleDateFormat("dd/MM/yyyy");  
                                             Date date1 = new Date();
                                             SimpleDateFormat ft =  new SimpleDateFormat ("EEEE");
                                             if(ft.format(date1).equals("Thursday"))
                                             {
                                              out.print("<a href='menudiscount20.jsp'>" 
						+ "<h4>GET <span><br>20% Offer</span></h4>"
						 + "<h5>Thursday special discount</h5>"
						+ "<h6>Order Now <i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6>"
					        + "</a>"); 
						
                                             } 
                                             else
                                             {
                                                 out.print("<a href='index.jsp'>"
                                                            + "<h4>GET <span><br>20% Offer</span></h4>"
						            + "<h5>Thursday special discount</h5>"
                                                          + "<h6> Offer valid on Thursday only<i class='fa fa-arrow-circle-right'aria-hidden='true'></i></h6> ");
                                             }
                                        
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div> \n");
      out.write("\t\t\t</div>  \t \n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        <div class=\"w3agile-spldishes\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h3 class=\"w3ls-title\">Special Foods</h3>\n");
      out.write("\t\t\t<div class=\"spldishes-agileinfo\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 spldishes-w3left\">\n");
      out.write("\t\t\t\t\t<h5 class=\"w3ltitle\">Staple Specials</h5>\n");
      out.write("\t\t\t\t\t<p>Enjoy our restaurant best food Specialities !!</p>\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t\t<div class=\"col-md-9 spldishes-grids\">\n");
      out.write("\t\t\t\t\t<!-- Owl-Carousel -->\n");
      out.write("\t\t\t\t\t<div id=\"owl-demo\" class=\"owl-carousel text-center agileinfo-gallery-row\">\n");
      out.write("\t\t\t\t\t\t<a href=\"menu.jsp\" class=\"item g1\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"lazyOwl\" src=\"images/bullets.jpg\" width='300px' height='300px' title=\"Our latest gallery\" alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"agile-dish-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Bullets</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<span>Enjoy the delicious chinese taste of bullets</span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"menu.jsp\" class=\"item g1\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"lazyOwl\" src=\"images/cheese.jpg\" width='300px' height='300px' title=\"Our latest gallery\" alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"agile-dish-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Cheese chilli</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<span>Enjoy the yummiest cheese </span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<a href=\"menu.jsp\" class=\"item g1\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"lazyOwl\" src=\"images/mexico.jpg\" width='300px' height='300px' title=\"Our latest gallery\" alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"agile-dish-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Mexican Pizza</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<span>Enjoy the taste of mexican pizza in india </span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"menu.jsp\" class=\"item g1\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"lazyOwl\" src=\"images/daaljpg.jpg\" width='300px' height='300px' alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"agile-dish-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Daal Fry</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<span>Enjoy the assorted flavour of daal from various states  </span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a> \n");
      out.write("\t\t\t\t\t\t<a href=\"menu.jsp\" class=\"item g1\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"lazyOwl\" src=\"images/lolipop.jpg\" width='300px' height='300px' title=\"Our latest gallery\" alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"agile-dish-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Chicken Lolipop</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<span>Taste it once, you will visit again to taste it  </span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"menu.jsp\" class=\"item g1\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"lazyOwl\" src=\"images/chicekn.jpg\"  width='300px' height='300px' title=\"Our latest gallery\" alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"agile-dish-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Chicken Sandwich</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<span>The most healthiest sandwich from our chef's delicacy </span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"menu.jsp\" class=\"item g1\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"lazyOwl\" src=\"images/curry.jpg\" width=200px height=200px title=\"Our latest gallery\" alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"agile-dish-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Mutton curry</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<span>Delicious curry you have ever tasted</span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t</div>  \n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //add-products --> \n");
      out.write("\t<!-- order -->   \t\n");
      out.write("\t\n");
      out.write("\t<!-- //order -->    \n");
      out.write("\t<!-- deals -->\n");
      out.write("\t<div class=\"w3agile-deals\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h3 class=\"w3ls-title\">Special Services</h3>\n");
      out.write("\t\t\t<div class=\"dealsrow\">\n");
      out.write("\t\t\t\t<div class=\"col-md-6 col-sm-6 deals-grids\">\n");
      out.write("\t\t\t\t\t<div class=\"deals-left\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-truck\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t<div class=\"deals-right\">\n");
      out.write("\t\t\t\t\t\t<h4>FREE DELIVERY</h4>\n");
      out.write("\t\t\t\t\t\t<p>Enjoy free delivery on orders above Rs.500</p>\n");
      out.write("\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t\t<div class=\"col-md-6 col-sm-6 deals-grids\">\n");
      out.write("\t\t\t\t\t<div class=\"deals-left\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-birthday-cake\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t<div class=\"deals-right\">\n");
      out.write("\t\t\t\t\t\t<h4>Party Orders</h4>\n");
      out.write("\t\t\t\t\t\t<p>Enjoy your parties with our best services.For more info call us at +91-8146020376</p>\n");
      out.write("\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-6 col-sm-6 deals-grids\">\n");
      out.write("\t\t\t\t\t<div class=\"deals-left\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-users\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t<div class=\"deals-right\">\n");
      out.write("\t\t\t\t\t\t<h4>Team up Scheme</h4>\n");
      out.write("\t\t\t\t\t\t<p>Team up with us to enjoy the best services.For more info call us at +91-8146020376</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t\t<div class=\"col-md-6 col-sm-6 deals-grids\">\n");
      out.write("\t\t\t\t\t<div class=\"deals-left\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-building\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t<div class=\"deals-right\">\n");
      out.write("\t\t\t\t\t\t<h4>Corporate orders</h4>\n");
      out.write("\t\t\t\t\t\t<p>For Bulk Queries & Corporate orders,please write to us at ishitakohli007@gmail.com and concerned team shall get back to you soon.\n");
      out.write(" </p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"wthree-order\">  \n");
      out.write("\t\t<img src=\"images/i2.jpg\" class=\"w3order-img\" alt=\"\"/>\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h3 class=\"w3ls-title\">How To Order Online Food</h3>\n");
      out.write("\t\t\t<p class=\"w3lsorder-text\">Get your favourite food in 4 simple steps.</p>\n");
      out.write("                        <div class=\"order-agileinfo\">  \n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-xs-6 order-w3lsgrids\"> \n");
      out.write("\t\t\t\t\t<div class=\"order-w3text\"> \n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-map\" aria-hidden=\"true\"></i> \n");
      out.write("                                                <a href=\"map.jsp\"><h5>Search Us</h5></a>\n");
      out.write("\t\t\t\t\t\t<span>1</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                        \n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3 col-sm-3 col-xs-6 order-w3lsgrids\"> \n");
      out.write("\t\t\t\t\t<div class=\"order-w3text\"> \n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-cutlery\" aria-hidden=\"true\"></i> \n");
      out.write("                                                <a href=\"menu.jsp\"><h5>Choose Food</h5></a>\n");
      out.write("\t\t\t\t\t\t<span>2</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-xs-6 order-w3lsgrids\"> \n");
      out.write("\t\t\t\t\t<div class=\"order-w3text\"> \n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-credit-card\" aria-hidden=\"true\"></i>\n");
      out.write("                                                <a href=\"checkout.jsp\"><h5>Pay Money</h5></a>\n");
      out.write("\t\t\t\t\t\t<span>3</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-xs-6 order-w3lsgrids\"> \n");
      out.write("\t\t\t\t\t<div class=\"order-w3text\"> \n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-truck\" aria-hidden=\"true\"></i>\n");
      out.write("                                                <a href=\"index.jsp\"><h5>Enjoy Food</h5></a>\n");
      out.write("\t\t\t\t\t\t<span>4</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div> \n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //deals --> \n");
      out.write("\t<!-- dishes -->\n");
      out.write("\t\n");
      out.write("\t<!-- //dishes --> \n");
      out.write("\t<!-- subscribe -->\n");
      out.write("\t\n");
      out.write("    <div class=\"clearfix\"> </div> \n");
      out.write("\t\t\n");
      out.write("\t\n");
      out.write("         ");
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
      out.write("          \n");
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
