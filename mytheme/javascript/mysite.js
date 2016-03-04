(function ( $ ) {
	function touchDevicesTest() {
		if(/KHTML|WebKit/i.test(navigator.userAgent) && ('ontouchstart' in window)) {
			return true;
		}else{
			return false;
		}
	}
	function retinaDevicesTest() {
		return window.devicePixelRatio > 1;	
	}
	$(document).ready(function() {
		/////////////////////////////
		// Detect retina
		/////////////////////////////
		var windowWidth = $(window).width();
		var windowHeight = $(window).height();
		if (retinaDevicesTest()) {
			$('body').addClass('retina');
		} else {
			$('body').removeClass('retina');
		}
		var retina = $('body').hasClass('retina');
		
		///////////////////////
		// Swap out retina images
		///////////////////////
		var images = $('img.hasRetina');
		if (retina) {
			// retina
			images.each(function() {
				var i = $(this);
				if (i.attr('src') != i.attr('data-retina-src')) {
					
					i.attr('data-72-src', i.attr('src'))
					i.attr('src', i.attr('data-retina-src'));
				}
			});
		} else {
			// not retina
			images.each(function() {
				var i = $(this);
				if (i.attr('data-72-src') && i.attr('src') != i.attr('data-72-src')) {
					i.attr('src', i.attr('data-72-src'));
				}
			});
		}
		
		///////////////////////
		// Window size setup
		///////////////////////
		$(window).resize(function() {
			setupForWindowSize();
		});
		setupForWindowSize();
		var touch = $('body').hasClass('touch');
		
		///////////////////////
		// Everything else....
		///////////////////////
		
		// Placeholder forms?
		if (typeof(jQuery.fn.addPlaceholders) === "function") {
			jQuery('input.text, textarea').not('.attributeForm input.text, .attributeForm textarea').addPlaceholders({forceScripted:true});
		}
	});
	
	function setupForWindowSize () {
		var windowWidth = $(window).width();
		var windowHeight = $(window).height();
		// Detect touchscreens, we will also assume that all small devices need touch
		if (touchDevicesTest() || windowWidth < 960) {
			$('body').addClass('touch');
		} else {
			$('body').removeClass('touch');
		}
		var touch = $('body').hasClass('touch');
		var retina = $('body').hasClass('retina');
		// Fix for the slideshow jump on uneven width window sizes
		//var bw = $(window).width();
		//$('html').css('width', bw - (bw % 2));
		
		// Focuspoint?
		if (typeof(jQuery.fn.focusPoint) === "function") {
			if (!$('.focuspoint').data('focusPoint')) {
				$('.focuspoint').focusPoint({
					/*reCalcOnWindowResize: true*/
				});
			} else {
				$('.focuspoint').data('focusPoint').adjustFocus();
			}
		}
	}
	
}( jQuery ));