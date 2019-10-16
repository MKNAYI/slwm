<html>
<head>
<title>Rest-Password</title>
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
							<form action="/Rest-password" method="post">
								
                                <div class="form-group">
									<label id="message"></label> 
									<input	style="display:none"   class="au-input au-input--full" type="text" name="userid"
										placeholder="Enter The New Password" value="${userModel.userid}">
								</div> 
                                
								<div class="form-group">
									<label>New Password</label> <input
										class="au-input au-input--full" type="password" name="userpass"
										placeholder="Enter The New Password" id="password" required="required">
								</div>
								<div class="form-group">
									<label>Confirm Password</label> <input class="au-input au-input--full"
										type="password" name="" id="confirm_password" required="required" placeholder="Enter The Confirm-Password">
								</div>
								
							   <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">
									<!-- <a href=""> --> Change Password<!-- </a> -->
								</button>
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@ include file="footer.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	
	<script type="text/javascript">
	$('#password, #confirm_password').on('keyup', function () {
		  if ($('#password').val() == $('#confirm_password').val()) {
		    $('#message').html('Matching').css('color', 'red');
		  } else 
		    $('#message').html('Not Matching').css('color', 'red');
		});
	</script>
</body>

</html>