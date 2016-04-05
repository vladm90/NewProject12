<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 17.03.2016
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>

<%@page session="false"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/css/main.css" media="all" />
  <title>Registration</title>

  <style>


    .errorblock {
      color: #000;
      background-color: #ffEEEE;
      border: 3px solid #ff0000;
      padding: 8px;
      margin: 16px;
    }
  </style>

</head>
<body>
<div id="login-box">
  <form:form modelAttribute="form" action="/registration" method="POST">
   <%-- <form:errors path="*" cssClass="errorblock" element="div" />--%>
      <table cellpadding="2" align="center">
        <thead>
        <tr>
          <th colspan="3">Enter Information Here</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td width="38%">First Name</td>
          <td width="35%"><input type="text" name="firstName" value="${form.firstName}"/></td>
          <td width="27%"></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><form:errors path="firstName" cssClass="error" /></td>
        </tr>
        <tr>
          <td>Last Name</td>
          <td><input type="text" name="lastName" value="${form.lastName}"/></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><form:errors path="lastName" cssClass="error" /></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><input type="text" name="email" value="${form.email}" /></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><form:errors path="email" cssClass="error" /></td>
        </tr>
        <tr>
          <td>User Name</td>
          <td><input type="text" name="username" value="${form.username}"/></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><form:errors path="username" cssClass="error" /></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="password" value="${form.password}" readonly onfocus="this.removeAttribute('readonly');"/></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><form:errors path="password" cssClass="error" /></td>
        </tr>
        <tr>
          <td>Confirm Password</td>
          <td><input type="password" name="confirmPassword" value="${form.confirmPassword}" readonly onfocus="this.removeAttribute('readonly');"/></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><form:errors path="confirmPassword" cssClass="error" /></td>
        </tr>
        <tr>
          <td><input name="submit" type="submit" value="Register" /></td>
          <td><input type="reset" value="Clear" /></td>
        </tr>
        <tr>
          <td colspan="2">Already registered? <a href="/login"><input type="button" value="Login Here" /></a></td>
        </tr>
        </tbody>
      </table>


  </form:form>

</div>
</body>
</html>
