<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 07.04.2016
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/WEB-INF/pages/fragments/header.jsp"%>

  <div class="container theme-showcase" role="main">
    <h1>User Detail</h1>
    <br />

    <div class="row">
      <label class="col-sm-2">First Name</label>
      <div class="col-sm-10">${user.firstName}</div>
    </div>

    <div class="row">
      <label class="col-sm-2">Last Name</label>
      <div class="col-sm-10">${user.lastName}</div>
    </div>

    <div class="row">
      <label class="col-sm-2">Email</label>
      <div class="col-sm-10">${user.email}</div>
    </div>

    <div class="row">
      <label class="col-sm-2">Username</label>
      <div class="col-sm-10">${user.username}</div>
    </div>

    <div class="row">
      <label class="col-sm-2">Role</label>
      <div class="col-sm-10">${user.role}</div>
    </div>

  </div>



  <script></script>




  <%@ include file="/WEB-INF/pages/fragments/footer.jsp"%>
