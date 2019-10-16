
<!-- DATA TABLE-->
<section class="p-t-20">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="title-5 m-b-35">Driver Details</h3>
				<div class="table-data__tool">
					<div class="table-data__tool-left">
						<div class="rs-select2--light rs-select2--md">
							<select class="js-select2" name="property" id="arealist">
							
							</select>
							<div class="dropDownSelect2"></div>
						</div>
					</div>
					<div class="table-data__tool-right">
						<button class="au-btn au-btn-icon au-btn--green au-btn--small">
							<i class="zmdi zmdi-plus"></i><a href="odriform">add Driver</a>
						</button>
					</div>
				</div>
				<div class="table-responsive table-responsive-data2">
					<table class="table table-data2" id="myTable">
						<thead>
							<tr>
								<th style="display: none">aid</th>
								<th>Id</th>
								<th>Photo</th>
								<th>Name</th>
								<th>Address</th>

								<th>Contact</th>
								<th>Email</th>

								<th>Area</th>


								<th>Operation</th>





							</tr>
						</thead>
						<tbody id="areawiserow">
							<c:forEach var="driadd" items="${drilist}">
								<tr class="tr-shadow">
									<td style="display: none">${driadd.areaModel.areaid}</td>
									<td>${driadd.id}</td>
									<td><img
										src=" <%=request.getContextPath() %>/images/photo/${driadd.img}"
										width=50px height=50px></td>
									<td>${driadd.drifname}</td>
									<td>${driadd.driaddress}</td>

									<td>${driadd.dricontact}</td>

									<td>${driadd.driemail}</td>
									<td>${driadd.areaModel.areaname}</td>


									<td>
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
									</td>
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




