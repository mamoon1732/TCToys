<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <style>
            .grid-container{
                display:grid;
                grid-template-columns: repeat(3, 1fr);
                grid-gap: 10px;
            }
            
            img{
                width:100%;
                height: auto;
            }
            
            body{
                background-color: red;
                color: yellow;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>TC Toys Products</h1>
        <div class="grid-container">
        <%
          
        //Use a try/catch block to catch any database exceptions
        try { 
            //Create a connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tctoys", "root", "admin");

            //Create a new SQL statement using the connection
            Statement stmt = con.createStatement();


            //Execute the SQL statement to retrieve a result set of records from the database.
            //This SQL query will retrieve all of the records in the products table
            ResultSet rs = stmt.executeQuery("SELECT * FROM Products;");  

            //Loop throug the resultset of products and add the product info to the grid
            while(rs.next()){
        %>
   
            <div class="grid-item">
                <%=rs.getString("productname")%> - $<%=rs.getString("price")%>
                <br>
                <%=rs.getString("description")%>
                <br>
                <img src="imagefiles/<%=rs.getString("productid")%>.jpg" alt="Product">                
                <br>
            </div>
        <%
            }//end while loop
        }catch(Exception e){           
            out.print("An error occurred: " + e.getMessage());
        }//end try catch
        %>
        </div>
    </body>
</html>