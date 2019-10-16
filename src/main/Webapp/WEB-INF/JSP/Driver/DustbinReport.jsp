<html>
<head>
<title>View Notification</title>
<%@ include file="../head.jsp"%>

</head>
<body class="animsition">
	<div class="page-wrapper">
	<%-- 	<%@include file="Amheader.jsp"%>
	 --%>	<%@include file="Dsider.jsp"%>
		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<%@include file="Dheader.jsp"%>
         
         
            <!-- MAIN CONTENT-->
            <div class="main-content">
          
           
            <%--  <%@include file="../dailyReport.jsp"%> --%>
              <div class="table-responsive table-responsive-data2" style="margin-left:50px; width:90%;">
					<table class="table table-data2" id="myTable">
						<thead>
							<tr>
								<th>Date/Time</th>
								<th>Status</th>
								<th>DustbinId</th>

								<th>Type</th>
								 <th>Area</th>
                  		</tr>
						</thead>
						<tbody id="dailyReport">
						</tbody>
						</table>
              
          
            </div>
            <!-- END MAIN CONTENT-->
			
			
			<!-- END PAGE CONTAINER-->
		</div>

	</div>

	<%@ include file="../footer.jsp"%>
		<script type="text/javascript">
		$(document).ready(function() {
		
		
			$.ajax({
				type : 'GET',
				url : '/notification/get',
				dataType : "json",
				success : function(data) {
					console.log(data);

					$('#dailyReport').empty();
                    
					for (var i =1; i<data.length; i++) {
						//alert(${u.driverModel.areaModel.areaid});
					  if(data[i].dustbinModel.areaModel.areaid == ${u.driverModel.areaModel.areaid}){
				    
						$('#dailyReport').append('<tr class="tr-shadow"> <td>'+data[i].date+'</td><td>'+data[i].status+'%</td><td>'+data[i].dustbinModel.id+'</td><td>'+data[i].dustbinModel.type+'</td> <td style="display:">'+data[i].dustbinModel.areaModel.areaname+'</td></tr>');
					  }
					}
					
				}
			});


					
				});
	
	
	          
	        
		
	</script>
	 
</body>

</html>