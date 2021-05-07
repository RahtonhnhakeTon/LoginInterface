<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <spring:url value="/resources/images/icons/favicon.ico" var="favicon"/>
    <link rel="icon" type="image/png" href="${favicon}">
    <!--===============================================================================================-->
    <spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" var="bootstrap"/>
    <link rel="stylesheet" type="text/css" href="${bootstrap}">
    <!--===============================================================================================-->
    <spring:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" var="font"/>
    <link rel="stylesheet" type="text/css" href="${font}">
    <!--===============================================================================================-->
    <spring:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" var="icon_font"/>
    <link rel="stylesheet" type="text/css" href="${icon_font}">
    <!--===============================================================================================-->
    <spring:url value="/resources/vendor/animate/animate.css" var="animate"/>
    <link rel="stylesheet" type="text/css" href="${animate}">
    <!--===============================================================================================-->
    <spring:url value="/resources/vendor/css-hamburgers/hamburgers.min.css" var="hamburgers"/>
    <link rel="stylesheet" type="text/css" href="${hamburgers}">
    <!--===============================================================================================-->
    <spring:url value="/resources/vendor/animsition/css/animsition.min.css" var="animsition"/>
    <link rel="stylesheet" type="text/css" href="${animsition}">
    <!--===============================================================================================-->
    <spring:url value="/resources/vendor/select2/select2.min.css" var="select2"/>
    <link rel="stylesheet" type="text/css" href="${select2}">
    <!--===============================================================================================-->
    <spring:url value="/resources/vendor/daterangepicker/daterangepicker.css" var="daterangepicker"/>
    <link rel="stylesheet" type="text/css" href="${daterangepicker}">
    <!--===============================================================================================-->
    <spring:url value="/resources/css/util.css" var="util_css"/>
    <spring:url value="/resources/css/main.css" var="main_css"/>
    <link rel="stylesheet" type="text/css" href="${util_css}">
    <link rel="stylesheet" type="text/css" href="${main_css}">
    <!--===============================================================================================-->
</head>
<body style="background-color: #666666;">
<script>
    alert("USERNAME OR PASSWORD INCORRECT");
</script>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <spring_form:form class="login100-form validate-form" action="validate" method="post" modelAttribute="cred">
					<span class="login100-form-title p-b-43">
						Login to continue
					</span>

                <spring_form:hidden path="key"/>
                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <spring_form:input class="input100 has-val" maxlength="30" type="text" path="email"/>
                    <span class="focus-input100"></span>
                    <span class="label-input100">Email</span>
                </div>


                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <spring_form:input class="input100 has-val" type="password" path="password"/>
                    <span class="focus-input100"></span>
                    <span class="label-input100">Password</span>
                </div>

                <div class="flex-sb-m w-full p-t-3 p-b-32">
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <label class="label-checkbox100" for="ckb1">
                            Remember me
                        </label>
                    </div>

                </div>


                <div class="container-login100-form-btn">
                    <spring_form:button class="login100-form-btn">
                        Login
                    </spring_form:button>
                </div>

                <div class="text-center p-t-46 p-b-20">
						<span class="txt2">
                            or <a href="registration" style="color: #7974ff">sign up here</a>
						</span>
                </div>
            </spring_form:form>
            <spring:url value="/resources/images/bg-01.jpg" var="bg"/>
            <div class="login100-more" style="background-image: url('${bg}');">
            </div>
        </div>
    </div>
</div>





<!--===============================================================================================-->
<spring:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" var="jquery"/>
<script src="${jquery}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/animsition/js/animsition.min.js" var="animsition_js"/>
<script src="${animsition_js}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/bootstrap/js/popper.js" var="popper_js"/>
<spring:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" var="bootstrap_js"/>
<script src="${popper_js}"></script>
<script src="${bootstrap_js}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/select2/select2.min.js" var="select2_js"/>
<script src="${select2_js}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/daterangepicker/moment.min.js" var="moment"/>
<spring:url value="/resources/vendor/daterangepicker/daterangepicker.js" var="daterangepicker_js"/>
<script src="${moment}"></script>
<script src="${daterangepicker_js}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/countdowntime/countdowntime.js" var="countdowntimer"/>
<script src="${countdowntimer}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/js/main.js" var="main_js"/>
<script src="${main_js}"></script>

</body>
</html>