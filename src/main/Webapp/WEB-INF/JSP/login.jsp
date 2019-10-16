<html>
<head>
<title>Login</title>
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
							<form action="" method="post">
<!-- 								<div class="form-group">
									<select class="form-control-lg form-control" name="type">

										<option value="Operator">Operator</option>
										<option value="Driver">Driver</option>
									</select>
								</div> -->

								<div class="form-group">
									<label>Username</label> <input
										class="au-input au-input--full" type="text" name="username"
										placeholder="Username">
								</div>
								<div class="form-group">
									<label>Password</label> <input class="au-input au-input--full"
										type="password" name="userpass" placeholder="Password">
								</div>
								<div class="login-checkbox">

									<label> <a href="/forgatepass">Forgotten Password?</a>
									</label>
								</div>
								<button class="au-btn au-btn--block au-btn--green m-b-20"
									type="submit">
									<a href=""> sign in</a>
								</button>
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