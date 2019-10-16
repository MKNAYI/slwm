<html>
<head>
<title> View Report </title>
<%@ include file="../head.jsp"%>

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
                <!-- <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">Reports</h2>
                                    <button class="au-btn au-btn-icon au-btn--blue">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                </div>
                            </div>
                        </div>
                        </br>
                      <div class="row">
                            <div class="col-lg-6">
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <h3 class="title-2">recent reports</h3><br>
                                        <div class="chart-info">
                                            <div class="chart-info__left">
                                                <div class="chart-note">
                                                    <span class="dot dot--blue"></span>
                                                    <span>Solid Waste</span>
                                                </div>
                                                <div class="chart-note mr-0">
                                                    <span class="dot dot--green"></span>
                                                    <span>Liquid Waste</span>
                                                </div>
                                            </div>
                                            <div class="chart-info__right">
                                                <div class="chart-statis">
                                                    <span class="index incre">
                                                        <i class="zmdi zmdi-long-arrow-up"></i>25%</span>
                                                    <span class="label">Liquid Waste</span>
                                                </div>
                                                <div class="chart-statis mr-0">
                                                    <span class="index decre">
                                                        <i class="zmdi zmdi-long-arrow-down"></i>10%</span>
                                                    <span class="label">Solid Waste</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="recent-report__chart">
                                            <canvas id="recent-rep-chart"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="col-lg-6">
                                <div class="au-card chart-percent-card">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 tm-b-5">Daily Report</h3>
                                        <div class="row no-gutters">
                                            <div class="col-xl-6">
                                                <div class="chart-note-wrap">
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--blue"></span>
                                                        <span>Solid Waste</span>
                                                    </div>
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--red"></span>
                                                        <span>Liquid Waste</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="percent-chart">
                                                    <canvas id="percent-chart"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                                          
                    </div>
                </div> -->
          
          
          
             <%@include file="../dailyReport.jsp"%>
          
          
            </div>
            <!-- END MAIN CONTENT-->
			
			
			<!-- END PAGE CONTAINER-->
		</div>

	</div>

	<%@ include file="../footer.jsp"%>
		<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#myTable').DataTable();

					$.ajax({
						type : 'GET',
						url : '/Admin/ao/areawise',
						dataType : "json",
						success : function(data) {
							console.log(data);

							$('#arealist').empty();
							$('#arealist').html(
									'<option value="">Area</option>');

							for (var i = 0; i < data.length; i++) {
								$('#arealist').append(
										'<option  value=' + data[i].areaid + '>'
												+ data[i].areaname
												+ '</option>');

							}
						}
					});

					$('#arealist').on('change', function() {

						var AreaId = $(this).val();

						if (AreaId != 0) {

							var table = $('#myTable').DataTable();

							table.column(0).search(AreaId).draw();

							/*    $.ajax({
							       type:'POST',
							       url:'/areawise/'+AreaId,
							       success:function(response)
							       {
							       	
							       	alert(response);
							       	 $.each(response, function(key, value)
							       	{
							       		 // alert(value.opfname);
							       		//$(#areawiserow).html('<tr><td>'+value.opid+'</td></tr>'); 
							       		
							       	}); 
							       }
							       }); */
						}

					});

				});
	
	
	          
	        
		
	</script>
	
</body>

</html>