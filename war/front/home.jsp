<%@ page import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List" %>
<%@ include file="header.jsp" %>
	<header>
			<aside id="social">

				<div id="follow">
<!-- 					<img src="/front/img/initializr-twitter.png" alt="Twitter icon" /> -->
					<ul>
					<li><a href="http://twitter.com/#!/initializr">@initializr</a></li>
					<li><a href="http://twitter.com/#!/verekia">@verekia</a></li>
					</ul>
				</div>
				<div id="share">
<!-- Place this tag in your head or just before your close body tag -->
<!-- <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script> -->

<!-- Place this tag where you want the +1 button to render -->
<!-- <g:plusone size="medium"></g:plusone>				 -->
<a href="http://twitter.com/share" class="twitter-share-button" data-url="http://initializr.com" data-count="horizontal" data-via="initializr" data-related="verekia:Creator of Initializr">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
					<iframe class="facebook" src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Finitializr.com&amp;layout=button_count&amp;show_faces=false&amp;width=120&amp;action=like&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:120px; height:21px;" allowTransparency="true"></iframe>		
				</div>
			</aside>	
<a href="https://github.com/verekia/initializr"><img style="position: fixed; top: 0; right: 0; border: 0;" src="https://a248.e.akamai.net/assets.github.com/img/7afbc8b248c68eb468279e8c17986ad46549fb71/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6461726b626c75655f3132313632312e706e67" alt="Fork me on GitHub"></a>

			<p>Initializr is an <strong>HTML5 templates generator</strong> to help you getting started with an HTML5 project. It is built on <a href="http://html5boilerplate.com/">HTML5 Boilerplate</a>, a powerful HTML5 template created by <a href="http://paulirish.com/">Paul Irish</a> and <a href="http://nimbupani.com/">Divya Manian</a>. Initializr will generate for you a clean customizable template based on Boilerplate with just what you need to start.</p>
	
			<h2 id="slogan">Start an HTML5 project in...</h2>
		</header>
<div id="options">
	<a id="leftoptions" class="option" href="/builder"><span class="hint">1 second</span><br />featured template</a>
	<a id="centeroptions" class="option" href="#custom"><span class="hint">15 seconds</span><br />simple custom'</a>
	<a id="rightoptions" class="option" href="/advanced"><span class="hint">1 minute</span><br />advanced custom'</a>
<!-- 	<a class="orangeblock" href="/advanced">Configure...</a> -->
	</div>
</div>
<div class="clearfix"></div>


<!-- 		<div id="builder"> -->
<!-- 			<h3>HTML & CSS</h3> -->
<!-- 			<section id="htmlcss"> -->
<!-- 				<a id="nocontent" class="selection htmlcss" href="#">No content please!</a> -->
<!-- 				<a id="izrsample" class="selection htmlcss selected" href="#">Initializr sample page</a> -->
<!-- 				<div class="clearfix"></div> -->
<!-- 			</section> -->
<!-- 			<h3>Javascript</h3> -->
<!-- 			<section id="javascript"> -->
<!-- 			<a id="nojs" class="selection javascript" href="#">No Javascript!</a> -->
<!-- 			<a id="nojq" class="selection javascript" href="#">No jQuery!</a> -->
<!-- 			<a id="jq" class="selection javascript selected" href="#">I want jQuery minified!</a> -->
<!-- 			<a id="jqdev" class="selection javascript" href="#">I want jQuery unminified!</a> -->
<!-- 				<div class="clearfix"></div> -->
<!-- 			</section>			 -->
<!-- 			<h3>Compatibility</h3> -->
<!-- 			<section id="compatibility"> -->
<!-- 			<a id="modernizr" class="selection compatibility selected" href="#">Modernizr!</a> -->
<!-- 			<a id="html5shiv" class="selection compatibility" href="#">Just html5shiv</a>		 -->
<!-- 				<div class="clearfix"></div> -->
<!-- 			</section>				 -->
<!-- 			<h3>Server Configuration</h3> -->
<!-- 			<section id="server"> -->
<!-- 			<a id="noserver" class="selection server selected" href="#">No, thanks</a> -->
<!-- 			<a id="htaccess" class="selection server" href="#">.htaccess</a>	 -->
<!-- 			<a id="webconfig" class="selection server" href="#">web.config</a> -->
<!-- 			<a id="nginx" class="selection server" href="#">nginx.conf</a> -->
<!-- 				<div class="clearfix"></div> -->
<!-- 			</section>	 -->
<!-- 			<h3>Analytics</h3> -->
<!-- 			<section id="analytics"> -->
<!-- 			<a id="analytics" class="selection analytics" href="#">Yup</a> -->
<!-- 			<a id="noanalytics" class="selection analytics selected" href="#">Nope</a> -->
<!-- 				<div class="clearfix"></div> -->
<!-- 			</section>						 -->
<!-- 			<a href="generate" id="download" class="selected">Download!<img src="/front/img/html5-download.png" alt="Download" /></a> -->
<!-- 		</div> -->
<!-- 		<h2>Want more?</h2> -->
<!-- 		<p>Some functionalities have been removed from Boilerplate to focus on what most people really use. -->
<!-- 		Feel free to visit <a href="http://html5boilerplate.com/">HTML5 Boilerplate</a> if you need some of these functionalities for your project. -->
<!-- 		Boilerplate also provides very good advice to make your site even better! -->
<!-- 		</p>	 -->
<!-- 		<section id="guides"> -->
<!-- 			<h2>Boilerplate? Modernizr? HTML5shiv?</h2> -->
<!-- 			<p>If you are not familiar with these things but would like to start playing with HTML5, you should read some HTML5 -->
<!-- 			introductions and tutorials before. Here will be listed articles that introduce Initializr with some information about at least Modernizr, HTML5shiv and Boilerplate in as many languages as possible:</p> -->
<!-- 			<ul> -->
<!-- 				<li><a href="http://www.html5-css3.fr/html5/initializr-generateur-template-html5-boilerplate">Official french version on HTML5-CSS3.fr</a></li> -->
<!-- 				<li><a href="http://www.mk-dizajn.com/en/2011/06/initializr-izvrstan-html5-predlozak-za-svaki-web-projekt/">English version on MK-Dizajn.com</a></li> -->
<!-- 				<li><a href="http://www.mk-dizajn.com/2011/06/initializr-izvrstan-html5-predlozak-za-svaki-web-projekt/">Croatian version on MK-Dizajn.com</a></li> -->
<!-- 				<li><a href="http://starwebdesign.com.ua/blog/2011/02/16/initializr-generator-chistogo-i-nastraivaemogo-html5-shablona-osnovannogo-na-boilerplate/">Russian version on Starwebdesign.com.ua</a></li> -->
<!-- 				<li><a href="http://www.jaapvdveen.nl/2011/02/17/initializr-een-template-generator-op-basis-van-html5-boilerplate/">Dutch version on jaapvdveen.nl</a></li> -->
<!-- 			</ul> -->
<!-- 			<p>If you write a nice article in a missing language, I will post here a link to your site ;)</p> -->
<!-- 		</section> -->
<!-- 		<footer> -->
<!-- 		<h2>About</h2> -->
<!-- 		<p>Initializr (<a href="http://twitter.com/#!/initializr">@initializr</a>) has been created by Jonathan Verrecchia (<a href="http://twitter.com/#!/verekia">@verekia</a>) to help the spread of HTML5 on the web. -->
<!-- 		If you have any suggestion please send me a tweet or an <a href="mailto:initializr@gmail.com">email</a>!</p> -->
<!-- 		</footer>	 -->
<!-- 	</div> -->
<!-- 	<div id="footer-container"> -->
<!-- 		<footer class="wrapper"> -->
<!-- 		</footer> -->
<!-- 	</div> -->


<%@ include file="footer.jsp" %>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')</script>

<script>
$(function(){
	var beginurl = 'http://jverrecchia-initializr.appspot.com/builder?';
	var urlparameters = "";
	
	var mode = 'custom';
	var modules = {
		'h5bp-404' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-adobecrossdomain' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-analytics' : {'enabled' : false, 'default' : []},
		'h5bp-appletouchicons' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
		'h5bp-chromeframe' : {'enabled' : false, 'default' : ['izr']},
		'h5bp-content' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
		'h5bp-css' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-csshelpers' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-favicon' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-htaccess' : {'enabled' : false, 'default' : []},
		'h5bp-humans' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-iecond' : {'enabled' : false, 'default' : []},
		'h5bp-mediaqueries' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-mediaqueryprint' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-nginx' : {'enabled' : false, 'default' : []},
		'h5bp-oldiecond' : {'enabled' : false, 'default' : []},
		'h5bp-primarystyles' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-readmemd' : {'enabled' : false, 'default' : []},
		'h5bp-robots' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-scripts' : {'enabled' : false, 'default' : []},
		'h5bp-webconfig' : {'enabled' : false, 'default' : []},
		'html5shiv' : {'enabled' : false, 'default' : []},
		'izr-jqtest' : {'enabled' : false, 'default' : []},
		'izr-styles' : {'enabled' : false, 'default' : ['izr']},
		'jquery' : {'enabled' : false, 'default' : []},
		'modernizr' : {'enabled' : false, 'default' : []},
		'respond' : {'enabled' : false, 'default' : []},
		'simplehtmltag' : {'enabled' : false, 'default' : []}
	};
	updateCheckBoxes();
	
	$('.mode').click(function(){
		mode = $(this).attr('value');
		updateMode();
		updateCheckBoxes(true);
		updateURLs();
	});
	
	$('.select').click(function(){
		if ($(this).prop('checked'))
			modules[$(this).attr('id')].enabled = true;
		else
			modules[$(this).attr('id')].enabled = false;
		updateURLs();
	});
	
	$("#print").click(function(){
		updateURLs();
		window.location = (beginurl + 'print&' + urlparameters);
	});
	$("#download").click(function(){
		updateURLs();
		window.location = (beginurl + urlparameters);
	});	
	
	function updateMode(){
		for (curModule in modules){
			if ($.inArray(mode, modules[curModule]['default']) >= 0){
				modules[curModule].enabled = true;
			}
			else
				modules[curModule].enabled = false;
		}
	}
	
	function updateCheckBoxes(disableDefaults){
		for (curModule in modules){
			if (modules[curModule].enabled){
				$('#' + curModule).prop('checked', true);
				if (disableDefaults)
					$('#' + curModule).prop('disabled', true);
			}

			else {
				$('#' + curModule).prop('checked', false);
				if (disableDefaults)
					$('#' + curModule).prop('disabled', false);			
			}
		}
	}
	
	function updateURLs(){
		urlparameters = '';

		if (mode == 'h5bp')
			urlparameters = 'mode=h5bp&';
		else if (mode != 'izr')
			urlparameters = 'mode=custom&';		
		
		for (curModule in modules){
			if (modules[curModule].enabled == true && $.inArray(mode, modules[curModule]['default']) == -1)
				urlparameters += curModule + '&';
		}
		
		if (urlparameters[urlparameters.length - 1] == '&')
			urlparameters = urlparameters.substr(0, urlparameters.length - 1);
		
		$('#printurl').attr('value', beginurl + 'print&' + urlparameters);
		$('#downloadurl').attr('value', beginurl + urlparameters);
	}
});

</script>

</body>
</html>
