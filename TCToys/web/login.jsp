<%-- 
    Document   : login
    Created on : Jun 23, 2023, 1:27:12 PM
    Author     : 16512
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            body{
                background-color: red;
                color: yellow;
                text-align: center;
            }
            
            div{
                margin-top: 225px;
            }
            
            a{
                font-size: 50px;
            }
            
            #big{
                font-size:50px;
            }
            
        </style>
    </head>
    <body>
        <div>
        <%@ page import="java.sql.*" %>
        <%
            String url = "jdbc:mysql://localhost:3306/tctoys";
            String dbusername = "root";
            String dbpassword = "admin";
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, dbusername, dbpassword);
            
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
            stmt.setString(1, username);
            stmt.setString(2, password);
            
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next())
            {
                response.sendRedirect("home.jsp");
            }
            
            else
            {
                %>
                <div id="big">
                    <%
                    out.println("Invalid username or password");
                    %>
                </div>
                
                <%
            }
            
            con.close();

                    
        %>
        </div>
        <br>
        
        <a href="index.html">Return Home</a>
    </body>
</html>
