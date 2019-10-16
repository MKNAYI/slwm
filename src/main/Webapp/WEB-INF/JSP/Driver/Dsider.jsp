  <!-- MENU SIDEBAR__done-->
        <aside class="menu-sidebar2">
            <div class="logo">
                <a href="#">
                    <img src="<%=request.getContextPath() %>/images/icon/logo-white.png" alt="SLWM" />
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">
                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="<%=request.getContextPath() %>/images/photo/${u.driverModel.img}" height=200px width=200px alt="${u.driverModel.drifname}" />
                    </div>
                    <h4 class="name">${u.driverModel.drifname}</h4>
                    <a href="/login?logout">Sign out</a>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                       
                         <li>
                            <a href="/Driver/Dindex">
                                <i class="fa fa-trash"></i>Dustbin</a>
                           <!--  <span class="inbox-num">3</span> -->
                        </li> 
                                                
                         <li>
                            <a href="/Driver/leaveinfo">
                             <i class="fa fa-calendar-check-o"></i>ApplyLeave</a>
                        </li>
                       
                       
                     </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR_done-->