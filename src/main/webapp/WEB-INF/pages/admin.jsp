<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 14.03.2016
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page session="true"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/main.css" media="all" />

</head>
<body>




<%--logout--%>
<p class="logout_paragraph">
Logged as <strong>${pageContext.request.userPrincipal.name}</strong> | <a href="javascript:formSubmit()"> Logout </a></p>


<c:url value="/j_spring_security_logout" var="logoutUrl" />

<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>



    <table class="tftable">
        <tr>
            <th>ID</th>
            <th>USERNAME</th>
            <th>PASSWORD</th>
            <th>FIRST NAME</th>
            <th>LAST NAME</th>
            <th>EMAIL</th>
            <th>ROLE</th>
            <th>CREATION DATE</th>
        <tr>
        <c:forEach items="${users}" var="user" varStatus="rowCounter">
            <tr>
                <td>${rowCounter.count}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td>${user.role.role}</td>
                <td>${user.creationDate}</td>
            </tr>
        </c:forEach>
    </table>






<script>
    function formSubmit() {
        document.getElementById("logoutForm").submit();
    }
</script>


</body>
</html>
