<%-- 
    Document   : employees
    Created on : 9 de mai. de 2022, 21:43:41
    Author     : Fatec
--%>
<%@page import="model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Exception requestEx = null;
    ArrayList<Employee> list = new ArrayList<>();
    try{
        list = Employee.getList();
    }catch(Exception ex){
        requestEx = ex;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Funcionários</title>
    </head>
    <body>
        <h1>DAVI LEONEL GUIMARAES / RA: 1290482023028</h1>
        <h1>LISTA DE FUNCIONÁRIOS!</h1>
        
        <%if (requestEx !=null){%>
        <h2 style="color:red"><%= requestEx.getMessage() %></h2>
        <%}%>
        <table border="1">
            
            <tr><th>id</th><th>FirstName</th></tr>
            <%for (Employee a: Employee.getList()){%>
            <tr>
                <td><%= a.getId() %></td>
                 <td><%= a.getName() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
