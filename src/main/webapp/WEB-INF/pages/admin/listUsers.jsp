<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 14.03.2016
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/WEB-INF/pages/fragments/header.jsp"%>

<div class="container" role="main">

 <h1>Users</h1>

  <div class="col-md-12">
    <div align="right">
      <spring:url value="/admin/addUser" var="addUser" />
      <button class="btn btn-info" onclick="location.href='${addUser}'">Add User</button>
      <hr>
    </div>

    <table class="table table-striped" cellspacing="0" id="myTable">
      <thead>
      <tr>
        <th>#</th>
        <th>ENABLED</th>
        <th>PASSWORD</th>
        <th>FIRST_NAME</th>
        <th>LAST_NAME</th>
        <th>EMAIL</th>
        <th>ROLE</th>
        <th>CREATION_DATE</th>
        <th>ACTIUNI</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${users}" var="user" varStatus="rowCounter">
        <tr>
          <td>${rowCounter.count}</td>
          <td><c:out default="0" value="${(empty user.enabled || not user.enabled)? value : '1'}" /></td>
          <td>${user.password}</td>
          <td>${user.firstName}</td>
          <td>${user.lastName}</td>
          <td>${user.email}</td>
          <td>${user.role.role}</td>
          <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${user.creationDate}"/></td>
          <td>
            <a href="/admin/userDetail?userId=${user.id}" type="button" class="btn btn-warning">View</a>
            <a href="/admin/updateUser?userId=${user.id}" type="button" class="btn btn-primary">Edit</a>
            <a href="/admin/disableUser?userId=${user.id}" type="button" class="btn btn-danger">Disable</a>
          </td>
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

