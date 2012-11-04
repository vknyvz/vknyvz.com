var control = "element1";
$(document).ready(function() {
	
						    Cufon.replace('h1', {fontWeight: '400',fontFamily: 'Yanone Kaffeesatz'});
						     Cufon.replace('#menu li a', {fontWeight: '400', hover:true, fontFamily: 'Yanone Kaffeesatz'});
						     Cufon.replace('h2', {fontWeight: '400', hover:true, fontFamily: 'Journal'});
						     Cufon.replace('.left h2', {fontWeight: '400',fontFamily: 'Yanone Kaffeesatz'});
						     Cufon.replace('h3', {fontWeight: '400',fontFamily: 'Yanone Kaffeesatz'});
						  $(".menu li a").click(function(){
									$(".menu li a").removeClass("activo");
									$(this).addClass("activo");					 
									var active = $(this).attr("id");
									if(control!=active){
									$("."+control).fadeOut(function(){
																	$("."+active).fadeIn(1000);
																	control= active;
																	});
									
									}
									  });

							 
						     //Animate social button
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
						    
					$("a[rel='example1']").colorbox();
					
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
										   
});

