<%-- 
    Document   : view_for_all_employees
    Created on : Mar 8, 2022, 9:02:58 PM
    Author     : nuriklan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Information form all employees</h3>
        
        <security:authorize access="hasRole('HR')">
        <input type="button" value="Salary"
               onclick="window.location.href='hr_info'"/>
        Only for HR stuff
        </security:authorize>
        
        <br><br>
        
        <security:authorize access="hasRole('MANAGER')">
        <input type="button" value="Performance"
               onclick="window.location.href='manager_info'"/>
        Only for managers
        </security:authorize>
    </body>
</html>
