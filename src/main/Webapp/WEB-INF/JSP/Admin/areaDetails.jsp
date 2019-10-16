<html>
<head>
<title></title>
<%@ include file="../head.jsp"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dustbin Details</title>
<!-- Global stylesheets -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/global_assets/css/icons/icomoon/styles.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<link href="<%=request.getContextPath()%>/assets/css/layout.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/components.min.css"
	rel="stylesheet" type="text/css">


<!-- Core JS files -->
<script
	src="<%=request.getContextPath()%>/global_assets/js/main/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/main/bootstrap.bundle.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/loaders/blockui.min.js"></script>
<!-- /core JS files -->


<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/demo_pages/datatables_basic.js"></script>

</head>

<body class="animsition">
	<div class="page-wrapper">
		<%@include file="Asider.jsp"%>
		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<%@include file="Aheader.jsp"%>
	
	<!-- MAIN CONTENT-->
			<div class="main-content">
	
			<!-- Content area -->
			<div class="content">

				<!-- Basic datatable -->
				<div class="card">
					
				
					<div class="card-header header-elements-inline">
						<h6 class="panel-title">
							<button type="button" class="btn btn-primary btn-xlg"
								data-toggle="modal" data-target="#package_modal">
								<i class="icon-plus3 position-left"></i>Add Area
							</button>
						</h6>
					</div>
					

					<table class="table datatable-basic">
						<thead>
							<tr>
							
								<th class="text-center">No.</th>
								
							    <th class="text-center">AreaID</th>
								<th class="text-center">Area</th>
									<th class="text-center">Address</th>	
								<th class="text-center">Edit</th>
								<th class="text-center">Delete</th>
						

							</tr>
						</thead>
						<c:if test="${not empty arealist}">
							<%
								int i = 1;
							%>

							<tbody>
								<c:forEach items="${arealist}" var="list">
									<tr>
							             
										
										<td class="text-center"><%=i%> <%i++;%></td>
										<td class="text-center">${list.areaid}</td>
							             <td class="text-center">${list.areaname}</td>
										<td class="text-center">${list.fullarea}</td>
											<td class="text-center">
											
														<a href="#" onClick="edit(this)" class="dropdown-item"><i
															class="icon-pencil"></i> Edit</a> 
											</td>
											
									<td>	<a href="/Admin/area/delete/${list.areaid}"
														class="dropdown-item"><i class="icon-trash"></i>
															Delete</a>
												
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</c:if>
						</tbody>
					</table>
				</div>
				<!-- /basic datatable -->
			</div>
			<!-- /content area -->
			
			<!-- add Package modal -->
	<div id="package_modal" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Area</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<form action="/Admin/addarea" class="form-horizontal"
					method="post" modelAttribute="area" id="PackageVo">
					<div class="modal-body">

						<div class="form-group row">
							<!-- <label class="col-form-label col-sm-3">Dustbin Type</label>
							<div class="col-sm-9">
								<select type="text" name="" class="form-control">
									<option value="Solid">Solid</option> 
								    <option value="Liquid">Liquid</option> 
									</select>
							</div> -->
							<label class="col-form-label col-sm-3">Area</label>
							<div class="col-sm-9">
								<input type="text" name="areaname"
									placeholder="Area Name" class="form-control"
									required="required">
							</div>
							<label class="col-form-label col-sm-3">Address</label>
							<div class="col-sm-9">
								<input type="text" name="fullarea"
									placeholder="Address" class="form-control"
									required="required">
							</div>
							<!-- <label class="col-form-label col-sm-3">Area</label>
							<div class="col-sm-9">
								<select type="text" name=""  id="" class="form-control">
								
									</select>
							</div> -->
						</div>




					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
						<button type="submit" class="btn bg-primary">Add</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- /add Package modal -->

	<!-- Edit Package modal -->
	<div id="edit_package_modal" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Dustbin</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<form action="/Admin/editArea" class="form-horizontal"
					method="post" modelAttribute="dustbinedit" id="PackageVo">
					<input type="hidden" name="id" id="id">
					<div class="modal-body">

						<div class="form-group row">
							<label class="col-form-label col-sm-3"><!-- Dustbin Type --></label>
							<div class="col-sm-9">
								<input type="hidden" name="type" id=""
									class="form-control"
									required="required">
							</div>
							<label class="col-form-label col-sm-3">Lan</label>
							<div class="col-sm-9">
								<input type="text" name="lan" id=""
									class="form-control"
									required="required">
							</div>
							<label class="col-form-label col-sm-3">Lon</label>
							<div class="col-sm-9">
								<input type="text" name="lon" id=""
									 class="form-control"
									required="required">
							</div>
							<label class="col-form-label col-sm-3">Area</label>
								<div class="col-sm-9">
								<select type="text" name="areaModel.areaid"  id="" class="form-control">
								
									</select>
							</div>				
									</div>




					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
						<button type="submit" class="btn bg-primary">Save</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- /Edit Package modal -->
			
			
			
			
			
			<div class="main-content">
			<!-- MAIN CONTENT-->
			
		</div>
		<!-- END MAIN CONTENT-->
		
	</div>
	<!-- END PAGE CONTAINER-->

	<%@ include file="../footer.jsp"%>
</body>
<script>
	$(document).ready(
			function() {
			/* 	$.ajax({
					type : 'GET',
					url : '/ao/areawise',
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
						$('#arealist1').empty();
						$('#arealist1').html(
								'<option value="">Area</option>');
						for (var i = 0; i < data.length; i++) {
							$('#arealist1').append(
									'<option  value=' + data[i].areaid + '>'
											+ data[i].areaname
											+ '</option>');

						}
					}
				});
 */
				$('.datatable-basic').DataTable().destroy();
				$('.datatable-basic').DataTable(
						{
							lengthMenu : [ [ 10, 15, 25, 35, 50, 100, -1 ],
									[ 10, 15, 25, 35, 50, 100, "All" ] ]
						});

				$('.form-check-input-styled').uniform();
			});

	function edit(row) 
	{
		var crow = $(row).closest('tr');
		var areaid = $(crow).find('td:eq(1)').text();
		var areaname = $(crow).find('td:eq(2)').text();
		var fullarea = $(crow).find('td:eq(3)').text();
		
		$("#areaid1").val(dustbinId);
		$("#areaname1").val(areaname);
		$("#fullarea1").val(fullarea);
		$('#edit_package_modal').modal('show')
	}
</script>
</html>
