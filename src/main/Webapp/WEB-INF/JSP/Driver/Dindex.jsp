<!DOCTYPE html>
<html lang="en">

<head>
<title>Dustbin Map</title>
 <%@include file='../head.jsp' %>
     <!-- map -->
    
     <meta name="viewport" content="initial-scale=1.0, 
      width=device-width" />
    <script src="http://js.api.here.com/v3/3.0/mapsjs-core.js" 
      type="text/javascript" charset="utf-8"></script>
    <script src="http://js.api.here.com/v3/3.0/mapsjs-service.js" 
      type="text/javascript" charset="utf-8"></script>
    <script src="http://js.api.here.com/v3/3.0/mapsjs-ui.js" 
      type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" 
      href="http://js.api.here.com/v3/3.0/mapsjs-ui.css" />
      
<script type="text/javascript" src="https://js.api.here.com/v3/3.0/mapsjs-mapevents.js"></script>
      
       
</head>
<body class="animsition">
    <div class="page-wrapper">
        <%@include file='Dsider.jsp' %>



<!-- PAGE CONTAINER-->
        <div class="page-container">

  <%@include file='Dheader.jsp' %>

            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                    <div class="table-data__tool-right">
					             	<button class="au-btn au-btn-icon au-btn--green au-btn--small">
						             	<i class="zmdi zmdi-plus">Find Route</i>
					                	</button>
				                  	</div>
				                  	</br>
                        <div class="row">
                        
                            <div class="col-md-12" >
                                
                                <!-- MAP DATA-->
                                <div class="map-data m-b-40" >
                                    <h3 class="title-3 m-b-30">
                                        <i class="zmdi zmdi-map"></i>Area: ${u.driverModel.areaModel.areaname}</h3>
                                    <!-- <div class="filters">
                                        <div class="rs-select2--dark rs-select2--md m-r-10 rs-select2--border">
                                            <select class="js-select2" name="property">
                                                <option selected="selected">All Properties</option>
                                                <option value="">Products</option>
                                                <option value="">Services</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--dark rs-select2--sm rs-select2--border">
                                            <select class="js-select2 au-select-dark" name="time">
                                                <option selected="selected">All Time</option>
                                                <option value="">By Month</option>
                                                <option value="">By Day</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>-->                                    
                                       <div style="width: 880px; height: 680px; z-index: 10;margin-top: 30px;" id="mapContainer"></div>
                                    
                                </div> 
           
 




                                <!-- END MAP DATA-->
                            </div>
                        </div>

                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

    </div>

 <%@include file='../footer.jsp' %>
       

 <script>
 var map;
  var dustbin;
 $(document).ready(
			function() {

				
				
				 // Initialize the platform object:
				 var platform = new H.service.Platform({
				 'app_id': 'xqUKEdmG8XchfiMf1sjU',
				 'app_code': 'ZP9Ik3XFQUx7s854x9Kwkg'
				 });

				$.ajax({
					type : 'GET',
					url : '/dustbin/getdata/lanlon',
					dataType : "json",
					success : function(data) {
						console.log(data);
						var targetElement = document.getElementById('mapContainer');

						 // Get the default map types from the Platform object:
						var defaultLayers = platform.createDefaultLayers();

						// Instantiate the map:
						 map = new H.Map(
						 document.getElementById('mapContainer'),
						 defaultLayers.normal.map,
						 {
						   zoom: 17,
						   center: { lng:data[0].lon , lat:data[0].lan  }
						 
						 });
						 
						 var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));

						
						// Create the default UI:
						var ui = H.ui.UI.createDefault(map, defaultLayers);

						//Create a marker icon from an image URL:
						var icon = new H.map.Icon('/images/icon/dustbin1.png');
						
						for (var i = 0; i < data.length; i++) {
							
							var lan=data[i].lan;
							var lon=data[i].lon;
							var dustbinAreaid=data[i].areaModel.areaid;
							if(dustbinAreaid== ${u.driverModel.areaModel.areaid}){
					        var marker2 = new H.map.Marker({ lat:lan, lng: lon}, { icon: icon });
					        map.addObject(marker2);
					        
					     // Create an info bubble object at a specific geographic location:
					        var bubble = new H.ui.InfoBubble({ lng:data[i].lon , lat:data[i].lan }, {
					                content: ''+data[i].id+'|'+data[i].type+'|'+data[i].status+'%'
					               });

					        // Add info bubble to the UI:
					        ui.addBubble(bubble);
							}
					        //..........
												      //route
					     // Create the parameters for the routing request:
					   //  var s="'mode': 'fastest;car','waypoint0': '23.013735,72.508476', 'waypoint1': '23.000000,72.500000', 'waypoint2': '23.013845,72.608598','representation': 'display'";	
					   
					    var jsonData = {};
					    var columnName = 'mode';
				        jsonData[columnName] = 'fastest;car';
				        
					   for (var j = 0; j < data.length; j++) {
							
						//  if(data[j].status>75){
							var lan=data[j].lan;
							var lon=data[j].lon;
							 var columnName = 'waypoint'+j;
						        jsonData[columnName] = lan+","+lon;
						 // }     
	//						text+="waypoint"+i+": '"+lan+","+lon+",'";
						} 
					   var columnName2 = 'representation';
				        jsonData[columnName2] = 'display';
				       
						console.log(JSON.stringify(jsonData))
				        //text+="representation: 'display'";
						//var obj2={text}
						//var obj = JSON.parse(text);
						var routingParameters = {
					       // The routing mode:
					       'mode': 'fastest;car',
					       // The start point of the route:
					    	  'waypoint0': '23.013735,72.508476',
					      // 'waypoint0': '23.013735,72.508476',
					       // The end point of the route:
					       'waypoint1': '23.000000,72.500000',
					       //'waypoint3': '23.119745,72.507498',
					       
					       'waypoint2': '23.013845,72.608598',
					       // To retrieve the shape of the route we choose the route
					       // representation mode 'display'
					       'representation': 'display'
					     };
		//alert(routingParameters.mode)
					     // Define a callback function to process the routing response:
					     var onResult = function(result) {
					       var route,
					         routeShape,
					         startPoint,
					         endPoint,
					         linestring;
					       
					       if(result.response.route) {
					       // Pick the first route from the response:
					       route = result.response.route[0];
					       // Pick the route's shape:
					       routeShape = route.shape;

					       // Create a linestring to use as a point source for the route line
					       linestring = new H.geo.LineString();

					       // Push all the points in the shape into the linestring:
					       routeShape.forEach(function(point) {
					         var parts = point.split(',');
					         linestring.pushLatLngAlt(parts[0], parts[1]);
					       });

					       // Retrieve the mapped positions of the requested waypoints:
					       startPoint = route.waypoint[0].mappedPosition;
					       endPoint = route.waypoint[j-1].mappedPosition;
					      

					       // Create a polyline to display the route:
					       var routeLine = new H.map.Polyline(linestring, {
					         style: { strokeColor: 'blue', lineWidth: 5 }
					       });

					       // Create a marker for the start point:
					       var startMarker = new H.map.Marker({
					         lat: startPoint.latitude,
					         lng: startPoint.longitude
					       });

					       // Create a marker for the end point:
					       var endMarker = new H.map.Marker({
					         lat: endPoint.latitude,
					         lng: endPoint.longitude
					       });

					       // Add the route polyline and the two markers to the map:
					       map.addObjects([routeLine,endMarker]);

					       // Set the map's viewport to make the whole route visible:
					       map.setViewBounds(routeLine.getBounds());
					       }
					     };

					     // Get an instance of the routing service:
					     var router = platform.getRoutingService();

					     // Call calculateRoute() with the routing parameters,
					     // the callback and an error callback function (called if a
					     // communication error occurs):
					     router.calculateRoute(jsonData, onResult,
					       function(error) {
					         alert(error.message);
					       });
 					}
					}
				});
				
				
				$.ajax({
					type : 'GET',
					url : '/notification/get',
					dataType : "json",
					success : function(data) {
						console.log(data);

						$('#notificationIcon').empty();
                        
						for (var i =data.length- 3; i<data.length; i++) {
							//alert(data[i].dustbinModel.status);
						  if(data[i].dustbinModel.areaModel.areaid == ${u.driverModel.areaModel.areaid}){
					    
							$('#notificationIcon').append('<div class="notifi__item"><div class="bg-c1 img-cir img-40"><i class="fa fa-trash"></i></div><div class="content"><p>'+data[i].status+'%-'+data[i].dustbinModel.id+'-'+data[i].dustbinModel.type+'-'+data[i].dustbinModel.areaModel.areaname+''+'</p><span class="date">'+data[i].date+'</span></div></div>');
						  }
						}
						
					}
				});

				
	});

  </script>

</body>

</html>
<!-- end document-->