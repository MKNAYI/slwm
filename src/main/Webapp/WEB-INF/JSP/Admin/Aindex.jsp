<html>
<head>
<title>DashBoard</title>
<%@include file="../head.jsp"%>

</head>
<body class="animsition">
	<div class="page-wrapper">
		<%@include file="Amheader.jsp"%>
		<%@include file="Asider.jsp"%>
		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<%@include file="Aheader.jsp"%>
           
        
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">DashBord</h2>
                                    <!-- <button class="au-btn au-btn-icon au-btn--blue">
                                        <i class="zmdi zmdi-plus"></i>add item</button> -->
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fa fa-trash"></i>
                                            </div>
                                            <div class="text">
                                                <h2 id="solid-full">3</h2>
                                               <!--  <span>4</span> -->
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fa fa-trash"></i>
                                            </div>
                                            <div class="text">
                                                <h2 id="liquid-full">2</h2>
                                              <!--   <span>4</span> -->
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fa fa-automobile"></i>
                                            </div><br>
                                            <div class="text">
                                                <h2>2</h2>
                                                <span>0</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fa fa-automobile"></i>
                                            </div>
                                            <div class="text">
                                                <h2 id="Driver">3</h2>
                                                <span>0</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                           
                           
                        </div>
                       
                   
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->			
			
			<!-- END PAGE CONTAINER-->
		</div>

	</div>

	<%@ include file="../footer.jsp"%>
	 <script>
 $(document).ready(
			function() {
				
				
				
				$.ajax({
					type : 'GET',
					url : '/dashBord/getDustbin/Soild',
					dataType : "json",
					success : function(data) {
						console.log(data);
                       // alert(data);
						$('#solid-full').text(data);

					}
				});
                 
				$.ajax({
					type : 'GET',
					url : '/dashBord/getDustbin/liquid',
					dataType : "json",
					success : function(data) {
						console.log(data);
                       // alert(data);
						$('#liquid-full').text(data);

					}
				});
				
				$.ajax({
					type : 'GET',
					url : '/dashBord/getdriver',
					dataType : "json",
					success : function(data) {
						console.log(data);
                      //  alert(data);
						$('#Driver').text(data);

					}
				});
				 



			});
 </script>
</body>

</html>