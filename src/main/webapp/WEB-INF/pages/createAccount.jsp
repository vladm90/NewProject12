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
    .error {
      color: #ff0000;
    }

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
  <form:form modelAttribute="form" autocomplete="off" action="/registration" method="POST">
    <form:errors path="*" cssClass="errorblock" element="div" />
      <table cellpadding="5">
        <thead>
        <tr>
          <th colspan="2">Enter Information Here</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td>First Name</td>
          <td><input type="text" name="user.firstName" value="" /></td>
          <td><form:errors path="user.firstName" cssClass="error" /></td>
        </tr>
        <tr>
          <td>Last Name</td>
          <td><input type="text" name="user.lastName" value="" /></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><input type="text" name="user.email" value="" /></td>
        </tr>
        <tr>
          <td>User Name</td>
          <td><input type="text" name="user.username" value=""/></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="user.password" readonly onfocus="this.removeAttribute('readonly');" /></td>
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

    <script>
   //   createAccount.setAttribute("autocomplete", "off" );
      //createAccount.setAttribute("autocomplete", "off" );
     /* function submitForm() {
        document.contact-form.submit();
        document.contact-form.reset();
      }*/
    </script>
  </form:form>

</div>
</body>
</html>
