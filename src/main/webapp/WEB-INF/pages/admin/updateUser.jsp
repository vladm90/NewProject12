<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 06.04.2016
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/WEB-INF/pages/fragments/header.jsp"%>

<div class="container">

  <div class="col-md-3"></div>
  <div class="col-md-6">

          <h1>Update User</h1>

      <br />

      <form:form class="form-horizontal" method="post" modelAttribute="form" action="/admin/updateUser">
        <form:hidden path="id" />

        <spring:bind path="firstName">
          <div class="form-group ${status.error ? 'has-error' : ''}">
            <label class="col-md-3 control-label">First Name</label>
            <div class="col-md-6">
              <form:input path="firstName" type="text" value="${form.firstName}" class="form-control" id="firstName" placeholder="First Name" />
              <form:errors path="firstName" class="control-label" />
            </div>
          </div>
        </spring:bind>

        <spring:bind path="lastName">
          <div class="form-group ${status.error ? 'has-error' : ''}">
            <label class="col-md-3 control-label">Last Name</label>
            <div class="col-md-6">
              <form:input path="lastName" class="form-control" id="lastName" placeholder="Last Name" />
              <form:errors path="lastName" class="control-label" />
            </div>
          </div>
        </spring:bind>

        <spring:bind path="email">
          <div class="form-group ${status.error ? 'has-error' : ''}">
            <label class="col-md-3 control-label">Email</label>
            <div class="col-md-6">
              <form:input path="email" class="form-control" id="email" placeholder="Email" />
              <form:errors path="email" class="control-label" />
            </div>
          </div>
        </spring:bind>

        <spring:bind path="username">
          <div class="form-group ${status.error ? 'has-error' : ''}">
            <label class="col-md-3 control-label">Username</label>
            <div class="col-md-6">
              <form:input path="username" class="form-control" id="username" placeholder="Username" />
              <form:errors path="username" class="control-label" />
            </div>
          </div>
        </spring:bind>

        <spring:bind path="password">
          <div class="form-group ${status.error ? 'has-error' : ''}">
            <label class="col-md-3 control-label">Password</label>
            <div class="col-md-6">
              <form:password path="password" class="form-control" id="password" placeholder="Password" />
              <form:errors path="password" class="control-label" />
            </div>
          </div>
        </spring:bind>

        <spring:bind path="confirmPassword">
          <div class="form-group ${status.error ? 'has-error' : ''}">
            <label class="col-md-3 control-label">Confirm Password</label>
            <div class="col-md-6">
                <form:password path="confirmPassword" class="form-control" id="confirmPassword" placeholder="Confirm Password" />
                <form:errors path="confirmPassword" class="control-label" />
            </div>
          </div>
        </spring:bind>


        <spring:bind path="role">
          <div class="form-group ${status.error ? 'has-error' : ''}">
            <label class="col-md-3 control-label">Role</label>
            <div class="col-md-6">
              <form:select path="role" class="form-control">
                <%--<form:option value="NONE" label="--- Select ---" />--%>
                <form:options items="${role}" />
              </form:select>
              <form:errors path="role" class="control-label" />
            </div>
          </div>
        </spring:bind>

        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">

                <button type="submit" class="btn-lg btn-primary pull-right">Add</button>

          </div>
        </div>
      </form:form>
  </div>

</div>


<%@ include file="/WEB-INF/pages/fragments/footer.jsp"%>
