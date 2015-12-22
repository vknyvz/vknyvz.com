'use strict';

/**
 * @ngdoc function
 * @name vApp.controller:MainController
 * @description
 * # MainCtrl
 * Controller of the vApp
 */
angular.module('vApp').controller('MainController', [
	'$scope', '$http', 
	function ($scope, $http) {
		$http.get("http://www.api.com/get/profile")
	    	.then(function(response) {
	    		$scope.profile = response.data.html;	    	
	    });	
		
		$http.get("http://www.api.com/get/skill")
    		.then(function(response) {
    			$scope.skill = response.data.html;	    	
    	});	
		
		$http.get("http://www.api.com/get/work")
    		.then(function(response) {
    			$scope.work = response.data.html;	    	
    	});
		
		var control = "element1";
		
		$(".menu li a").click(function(){
			$(".menu li a").removeClass("activo");
			$(this).addClass("activo");					 
			var active = $(this).attr("id");
			if(control!=active){
			$("."+control).fadeOut(function(){
				$("."+active).fadeIn(1000);
				control= active;
				});			
			}});
		
		 $(".soc a").mouseover(function(){
	     		$(this).animate({
				    marginTop: "-5px"
				   }, 500, function() {
				  });

	     	});
	    
	     $(".soc a").mouseout(function(){
	     		$(this).animate({
				    marginTop: "-95px"
				   }, 500, function() {
				  });

	     	});
	    
	     var cont = 0;
			$(".top").mouseover(function(){
				$('.top').animate({
					 marginTop: '-=1'
					  }, 70, function() {
					  });

				});
				
				$(".top").mouseout(function(){
				$('.top').animate({
					 marginTop: '+=1'
					  }, 70, function() {
					  });

				});
			$(".top").click(function(){
				if(cont==0){
				$('.info').animate({
					 marginTop: '-=250'
					  }, 700, function() {
					  });
				cont=1;
				}else if(cont==1){
				$('.info').animate({
					 marginTop: '+=250'
					  }, 700, function() {
					  });
					  cont=0;
				}
				});

	}
]);