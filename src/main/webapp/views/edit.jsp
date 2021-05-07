<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit profile</title>
  <spring:url value="/resources/images/icons/favicon.ico" var="favicon"/>
  <link rel="icon" type="image/png" href="${favicon}">
  <spring:url value="/resources/css/profile.css" var="main_css"/>
  <link rel="stylesheet" type="text/css" href="${main_css}">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css" rel="stylesheet">
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</head>
<body oncontextmenu="false">
<div class="page-content page-container" id="page-content">
  <div class="padding">
    <div class="row container d-flex justify-content-center">
      <div class="col-xl-8 col-md-12">
        <form:form action="update" method="post" modelAttribute="user">
          <form:hidden path="id"/>
          <form:hidden path="email"/>
        <div class="card user-card-full">
          <div class="row m-l-0 m-r-0">
            <div class="col-sm-4 bg-c-lite-green user-profile">
              <div class="card-block text-center text-white">
                <div class="m-b-25"> <img src="https://img.icons8.com/bubbles/100/000000/user.png" class="img-radius" alt="User-Profile-Image"> </div>
                <form:input cssStyle="background: transparent;
    border: transparent;
    text-align: center;
    width: 180px;
    color: white;" path="name" maxlength="20" type="text"/>
                <p>#${user.id}</p>
                <i class="mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16" style="color: transparent"></i>
              </div>
            </div>
            <div class="col-sm-8">
              <div class="card-block">
                <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                <div class="row">
                  <div class="col-sm-6">
                    <p class="m-b-10 f-w-600">Email</p>
                    <h6 class="text-muted f-w-400">${user.email}</h6>
                  </div>
                  <div class="col-sm-6">
                    <p class="m-b-10 f-w-600">Phone</p>
                    <h6 class="text-muted f-w-400"><form:input cssStyle="background: transparent;
width: 200px;
color: gray;" path="mobile" maxlength="10" type="text"/></h6>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <p class="m-b-10 f-w-600">Date of birth</p>
                    <h6 class="text-muted f-w-400"><form:input cssStyle="background: transparent;
width: 200px;
color: gray;" path="dateOfBirth" type="date"/></h6>
                  </div>
                  <div class="col-sm-6">
                    <p class="m-b-10 f-w-600">Location</p>
                    <h6 class="text-muted f-w-400"><form:input cssStyle="background: transparent;
width: 200px;
color: gray;" path="location" maxlength="20" type="text"/></h6>
                  </div>
                </div>
                <ul class="social-link list-unstyled m-t-40 m-b-10">
                  <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="facebook" data-abc="true"><i class="mdi mdi-facebook feather icon-facebook facebook" aria-hidden="true"></i></a></li>
                  <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="twitter" data-abc="true"><i class="mdi mdi-twitter feather icon-twitter twitter" aria-hidden="true"></i></a></li>
                  <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="instagram" data-abc="true"><i class="mdi mdi-instagram feather icon-instagram instagram" aria-hidden="true"></i></a></li>
                  <li style="width: 230px"></li>
                  <li><form:button style="width: 60px;
                                          background: #007bff;
                                          border: transparent;
                                          color: white;
                                          border-radius: 4.5px;">Done</form:button></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        </form:form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
