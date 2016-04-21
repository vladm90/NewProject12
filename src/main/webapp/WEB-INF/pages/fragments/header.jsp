<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 06.04.2016
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/pages/common.jsp"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page session="true"%>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <link rel="stylesheet" type="text/css" href="/css/main.css" media="all" />
  <!-- Bootstrap core CSS -->
  <link href="/css/bootstrap_admin.min.css" rel="stylesheet">
  <link href="/css/jquery.dataTables.min.css" rel="stylesheet">
  <!-- Bootstrap theme -->
  <%--<link href="/css/bootstrap-theme.min.css" rel="stylesheet">--%>
  <script src="<c:url value="/js/jquery.min.js" />"></script>
  <script src="<c:url value="/js/jquery.dataTables.min.js" />"></script>
  <script src="<c:url value="/js/bootstrap.min.js" />"></script>
</head>

<body>
  <!-- HEADER-->
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container_center">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/admin">NewProjectLogin</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="/admin">Home</a></li>
          <li><a href="/shop">Shop</a></li>
          <li><a href="#">Button</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Actions<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="/admin/listUsers">Users</a></li>
              <li><a href="/admin/addUser">Add User</a></li>
              <li><a href="#">Something else here</a></li>
              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Nav header</li>
              <li><a href="#">Separated link</a></li>
              <li><a href="#">One more separated link</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <%--logout--%>
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> Logged as <strong>${pageContext.request.userPrincipal.name}</strong></a></li>
          <li><a href="javascript:formSubmit()"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>

          <c:url value="/j_spring_security_logout" var="logoutUrl" />

          <form action="${logoutUrl}" method="post" id="logoutForm">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
          </form>

        </ul>
      </div>
    </div>
  </nav>

  <script>
    function formSubmit() {
      document.getElementById("logoutForm").submit();
    }
  </script>
