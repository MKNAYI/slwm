/**
 * This File is For Bank New
 * Bank Validation
 */

$(document).ready(function(){
	
	$("#driverform").formValidation({
		framework : 'bootstrap',
		excluded : ":disabled",
		button:{
			selector : "#driverAdd",
			disabled : "disabled",
		},
		icon : null,
		fields : {
			drifname:{
				validators: {
					notEmpty : {
						message : 'The first name is required. '
					},
					stringLength : {
						max : 50,
						message : 'The first name must be less than 50 characters long. '
					},
					regexp : {
						regexp : /^[a-zA-Z_-\s-., ]+$/,
						message : 'The first name can only consist of alphabetical. '
					}
				}
			},
			
			driname:{
				validators: {
					notEmpty : {
						message : 'The name is required. '
					},
					stringLength : {
						max : 50,
						message : 'The Name must be less than 50 characters long. '
					},
					regexp : {
						regexp : /^[a-zA-Z0-9_-\s-., ]+$/,
						message : 'The Name can only consist of alphabetical, number and underscore. '
					}
				}
			},
			drilname:{
				validators: {
					notEmpty : {
						message : 'The Last name is required. '
					},
					stringLength : {
						max : 50,
						message : 'The Last name must be less than 50 characters long. '
					},
					regexp : {
						regexp : /^[a-zA-Z0-9_-\s-., ]+$/,
						message : 'The Last name can only consist of alphabetical. '
					}
				}
			},
			
			driaddress:{
				validators: {
					notEmpty : {
						message : 'The Address  is required. '
					},
					stringLength : {
						max : 60,
						message : 'The Address must be less than 60 characters long. '
					},
					regexp : {
						regexp : /^[a-zA-Z0-9_-\s-., ]+$/,
						message : 'The Address can only consist of alphabetical, number and underscore. '
					}
				}
			},
			
			dricontact:{
				validators: {
					notEmpty : {
						message : 'The contact is required. '
					},
					stringLength : {
						max : 10,
						message : 'The contact must be less than 50 characters long. '
					},
					regexp : {
						regexp : /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/,
						message : 'The contact can only consist of number. '
					}
					
				}
			},
			driemail:{
				validators: {
					notEmpty : {
						message : 'The Email is required. '
					},
					
				}
			},
			
			dridob:{
				validators: {
					notEmpty : {
						message : 'The D-O-B is required. '
					},
					
				}
			},
			drijdate:{
				validators: {
					notEmpty : {
						message : 'The joing Date is required. '
					},
					
				}
			},
		}
	});
	
});