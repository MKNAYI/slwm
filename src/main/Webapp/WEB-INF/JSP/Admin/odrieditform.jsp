<html>
<head>
<title>Edit Driver</title>
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

                 <!-- Aoform start -->
                 <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <!--ofrom done  -->
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Edit Driver</strong> 
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="/Admin/editdriver" method="post" enctype="multipart/form-data" class="form-horizontal">
                                        
                                         	<div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label"></label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="txtname"  style="display:none" name="id" value="${drilist.id}" placeholder="" class="form-control">
                                                  </div>
                                            </div>
                                            
                                            	<div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label"></label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="txtname"  style="display:none" name="id" value="${drilist.img}" placeholder="" class="form-control">
                                                  </div>
                                            </div>
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">First Name:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="txtname" name="drifname" value="${drilist.drifname}" placeholder="" class="form-control">
                                                  </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Middle Name:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="txtname" value="${drilist.driname}" name="driname" placeholder=""  class="form-control">
                                                  </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Last Name:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="txtname" value="${drilist.drilname}" name="drilname" placeholder="" class="form-control">
                                                  </div>
                                            </div>
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">Address:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <textarea name="driaddress"  id="txtadd" rows="9" placeholder="" class="form-control">${drilist.driaddress}</textarea>
                                                </div>
                                            </div>
                                             <div class="row form-group">
                                               
                                                <div class="col-12 col-md-9">
                                                    <input type="date" id="txtbdate" value="${drilist.dridob}"style="display:none" name="dridob" placeholder="" class="form-control">
                                                   </div>
                                            </div>
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Contact:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="email-input" value="${drilist.dricontact}" name="dricontact" placeholder="" class="form-control">
                                                   
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Email:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="email-input" value="${drilist.driemail}" name="driemail" placeholder="" class="form-control">
     
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                               
                                                <div class="col-12 col-md-9">
                                                    <input type="date" id="email-input" style="display:none" value="${drilist.drijdate}" name="opjdate" placeholder="" class="form-control">
                                                   
                                                </div>
                                            </div>
                                          
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="selectLg" class=" form-control-label">Area:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                     <select name="areaModel.areaid" id="arealist" class="form-control-lg form-control">
                                                        <option value="${drilist.areaModel.areaid}">${drilist.areaModel.areaname}</option>
                                                       
                                                    </select> 
                                                </div>
                                            </div>
                                           
                                             <!-- <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="file-input" class=" form-control-label">Photo:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="file" id="txtphoto" name="ophoto" class="form-control-file">
                                                </div>
                                            </div> -->
                                      
                                             <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Update
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                        </form>
                                    </div>
                                   
                                </div>
                               
                            </div>
                            <!-- end ofrom.. done -->
                        </div>
                        </div>
                       
                    </div>
                </div>
                 <!--  Aoform end -->
			</div>
			<!-- END MAIN CONTENT-->


			<!-- END PAGE CONTAINER-->
		</div>

	</div>
	
	<%@ include file="../footer.jsp"%>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript">
		$(document).ready(
				function() {
					
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



				});
	
		
	</script>

	

	
	 
 
</body>

</html>