

<!-- ******************** GRID DEV ************************
*********************************************************** -->



 <!--  THIS IS JAVASCRIPT FOR DYNAMICALLY RESIZING FONTS ON TABLET & MOBILE -->
 <!--  YOU MUST INCLUDE THIS FOR FONTS TO RESIZE PROPERLY ON TABLET AND MOBILE-->
<script>
	var gridWrapper = $('.grid-wrapper');
	var gridContent = $('.grid-content');
	var maxGidWidth = 1024; // Base value that we design for

	// Recalculate the size of the text on the page when the window size changes
	function windowResize(){
		// Get the width of the grid after the resize
		var width = gridWrapper.width();

		if (width > 768 ){ 	// We're in full desktop layout
			maxGidWidth = 1024;
		}else{			// We're in mobile layout
			maxGidWidth = 512;
		}

		// iPhone goes to 320 but we stop shrinking the font at 340
		// to keep the text slightly larger and more readable.
		if (width < 340) width = 340;

		// Scale the font size of the grid to a percentage of the original size. 
		gridContent.css( "fontSize", ( (width/maxGidWidth) * 100 ) + "%" );
	}

	// Run windowResize() whenever the window width changes.
	window.addEventListener( "resize", windowResize, false );

	// Resize right away on startup.
	$( document ).ready(function() {  windowResize();  });
</script>  
 <!--  END OF JAVASCRIPT FOR DYNAMICALLY RESIZING FONTS ON TABLET & MOBILE -->


<!-- THIS IS CODE FOR TOGGLING THE GRID SIZE DURING DEVELOPMENT -->
<!-- ************    REMOVE WHEN SENDING TO PRODUCTION   ************ -->
<ul id="select-grid-width">
	<li state="#mobile" id="select-mobile">	Mobile 		</li>
	<li state="#tablet" id="select-tablet">	Tablet 		</li>
	<li state="#848" id="select-dept">		Department	</li>
	<li state="#1024" id="select-hp">		Homepage	</li>

</ul>

<svg id="send-to-production" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve"> <path id="share-4-icon" d="M134.021,328.384c36.645-159.582,219.143-196.722,219.143-196.722V82.534L462,191.191l-108.836,108.66
v-49.129C353.164,250.723,212.039,244.849,134.021,328.384z M354.049,348.426v40.028H91.01V218.083h57.562
c11.502-14.814,24.562-28.487,38.979-41.011H50v252.394h345.059V307.482L354.049,348.426z"></path> </svg>

<div id="prod-wrapper">
	<textarea id="prod-text"></textarea>
</div>

<style>
#send-to-production{
	position: fixed;
	top: 1px;
	right: 10px;
	width: 30px;
	height: 30px;
	fill: white;
	z-index: 10000;
	cursor: pointer;
}

#prod-wrapper{
	display: none;
	background: rgba(0,0,0,0.8);
	position: fixed;
	top: 37px;
	bottom: 0px;
	left: 0;
	width: 100%;
	z-index: 10000;
}
#prod-wrapper textarea{
	position: absolute;
	top: 10%;
	left: 10%;
	height: 80%;
	width: 80%;
    outline: none;

}

</style>

<script>
/*	
	This code makes it easy for the developer to see their page in 
	multiple different states and widths while they're developing it.
	If there isn't a hash tag in the URL it will check to see what the
	default class size is and set the hash tag. If there is a hash tag
	it will use that to set the page to that state.

	*******    REMOVE WHEN SENDING TO PRODUCTION   *******
*/
$( document ).ready(function() {


	$('#send-to-production').click(function(e){

		$('.grid-content').removeAttr("style");

		$('#prod-wrapper').fadeIn();
		var images = $('.grid-wrapper img');
		for (var i = 0; i < images.length; ++i){
			console.log('sub string' + images[i].getAttribute('src').substring(0, 7) );
			if (images[i].getAttribute('src') && images[i].getAttribute('src').substring(0, 7) == "images/" ){
				images[i].src = images[i].getAttribute('src').replace("images/", "http://media.kohls.com.edgesuite.net/is/image/kohls/");
				images[i].src = images[i].src.replace(".jpg", "?scl=1&fmt=pjpeg&qlt=40,1");
				images[i].src = images[i].src.replace(".png", "?scl=1&fmt=png-alpha");
				console.log(images[i].src);
			}
		}
		$('#prod-text').val('');

		var gridWrappers =  $('.grid-wrapper');
		for (var k = 0; k < gridWrappers.length; ++k){
			$('#prod-text').val($('#prod-text').val() + "\n" + gridWrappers[k].outerHTML );
		}


	});

	$('#prod-wrapper').click(function(e){
		$('#prod-wrapper').fadeOut();
	});

	$('#prod-text').click(function(e){
		e.preventDefault();
		e.stopPropagation();
	});


	// Get the mobile css dev path so we can load and unload it for different states
	var mobileDevCss = $('#mobile-dev-css').attr('href');

	if ( location.hash  == "") {
		/* IF THE HASH IS EMPTY, SET IT */
		if ( $('.grid-wrapper').hasClass('grid-wrapper-848') ){
			gotoDept();
		}else if ( $('.grid-wrapper').hasClass('grid-wrapper-1024') ){
			gotoHP();
		}else if ( $('.grid-wrapper').hasClass('grid-wrapper-tablet') ){
			gotoTablet();
		}else if ( $('.grid-wrapper').hasClass('grid-wrapper-mobile') ){
			gotoMobile();
		}else{
			gotoState("#1024");
		}

	}else{
		/*  ELSE, GET IT AND USE IT   */
		gotoState(location.hash);
	}
	
	/*  CLICK EVENTS FOR CHANGING STATE  */
	$('#select-grid-width li').click(function(e){
		$('#select-grid-width .active').removeClass('active');
		gotoState( e.target.getAttribute('state') );
	});

	function gotoState(stateName){
		if 	(stateName == "#848"){		gotoDept();
		}else if (stateName == "#1024"){		gotoHP();
		}else if (stateName  == "#tablet"){		gotoTablet();
		}else if (stateName  == "#mobile"){		gotoMobile();
		}
	}

	function gotoMobile(){
		$('body').addClass('hide-kohls');
		removeAllDevClasses();
		loadMobileCSS();
		$('.grid-wrapper').addClass('grid-wrapper-mobile');
		location.hash = "mobile";
		$('#select-mobile').addClass('active');
		windowResize();
	}

	function gotoTablet(){
		$('body').addClass('hide-kohls');
		removeAllDevClasses();
		removeMobileCSS();
		$('.grid-wrapper').addClass('grid-wrapper-tablet');
		location.hash = "tablet";
		$('#select-tablet').addClass('active');
		windowResize();
	}

	function gotoDept(){
		$('body').removeClass('hide-kohls');
		removeAllDevClasses();
		removeMobileCSS();
		$('.grid-wrapper').addClass('grid-wrapper-848');
		location.hash = "848";
		$('#select-dept').addClass('active');
		windowResize();
	}

	function gotoHP(){
		$('body').removeClass('hide-kohls');
		removeAllDevClasses();
		removeMobileCSS();
		$('.grid-wrapper').addClass('grid-wrapper-1024');
		location.hash = "1024";
		$('#select-hp').addClass('active');
		windowResize();
	}

	function removeAllDevClasses(){
		$('.grid-wrapper').removeClass('grid-wrapper-848');
		$('.grid-wrapper').removeClass('grid-wrapper-1024');
		$('.grid-wrapper').removeClass('grid-wrapper-tablet');
		$('.grid-wrapper').removeClass('grid-wrapper-mobile');
	}

	function loadMobileCSS(){
		// ADD MOBILE CSS IF IT ISN'T LOADED
		if ( ! $("link[href='" + mobileDevCss + "']").length > 0 ){
			var head  = document.getElementsByTagName('body')[0];
			var link  = document.createElement('link');
			link.rel  = 'stylesheet';
			link.type = 'text/css';
			link.href = mobileDevCss;
			head.appendChild(link);
		}
	}

	function removeMobileCSS(){
		$("link[href='" + mobileDevCss + "']").remove();
	}

	// $.get("css/gridcss-desktop.css", function(cssContent){
	//     console.log("My CSS = " + cssContent);
	// });
} );
</script>

<!-- ****************** ABSOLUTE HREF PLUGIN ****************** 
http://kohlscorporation-dev/z-digital-marketing-wiki/index.html#/absolute-href-plugin
*********************************************************** -->
<script src="http://kohlscorporation-dev/z-digital-marketing-wiki/boilerplate-landing-page/js/absolute-href-plugin.js"></script>


<!-- ***************** ALT ATTRIBUTE INSPECTOR *****************
http://kohlscorporation-dev/z-digital-marketing-wiki/index.html#/alt-tag-inspector
************************************************************ -->
<script src="http://kohlscorporation-dev/z-digital-marketing-wiki/alt-tag-inspector-plugin/alt-attribute-inspector.js"></script>