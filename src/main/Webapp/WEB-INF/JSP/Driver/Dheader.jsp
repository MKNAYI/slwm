
<!-- HEADER DESKTOP-->
<header class="header-desktop2">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="header-wrap2">
				<div class="logo d-block d-lg-none">
					<a href="#"> <img src="images/icon/logo.png" alt="CoolAdmin" />
					</a>
				</div>
				<div class="header-button2">

					<div class="header-button-item has-noti js-item-menu">
						<i class="zmdi zmdi-notifications"></i>
						<!-- <span class="quantity">3</span> -->
						<div class="notifi-dropdown js-dropdown" >
							<div class="notifi__title">
								<p id="notificationIcon">You have Notifications</p>
							</div>
							<div class="notifi__footer">
								<a href="/Driver/DustbinReport">All notifications</a>
							</div>
						</div>
					</div>
					<div class="header-button-item mr-0 js-sidebar-btn">
						<i class="zmdi zmdi-menu"></i>
					</div>
					<div class="setting-menu js-right-sidebar d-none d-lg-block">
						<div class="account-dropdown__body">
							<div class="account-dropdown__item">
								<a href="/Rest-password?token=${u.token}"> <i class="zmdi zmdi-account"></i>Change
									Password
								</a>
							</div>
							<!--  <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-settings"></i>Setting</a>
                                        </div> -->
							<!-- <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-pin"></i>Location</a>
                                        </div> -->
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
	<div class="logo">
		<a href="#"> <img src="<%=request.getContextPath() %>/images/icon/logo.png" "
			alt="SLWM" />
		</a>
	</div>
	<div class="menu-sidebar2__content js-scrollbar2">
		<div class="account2">
			<div class="image img-cir img-120">
				<img src="<%=request.getContextPath() %>/images/photo/${u.driverModel.img}" height=200px width=200px alt="${u.driverModel.drifname}" />
			</div>
			<h4 class="name">${u.driverModel.drifname}</h4>
			<a href="/login?logout">Sign out</a>
		</div>
		<nav class="navbar-sidebar2">
			<ul class="list-unstyled navbar__list">

				<li><a href="/Driver/Dindex"> <i class="fa fa-trash"></i>Dustbin
				</a> <!--  <span class="inbox-num">3</span> --></li>
				<li><a href="/Driver/leaveinfo"> <i class="fa fa-automobile"></i>ApplyLeave
				</a></li>
			

			</ul>
		</nav>
	</div>
</aside>
<!-- END HEADER DESKTOP-->




