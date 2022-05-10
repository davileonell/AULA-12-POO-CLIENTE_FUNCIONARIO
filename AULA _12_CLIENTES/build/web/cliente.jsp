<%-- 
    Document   : cliente
    Created on : 9 de mai. de 2022, 21:44:10
    Author     : Fatec
--%>
<%@page import="model.Client"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Exception requestEx = null;
    ArrayList<Client> list = new ArrayList<>();
    try{
        list = Client.getList();
    }catch(Exception ex){
        requestEx = ex;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
         <h1>DAVI LEONEL GUIMARAES / RA: 1290482023028</h1>
        <h1>Lista de Clientes!</h1>
        
        <%if (requestEx !=null){%>
        <h2 style="color:red"><%= requestEx.getMessage() %></h2>
        <%}%>
        <table border="1">
            
            <tr><th>id</th><th>FirstName</th></tr>
            <%for (Client a: Client.getList()){%>
            <tr>
                <td><%= a.getId() %></td>
                 <td><%= a.getName() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
