<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 14.03.2016
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page session="true"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <link rel="stylesheet" type="text/css" href="/css/main.css" media="all" />
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
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
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">NewProjectLogin</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
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


<div class="container theme-showcase" role="main">

    <hr>

    <div class="col-md-12">
        <table class="table table-striped" cellspacing="0" id="myTable">

            <thead>
            <tr>
                <th class="col-md-1">#</th>
                <th class="col-md-1">ENABLED</th>
                <th class="col-md-1">USERNAME</th>
                <th class="col-md-1">PASSWORD</th>
                <th class="col-md-1">FIRST_NAME</th>
                <th class="col-md-1">LAST_NAME</th>
                <th class="col-md-2">EMAIL</th>
                <th class="col-md-1">ROLE</th>
                <th class="col-md-1">CREATION_DATE</th>
                <th class="col-md-3">ACTIUNI</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="user" varStatus="rowCounter">
                <tr>
                    <td>${rowCounter.count}</td>
                    <td>${user.enabled}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.role.role}</td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd mm:HH" value="${user.creationDate}"/></td>
                    <td><a href="/login" type="button" class="btn btn-primary">Edit</a>
                        <a href="/login" type="button" class="btn btn-danger">Disable</a>
                </tr>
            </c:forEach>
            </tbody>
        </table>



    </div>

</div>


<script>
    function formSubmit() {
        document.getElementById("logoutForm").submit();
    }
</script>

<script>
    $(document).ready(function(){
        $('#myTable').dataTable();
    });
</script>




</body>
</html>
