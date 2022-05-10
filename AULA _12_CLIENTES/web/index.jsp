<%-- 
    Document   : index
    Created on : 9 de mai. de 2022, 21:25:40
    Author     : Fatec
--%>
<%@page import="model.Client"%>
<%@page import="model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Exception requestEx = null;
    int count = 0;
    int count2 = 0;
    try{
        count = Client.getCount();
        count2 = Employee.getCount();
    }catch(Exception ex){
        requestEx = ex;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice - Clientes e Funcionários</title>
    </head>
    <body>
      <h1>JDBC - AULA 12 - POO</h1>
      <h1>DAVI LEONEL GUIMARAES / RA: 1290482023028</h1>
        <h2>Clientes (<%= count%> Registros) / Funcionários (<%= count2%> Registros)</h2>
        
        <a href="func.jsp"> PÁGINA DE FUNCIONÁRIOS!</a>
        <br/>
        <br/>
        <a href="cliente.jsp"> PÁGINA DE CLIENTES!</a>
        
    </body>
</html>
