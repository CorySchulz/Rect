<!--#include virtual="/includes/landing-pages/current/head.asp"-->


<!--#include virtual="/GridFramework/v0.4/grid-styles.asp"-->


<!-- ***********************************************************
NOTE: REMOVE THIS COMMENT BLOCK AND EVERYTHING ABOVE BEFORE
SENDING TO PRODUCTION.
*********************************************************** -->



<!-- ****************** OPTIONAL MODERNIZR ********************
1. Use the Development version to develop with and learn from. 
<script src="http://modernizr.com/downloads/modernizr-latest.js"></script>

2. Then, when you're ready for production, use the build tool to pick only the tests you need. http://modernizr.com/download/
*********************************************************** -->



<!-- ********************** YOUR STYLES ***********************
Your beggining stylesheet.
*********************************************************** -->
<link rel="stylesheet" href="css/styles.css" type="text/css" media="screen" charset="utf-8"/>



<!-- ********************* BEGIN MARKUP ***********************
*********************************************************** -->


<!-- 	The entire grid is wrapped in a grid-wrapper and inside of that is the
	grid-content div that contains all of the blocks in the grid.
	The grid is split into 16 columns and they can be divided up however you want. -->
<div class="creative-slot grid-wrapper">
<div class="grid-content">

	<!--  	You can declare the size of the box by changing the css class values.
		A class like d8x8 will give you a square block that's half the
		width of the page. 
		d8x8 = d(desktop) 	8 (width) x 8 (height)

		Mobile classes can be added to change how the block will look
		on a mobile device:
		m8x4 = m(mobile) 	8 (width) x 4 (height) -->
	<div class="grid-box d8x8 m8x8">
		<div class="box-content d-border-br">
			<!-- Use the 'box-bg-image' class to set the b -->
			<img src="http://placehold.it/1024x1024" class="box-bg-image" alt="" />
			<!-- Bottom buttons are anchor tags with a "box-bottom-button"" class. -->
			<a href="" class="box-bottom-button">
				Shop All
			</a>
		</div>
	</div>

	<!-- 	Using d8x4 will give you a rectangle that's 8 columns wide and 4 rows tall. -->
	<div class="grid-box d8x8 m8x8">
		<div class="box-content">

			<div class="grid-box d16x8">
				<div class="box-content d-border-bottom">
					<img src="http://placehold.it/1024x512" class="box-bg-image" alt="" />
					<a href="" class="box-bottom-button">
						Shop All
					</a>
				</div>
			</div>

			<div class="grid-box d8x8">
				<div class="box-content d-border-br">
					<img src="http://placehold.it/512x512" class="box-bg-image" alt="" />
				</div>
			</div>

			<div class="grid-box d8x8">
				<div class="box-content d-border-bottom">
					<img src="http://placehold.it/512x512" class="box-bg-image" alt="" />
				</div>
			</div>

		</div>
	</div>

	<!-- Sometimes you need to put boxes inside of another box to get them to algin correctly. -->
	<!-- Treat the inside box as another 16 column grid to divide it up. -->
	<div class="grid-box d8x8 m8x8">
		<div class="box-content">
			
			<div class="grid-box d8x8">
				<a class="box-content d-border-br">
					<img src="http://placehold.it/512x512" class="box-bg-image" alt="" />
					<div class="box-bottom-text">
						box bottom text
					</div>
				</a>
			</div>

			<div class="grid-box d8x8">
				<div class="box-content d-border-br">
					<a href="">
						<img src="http://placehold.it/512x512" class="box-bg-image" alt="" />
						<div class="box-bottom-text">
							BBT with anchor
						</div>
					</a>
				</div>
			</div>

			<div class="grid-box d8x8">
				<div class="box-content d-border-br">
					<img src="http://placehold.it/512x512" class="box-bg-image" alt="" />
				</div>
			</div>

			<div class="grid-box d8x8">
				<div class="box-content d-border-br">
					<img src="http://placehold.it/512x512" class="box-bg-image" alt="" />
				</div>
			</div>

		</div>
	</div>


	<div class="grid-box d8x8 m8x8">
		<div class="box-content d-border-bottom">
			<img src="http://placehold.it/1024x1024" class="box-bg-image" alt="" />
			<!-- 	You can add a box-float-button-XX class to the button to change the width.
				This one is box-float-button-30, so the button is 30% of the width of the box
				but you could use box-float-button-60 to get a button that's 60% of the width. -->
			<a href="" class="box-float-button box-float-button-30">
				Shop All
			</a>
		</div>
	</div>

	<div class="grid-box d16x1 m8x2">
		<div class="box-content">
			<img src="http://placehold.it/2048x128" class="box-bg-image" alt="" />
		</div>
	</div>

	<!-- 	Use the "grid-gap" class on a div to add a row of white space between
		modules on the grid.  -->
	<div class="grid-gap" ></div>

	<div class="grid-color-bar" style="background: magenta" ></div>

	<div class="grid-gap" ></div>

</div> <!-- .grid-content -->
</div> <!-- .grid-wrapper -->

<!-- seo copy block -->
<div class="creative-slot grid-wrapper">
<div class="grid-content">

	<div class="grid-seo">

	    <h1 class="grid-seo--heading">Heading Here</h1>

	    <p class="grid-seo--paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum <a class="grid-seo--link" href="">dolore</a> eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

    	<p class="grid-seo--paragraph">Sed ut per	spiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

	</div>

</div> <!-- .grid-content -->
</div> <!-- .grid-wrapper -->
<!-- seo copy block end -->




<!-- MAIN APPLICATION JS -->

<script type="text/javascript" src="js/main.js"></script>




<!-- ***********************************************************
NOTE: REMOVE THIS COMMENT BLOCK AND EVERYTHING BELOW BEFORE
SENDING TO PRODUCTION.
*********************************************************** -->


<!--#include virtual="/GridFramework/v0.4/dev-plugins.asp"-->
 

<!--#include virtual="/includes/landing-pages/current/foot.asp"-->