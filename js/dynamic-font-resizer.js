(function($) {

'use strict';

////////////////////////////////////////////////////////
///////////////// DYNAMIC FONT RESIZER /////////////////
////////////////////////////////////////////////////////
	// Recalculate the size of the text on the page when the window size changes
	function windowResize(){

		var gridWrapper = $('.grid-wrapper'),
			gridContent = $('.grid-content'),
			maxGidWidth = 1024, // Base value that we design for
			width 		= gridWrapper.width(); // Get the width of the grid after the resize

		if ( width > 768 ){ 	// We're in full desktop layout
			maxGidWidth = 1024;
		} else {			// We're in mobile layout
			maxGidWidth = 512;
		}

		// iPhone goes to 320 but we stop shrinking the font at 340
		// to keep the text slightly larger and more readable.
		if ( width < 340 ) width = 340;

		// Scale the font size of the grid to a percentage of the original size. 
		gridContent.css( 'fontSize', ( (width/maxGidWidth) * 100 ) + '%' );
	}

	// Run windowResize() whenever the window width changes.
	window.addEventListener( 'resize', windowResize, false );

	// Resize right away on startup.
	$( document ).ready(function() {  windowResize();  });



})(jQuery);