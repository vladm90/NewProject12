<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 07.04.2016
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/WEB-INF/pages/fragments/header.jsp"%>

  <div class="container">

    <div class="col-md-1"></div>
    <div class="col-md-6">

      <%--bootstrap alert message--%>
      <c:if test="${not empty msg}">
        <div class="alert alert-success alert-dismissible" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>${msg}</strong>
        </div>
      </c:if>


      <h1>User Detail</h1>
      <br />

      <div class="row">
        <label class="col-md-3">ID</label>
        <div class="col-md-3">${user.id}</div>
      </div>

      <div class="row">
        <label class="col-md-3">Enabled</label>
        <div class="col-md-3">${user.enabled}</div>
      </div>

      <div class="row">
        <label class="col-md-3">First Name</label>
        <div class="col-md-3">${user.firstName}</div>
      </div>

      <div class="row">
        <label class="col-md-3">Last Name</label>
        <div class="col-md-3">${user.lastName}</div>
      </div>

      <div class="row">
        <label class="col-md-3">Email</label>
        <div class="col-md-3">${user.email}</div>
      </div>


      <div class="row">
        <label class="col-md-3">Role</label>
        <div class="col-md-3">${user.role.role}</div>
      </div>

      <div class="row">
        <label class="col-md-3">Creation Date</label>
        <div class="col-md-3">${user.creationDate}</div>
      </div>


    <div align="right">
      <spring:url value="/admin/listUsers" var="return" />
      <button class="btn btn-info" onclick="location.href='${return}'">Return</button>
    </div>

    </div>
  </div>

<script></script>




  <%@ include file="/WEB-INF/pages/fragments/footer.jsp"%>
