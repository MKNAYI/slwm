<html>
<head>
<title>Forgate Password</title>
<%@include file="head.jsp"%>

</head>
<body class="animsition">
	<div class="page-wrapper">
		<div class="page-content--bge5">
			<div class="container">
				<div class="login-wrap">
					<div class="login-content">
						<div class="login-logo">
							<a href="#"> <img src="images/icon/logo.png" alt="CoolAdmin">
							</a>
						</div>
						<div class="login-form">
							<form action="/forgatepass/Action" method="post">
								

								<div class="form-group">
									<label>Enter Your User/Email </label> <input
										class="au-input au-input--full" type="email" name="username"
										placeholder="UserName / Email">
								</div>
								</br>
                                    <input class="au-btn au-btn--block au-btn--green m-b-20" value="Send Request"	type="submit">
									
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@ include file="footer.jsp"%>
</body>

</html>