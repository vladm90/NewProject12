<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 14.03.2016
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
  <title>Login Page</title>
  <link rel="stylesheet" type="text/css" href="/css/main.css" media="all" />
  <style>
    .error {
      padding: 15px;
      margin-bottom: 20px;
      border: 1px solid transparent;
      border-radius: 4px;
      color: #a94442;
      background-color: #f2dede;
      border-color: #ebccd1;
    }

    .msg {
      padding: 15px;
      margin-bottom: 20px;
      border: 1px solid transparent;
      border-radius: 4px;
      color: #31708f;
      background-color: #d9edf7;
      border-color: #bce8f1;
    }


  </style>
</head>
<body onload='document.loginForm.email.focus();'>

<%--<h1>Login form</h1>--%>

<div id="login-box">

  <h3>Login with Email and Password</h3>

  <c:if test="${not empty error}">
    <div class="error">${error}</div>
  </c:if>
  <c:if test="${not empty msg}">
    <div class="msg">${msg}</div>
  </c:if>

  <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>

    <table>
      <tr>
        <td>User:</td>
        <td><input type='text' name='email' value="${user.email}"></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td><input type='password' name='password' value="${user.password}" /></td>
      </tr>
      <tr/>
      <tr>
        <td><input name="submit" type="submit" value="Login" /></td>
        <td><a href="/registration"><input type="button" value="Register"/></a></td>
      </tr>
    </table>

    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

  </form>
</div>

</body>
</html>