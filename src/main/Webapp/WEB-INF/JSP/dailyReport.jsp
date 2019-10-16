
<!-- DATA TABLE-->
<section class="p-t-20">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="title-5 m-b-35">Daily Report</h3>
				<div class="table-data__tool">
					<div class="table-data__tool-left">
						<div class="rs-select2--light rs-select2--md">
							<select class="js-select2" name="property" id="arealist">
							
							</select>
							<div class="dropDownSelect2"></div>
						</div>
					</div>
					<!-- <div class="table-data__tool-right">
						<button class="au-btn au-btn-icon au-btn--green au-btn--small">
							<i class="zmdi zmdi-plus"></i><a href="odriform">add Driver</a>
						</button>
					</div> -->
				</div>
				<div class="table-responsive table-responsive-data2">
					<table class="table table-data2" id="myTable">
						<thead>
							<tr>
								<th style="display:none">aid</th>
								<th>Id</th>
								<th>Date/Time</th>
								<th>Status</th>
								<th>DustbinId</th>

								<th>Type</th>
								 <th>Area</th>
								




							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${DaliyReportList}">
								<tr class="tr-shadow">
									 <td style="display:none">${list.dustbinModel.areaModel.areaid}</td>
									 <td>${list.dayid}</td>
								     <td>${list.date}</td>
									<td>${list.status}%</td>

									<td>${list.dustbinModel.id}</td>

									<td>${list.dustbinModel.type}</td>
								  <td style="display:">${list.dustbinModel.areaModel.areaname}</td>
									

									<%-- <td>
										<div class="table-data-feature">
											<form action="/Admin/editDriver/${driadd.id}">
												<button class="item" data-toggle="tooltip"
													data-placement="top" title="Edit">
													<i class="zmdi zmdi-edit"></i>
												</button>
											</form>
											<form action="/Admin/deleteDriver/${driadd.id}">
												<button type="submit" class="item" data-toggle="tooltip"
													data-placement="top" title="Delete">
													<i class="zmdi zmdi-delete"></i>
												</button>
											</form>
										</div>
									</td> --%>
								</tr>
							</c:forEach>



						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END DATA TABLE-->




