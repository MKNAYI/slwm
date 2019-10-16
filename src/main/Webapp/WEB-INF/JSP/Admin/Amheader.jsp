
<!-- HEADER MOBILE  _done-->
<header class="header-mobile d-block d-lg-none">
	<div class="header-mobile__bar">
		<div class="container-fluid">
			<div class="header-mobile-inner">
				<a class="logo" href="index.html"> <img src="<%=request.getContextPath() %>/images/icon/logo.png" alt="SLWM" />				</a>
				<button class="hamburger hamburger--slider" type="button">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<nav class="navbar-mobile">
		<div class="container-fluid">
			<ul class="navbar-mobile__list list-unstyled">
				<li class="has-sub"><a class="js-arrow" href="/Admin/Aindex">
						<i class="fas fa-tachometer-alt"></i>Dashboard
				</a>
				<li><a href="/Admin/ar"> <i class="fas fa-chart-bar"></i>Report
				</a></li>
				<li><a href="/Admin/adr"> <i class="fas fa-table"></i>Driver
				</a></li>
				<li><a href="/Admin/areaDetails"> <i class="fas fa-map-marker-alt"></i>Area
				
				</a></li>
				<li><a href="/Admin/adust"> <i class="fa fa-trash"></i>Dustbin
				</a></li>
				<li>
                            <a href="/Admin/viewleave">
                             <i class="fa fa-calendar-check-o"></i>ApplyLeave</a>
                        </li>
			
			</ul>

		</div>
	</nav>
</header>
<!-- END HEADER MOBILE__done-->