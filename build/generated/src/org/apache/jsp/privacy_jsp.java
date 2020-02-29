package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
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

public final class privacy_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/css.jsp");
    _jspx_dependants.add("/userheader.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Privacy</title>\n");
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
      out.write("        ");
      out.write("<!--user header without banner-->\r\n");
      out.write("<!-- banner -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- header -->\r\n");
      out.write("\t\t<div class=\"header\">\r\n");
      out.write("\t\t\t<div class=\"w3ls-header\"><!-- header-one --> \r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"w3ls-header-left\">\r\n");
      out.write("\t\t\t\t\t\t<p>Free Home delivery at your doorstep For Above Rs. 500</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"w3ls-header-right\">\r\n");
      out.write("\t\t\t\t\t\t<ul> \r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"head-dpdn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-phone\" aria-hidden=\"true\"></i> Call us: +91 8146020376 \r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("                                                        ");

                                                        if(session.getAttribute("uname")==null && session.getAttribute("aname")==null)
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
                                                               out.print("<li><a href='myorders.jsp'> My Orders </a></li>");
                                                               out.print("<li><a href='feedback1.jsp'> Feedback </a></li>");
                                                            }
						        
                                                                                                      
                                                        
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"head-dpdn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"offers.jsp\"><i class=\"fa fa-gift\" aria-hidden=\"true\"></i> Offers</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li> \r\n");
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
      out.write("\t\t\t\t\t\t</div> \r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-megadropdown-tabs\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"index.jsp\" class=\"active\">Home</a></li>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Mega Menu -->\r\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"> Menu <b class=\"caret\"></b></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Food type</h6>  \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"menu.jsp\">Food Categories</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("                                                                <li class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"> Special Boxes<b class=\"caret\"></b></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Box type</h6> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"showdiet.jsp\">Diet</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"menu.jsp\">Mini</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"menu.jsp\">Regular</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"menu.jsp\">Special</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("                                                                                       \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"about.jsp\">About</a></li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"contact.jsp\">Contact Us</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</nav>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- //navigation --> \r\n");
      out.write("\t\t</div>");
      out.write("\n");
      out.write("        \n");
      out.write("          \t\t\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //banner -->    \n");
      out.write("\t<!-- breadcrumb -->  \n");
      out.write("\t<div class=\"container\">\t\n");
      out.write("\t\t<ol class=\"breadcrumb w3l-crumbs\">\n");
      out.write("\t\t\t<li><a href=\"#\"><i class=\"fa fa-home\"></i> Home</a></li> \n");
      out.write("\t\t\t<li class=\"active\">Menu</li>\n");
      out.write("\t\t</ol>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //breadcrumb -->\n");
      out.write("\t<!-- privacy-page -->\n");
      out.write("\t<div class=\"privacy about\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">\n");
      out.write("                         Welcome at Staple foods, we recognize that privacy is important!!</h3>  \n");
      out.write("\t\t\t<div class=\"privacy-w3row\">\n");
      out.write("                            <h4 class=\"w3ls-title w3ls-title1\"> </h4>\n");
      out.write("\t\t\t\t\n");
      out.write("                            <h3> CONSENT </h3>\n");
      out.write("                            <p>By using this site, you agree to the terms of this Privacy Policy. Whenever you submit information via this site, you consent to the collection, use and disclosure of the information in accordance with this Privacy Policy. </p>\n");
      out.write("                            <br>\n");
      out.write("                            <h3> INFORMATION COLLECTED </h3>\n");
      out.write("<p>In general, you can visit this Web site without telling us who you are or revealing any information about yourself. Our web servers collect the domain names, not the e-mail addresses, of visitors.\n");
      out.write("\n");
      out.write("Domino's may collect personal information from you including your first and last name, address, telephone and mobile number(s), email address, credit card details and any other information, when you knowingly provide us with this information. This will generally occur when you either:\n");
      out.write("\n");
      out.write("Visit Online ordering site to place order.\n");
      out.write("Enter into a competition or promotion.\n");
      out.write("Participate in a survey.\n");
      out.write("Subscribe to our mailing list.\n");
      out.write("Register as a WOW club member.\n");
      out.write("Apply for a job.\n");
      out.write("Request information regarding our Franchise system.\n");
      out.write("Submit website feedback </p>\n");
      out.write("                        </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //privacy-page -->  \n");
      out.write("\t<!-- subscribe -->\n");
      out.write("\t\n");
      out.write("        ");
      out.write("<!-- footer -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"footer agileits-w3layouts\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"w3_footer_grids\">\r\n");
      out.write("\t\t\t\t<div class=\"col-xs-6 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>company</h3>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about.jsp\">About Us</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"contact.jsp\">Contact Us</a></li>  \r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div> \r\n");
      out.write("                            <br> \r\n");
      out.write("\t\t\t\t<div class=\"col-xs-6 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>help</h3>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"help.jsp\">FAQ</a></li> \r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"offers.jsp\">Offers</a></li> \r\n");
      out.write("\t\t\t\t\t</ul>  \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                            \r\n");
      out.write("\t\t\t\t<div class=\"col-xs-6 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>policy info</h3>\r\n");
      out.write("\t\t\t\t\t<ul>  \r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"terms.jsp\">Terms & Conditions</a></li>  \r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"privacy.jsp\">Privacy Policy</a></li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>   \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-xs-6 col-sm-6 footer-grids w3-agileits\">\r\n");
      out.write("\t\t\t\t\t<h3>Menu</h3> \r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">All Day Menu</a></li> \r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">Lunch</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">Dinner</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"menu.jsp\">Flavours</a></li> \r\n");
      out.write("\t\t\t\t\t</ul>  \r\n");
      out.write("\t\t\t\t</div> \r\n");
      out.write("                            \r\n");
      out.write("                            <div class=\"col-xs-6 col-sm-6 footer-grids w3-agileits\">\r\n");
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
