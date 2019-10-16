<html>
<head>
<title>Apply Leave</title>
<%@ include file="../head.jsp"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
		<%@include file="Dsider.jsp"%>
		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<%@include file="Dheader.jsp"%>

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
									<i class="icon-plus3 position-left"></i>Apply Leave
								</button>
							</h6>
						</div>


						<table class="table datatable-basic">
							<thead>
								<tr>

									<th class="text-center">No</th>

									<th class="text-center">To</th>
									<th class="text-center">From</th>
									<th class="text-center">Reason</th>
									<th class="text-center">Status</th>

									

								</tr>
							</thead>
							 <tr class="tr-shadow">
									<td class="text-center">1</td>
									<td class="text-center">04/22/2019</td>
									<td class="text-center">04/25/2019 </td>

									<td class="text-center">health  Not Good.</td>
                                     <td class="text-center">Pending</td>
                              </tr>
 <%-- 							<c:if test="${LeaveList}">
								<%
									int i = 1;
								%>

								<tbody>
									<c:forEach items="${LeaveList}" var="list">
										<tr>

											<td class="text-center"><%=i%> <%i++;%></td>
							
											<td class="text-center">${list.to}</td>
											<td class="text-center"><a href="" onClick="edit(this)"
												class="dropdown-item"><i class="icon-pencil"></i> Edit</a></td>
											<td><a href="" class="dropdown-item"><i
													class="icon-trash"></i> Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</c:if> --%>
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
								<h5 class="modal-title">Apply Leave</h5>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<form action="/Driver/ApplyLeave" class="form-horizontal" method="post"
								modelAttribute="" id="PackageVo">
								<div class="modal-body">

									<div class="form-group row">
										<label class="col-form-label col-sm-3">To</label>
										<div class="col-sm-9">
										<input type="date" name="to" id="" class="form-control"required="required">
									
										</div>
									</div>
										<div class="form-group row">
										<label class="col-form-label col-sm-3">from</label>
										<div class="col-sm-9">
										<input type="date" name="from" id="" class="form-control"required="required">
									</div>
									</div>
									<div class="form-group row">
										<label class="col-form-label col-sm-3">Reason</label>
										<div class="col-sm-9">
										<input type="text" name="reason" id="" class="form-control"required="required">
									    </div>
									</div>
								<!-- 	<div class="form-group row">
										<label class="col-form-label col-sm-3">driver</label>
										<div class="col-sm-9">
										<input type="text" name="driverModel.id" id="" value="${u.driverModel.id}"class="form-control"required="required">
									    </div>
									</div> -->
								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
									<button type="submit" class="btn bg-primary">Apply</button>
								</div>

							</form>
						</div>
					</div>
				</div>
				<!-- /add Package modal -->

<!-- 				Edit Package modal
				<div id="edit_package_modal" class="modal fade" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Edit Dustbin</h5>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<form action="" class="form-horizontal" method="post"
								modelAttribute="dustbinedit" id="PackageVo">
								<input type="text" name="id" id="id">
								<div class="modal-body">

									<div class="form-group row">
										<label class="col-form-label col-sm-3">
											Dustbin Type
										</label>
										<div class="col-sm-9">
											<input type="text" name="type" id="" class="form-control"
												required="required">
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
				/Edit Package modal
 -->




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
				$.ajax({
					type : 'GET',
					url : '/ao/areawise',
					dataType : "json",
					success : function(data) {
						console.log(data);

						$('#arealist').empty();
						$('#arealist').html('<option value="">Area</option>');
						for (var i = 0; i < data.length; i++) {
							$('#arealist').append(
									'<option  value=' + data[i].areaid + '>'
											+ data[i].areaname + '</option>');

						}
						$('#arealist1').empty();
						$('#arealist1').html('<option value="">Area</option>');
						for (var i = 0; i < data.length; i++) {
							$('#arealist1').append(
									'<option  value=' + data[i].areaid + '>'
											+ data[i].areaname + '</option>');

						}
					}
				});

				$('.datatable-basic').DataTable().destroy();
				$('.datatable-basic').DataTable(
						{
							lengthMenu : [ [ 10, 15, 25, 35, 50, 100, -1 ],
									[ 10, 15, 25, 35, 50, 100, "All" ] ]
						});

				$('.form-check-input-styled').uniform();
			});

	function edit(row) {
		/* 	var crow = $(row).closest('tr');
			var dustbinId = $(crow).find('td:eq(2)').text();
			var type = $(crow).find('td:eq(3)').text();
			var lan = $(crow).find('td:eq(4)').text();
			var lon = $(crow).find('td:eq(5)').text();
			var area = $(crow).find('td:eq(6)').text();
		
			$("#id").val(dustbinId);
			$("#type").val(type);
			$("#lan").val(lan);
			$("#lon").val(lon);
			$("#area").val(area);
			$('#edit_package_modal').modal('show') */
	}
</script>
</html>
