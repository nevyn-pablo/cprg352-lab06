<%-- 
    Document   : shoppingList
    Created on : Oct 24, 2021, 8:46:32 PM
    Author     : 849961
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username}</p>
        <p><a href="ShoppingList?action=logout">Logout</a></p>
        <form action="" method="post">
            <h2>Add Item</h2>
            <input type="text" name="item">
            <input type="submit" value="Add Item">
            <input type="hidden" name="action" value="add">


        </form>
        <form action="" method="post">
             <c:if test="${size>=0}">
            <ul>
                <c:forEach var="itemname" items="${items}">
                    <li><input type="radio" name="item" value="${itemname.toString()}">${itemname.toString()}</li>
                </c:forEach>

            </ul>
             </c:if>
            <input type="submit" value="delete">
            <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>