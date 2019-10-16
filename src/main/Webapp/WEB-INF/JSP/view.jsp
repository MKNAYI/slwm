<html>
<head>
<title></title>
<%@ include file="head.jsp"%>

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
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>View</strong> 
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="/wdemo" method="post" ModelAttribute="operator" enctype="multipart/form-data" class="form-horizontal">
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">First Name:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <label for="email-input" class=" form-control-label">Mayur</label>
                                                  </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Middle Name:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <label for="email-input" class=" form-control-label">hjvj</label>
                                                  </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Last Name:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <label for="email-input" class=" form-control-label">jhgg</label>
                                                  </div>
                                            </div>
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">Address:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                   <label for="email-input" class=" form-control-label">kjbksdbsdds</label>
                                                </div>
                                            </div>
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">D-O-B:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <label for="email-input" class=" form-control-label">12/02/1987</label>
                                                   </div>
                                            </div>
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Contact:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <label for="email-input" class=" form-control-label">9865887985</label>
                                                   
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Joining Date:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                   <label for="email-input" class=" form-control-label">12/06/2018</label>
                                                   
                                                </div>
                                            </div>
                                           
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="selectLg" class=" form-control-label">Area:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <label for="email-input" class=" form-control-label">patan</label>
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
                                            <i class="fa fa-dot-circle-o"></i> back
                                        </button>
                                        
                                    </div>
                                        </form>
                                    </div>
                                   
                                </div>
                               
                            </div>
                            <!-- end ofrom.. done -->
                            <!-- location -->
                      
                        </div>
                       
                    </div>
                </div>
                 <!--  Aoform end -->
			</div>
			<!-- END MAIN CONTENT-->


			<!-- END PAGE CONTAINER-->
		</div>

	</div>

	<%@ include file="footer.jsp"%>
	
 
</body>

</html>