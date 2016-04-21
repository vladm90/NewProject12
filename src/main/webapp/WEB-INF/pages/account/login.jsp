<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 20.04.2016
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>


  <script type="text/javascript" src="/js/jquery.min.js"></script>


</head>
<body>


<link href="/css/bootstrap_admin.min.css" rel="stylesheet">
<link href="/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="<c:url value="/js/jquery.min.js" />"></script>
<script src="<c:url value="/js/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/js/bootstrap.min.js" />"></script>


<!-- Modal -->
<div class="modal fade" id="myModalLogin" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Welcome</h4>
      </div>

      <!-- Modal Body -->
      <div class="modal-body">
        <form class="form-horizontal" role="form" name="loginForm" action="<c:url value='/j_spring_security_check' />" method="POST">
          <div class="form-group">
            <label  class="col-sm-2 control-label" for="inputEmail3">Email</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" name='email' value="${user.email}" id="inputEmail3" placeholder="Email"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="inputPassword3" >Password</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" name='password' value="${user.password}" id="inputPassword3" placeholder="Password"/>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="checkbox">
                <label>
                  <input type="checkbox"/> Remember me
                </label>
              </div>
            </div>
          </div>
          <!-- Modal Footer -->
          <div class="form-group">
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
          </div>
           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>
      </div>


    </div>
  </div>
</div>




<script type="text/javascript">
  $(window).load(function(){
    $('#myModalLogin').modal('show');
  });
</script>

</body>
</html>
