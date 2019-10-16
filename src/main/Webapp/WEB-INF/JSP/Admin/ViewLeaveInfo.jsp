<html>
<head>
<title>View LeaveInfo</title>
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

				<!-- DATA TABLE-->
				<%@include file="viewLeave.jsp"%>


				<!-- END DATA TABLE-->

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