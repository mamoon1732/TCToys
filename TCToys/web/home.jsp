<%-- 
    Document   : home
    Created on : Jun 23, 2023, 1:37:24 PM
    Author     : 16512
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TC Toys Home</title>
        <style>
            body{
                background-color: red;
                color: yellow;
                text-align: center;
            }
            
            h1{
                margin-top: 275px;
                font-size:50px;
            }
            
            p{
                font-size: 30px;
            }
            
            button{
                font-size:20px;
            }
        </style>
    </head>
    <body>
        <h1>Welcome to TC Toys!</h1>
        <p>We carry a large number of Pokemon collectibles and gifts for the whole family!</p>
        <button onclick="productsPage()">Click Here to view our products</button>
        
        <script>
            function productsPage() {
                location.href="products.jsp";
            }
        </script>
    </body>
</html>
