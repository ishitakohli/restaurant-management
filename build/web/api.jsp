<%-- 
    Document   : api
    Created on : 12 Apr, 2018, 7:58:53 PM
    Author     : Home
--%>
<%@page import="java.io.BufferedReader"
import="java.io.BufferedWriter"
import="java.io.IOException"
import="java.io.InputStream"
import="java.io.InputStreamReader"
import="java.io.OutputStream"
import="java.io.OutputStreamWriter"
import="java.net.HttpURLConnection"
import="java.net.MalformedURLException"
import="java.net.URL"
import="java.net.URLEncoder"
import="org.json.JSONArray"
import="org.json.JSONObject" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Weather updates</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
        <%@include file="userheader.jsp" %>
        <h1>Live Weather Updates</h1>
        <%
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

            out.print("<h3>Today's forecast is " + weatherforecast.get("description") + "</h3>");

            temp=tempdata.get("temp").toString();
            humidity=tempdata.get("humidity").toString();
            out.print("<h3>Current temperature is " + temp + " degree celcius</h4>");
            out.print("<h3>Current Humidity is " + humidity + "</h3>");


            } catch (MalformedURLException e) {

            e.printStackTrace();
            } catch (IOException e) {

            e.printStackTrace();
            } 

            %>
        
       
        <%@include file="footer.jsp" %>
    </body>
</html>
