<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 14.03.2016
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/WEB-INF/pages/fragments/header.jsp"%>

<div class="container" role="main">



    <div class="col-md-12">
        <div align="right">
            <spring:url value="/admin/addUser" var="addUser" />
            <button class="btn btn-info" onclick="location.href='${addUser}'">Add User</button>
            <hr>
        </div>

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
                    <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${user.creationDate}"/></td>
                    <td><a href="/login" type="button" class="btn btn-primary">Edit</a>
                        <a href="/login" type="button" class="btn btn-danger">Disable</a>
                </tr>
            </c:forEach>
            </tbody>
        </table>



    </div>

</div>


<script>
    $(document).ready(function(){
        $('#myTable').dataTable();
    });
</script>



<%@ include file="/WEB-INF/pages/fragments/footer.jsp"%>

