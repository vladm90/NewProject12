<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script>
    function formSubmit() {
        document.getElementById("logoutForm").submit();
    }
</script>


<h1>Title : ${title}</h1>
<h1>Message : ${message}</h1>
</body>
</html>