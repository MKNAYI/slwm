<!DOCTYPE html>
<html lang="en">

<head>
<title>Oprator</title>
 <%@include file='head.jsp' %>
       
</head>
<body class="animsition">
    <div class="page-wrapper">
        <%@include file='Osider.jsp' %>
        <!-- PAGE CONTAINER-->
        <div class="page-container2">
        <%@include file='Oheader.jsp' %>
           

<!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Dustbin</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="/odust" method="post" enctype="multipart/form-data" class="form-horizontal">
                                            
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="selectLg" class=" form-control-label">Type:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select name="type" id="txtarea" class="form-control-lg form-control">
                                                        <option value="0">Please select</option>
                                                        <option value="1">Solid</option>
                                                        <option value="2">Liquid</option>
                                                    
                                                    </select>
                                                </div>
                                            </div>
                                           
                                             <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Location:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="email-input" name="lan" placeholder="Enter lan" class="form-control">
                                                    <br>

                                                    <input type="text" id="email-input" name="lon" placeholder="Enter lon" class="form-control">
                                                    <small class="help-block form-text">Please enter location</small>
                                                </div>
                                            </div>
                                           
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="selectLg" class=" form-control-label">Area:-</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select name="Area" id="txtarea" class="form-control-lg form-control">
                                                        <option value="0">Please select</option>
                                                        <c:forEach var="loc" items="${loclist}">
                                                         <option value="${loc.area}">${loc.area}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                 <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i>Add
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                                
                                            </div>
                                           
                                            
                                        </form>
                                    </div>
                                                                   </div>
                               
                            </div>
                           
                        </div>
                      </div>
                </div>
            </div>
       <!-- MAIN CONTENT End-->   

              
           
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

 <%@include file='footer.jsp' %>
       

</body>

</html>
<!-- end document-->