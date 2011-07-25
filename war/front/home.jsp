<%@ page
	import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List"%>
<%@ include file="header.jsp"%>
<header> <aside id="social">

<div id="follow">
	<!-- 					<img src="/front/img/initializr-twitter.png" alt="Twitter icon" /> -->
	<ul>
		<li><a href="http://twitter.com/#!/initializr">@initializr</a>
		</li>
		<li><a href="http://twitter.com/#!/verekia">@verekia</a>
		</li>
	</ul>
</div>
<div id="share">
	<!-- Place this tag in your head or just before your close body tag -->
	<!-- <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script> -->

	<!-- Place this tag where you want the +1 button to render -->
	<!-- <g:plusone size="medium"></g:plusone>				 -->
	<a href="http://twitter.com/share" class="twitter-share-button"
		data-url="http://initializr.com" data-count="horizontal"
		data-via="initializr" data-related="verekia:Creator of Initializr">Tweet</a>
	<script type="text/javascript"
		src="http://platform.twitter.com/widgets.js"></script>
	<iframe class="facebook"
		src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Finitializr.com&amp;layout=button_count&amp;show_faces=false&amp;width=120&amp;action=like&amp;colorscheme=light&amp;height=21"
		scrolling="no" frameborder="0"
		style="border: none; overflow: hidden; width: 120px; height: 21px;"
		allowTransparency="true"></iframe>
</div>
</aside> <a href="https://github.com/verekia/initializr"><img
	style="position: fixed; top: 0; right: 0; border: 0;"
	src="https://a248.e.akamai.net/assets.github.com/img/7afbc8b248c68eb468279e8c17986ad46549fb71/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6461726b626c75655f3132313632312e706e67"
	alt="Fork me on GitHub">
</a>

<p>
	Initializr is an <strong>HTML5 templates generator</strong> to help you
	getting started with an HTML5 project. It is built on <a
		href="http://html5boilerplate.com/">HTML5 Boilerplate</a>, a powerful
	HTML5 template created by <a href="http://paulirish.com/">Paul
		Irish</a> and <a href="http://nimbupani.com/">Divya Manian</a>. Initializr
	will generate for you a clean customizable template based on
	Boilerplate with just what you need to start.
</p>

<h2 id="slogan">Start an HTML5 project in...</h2>
</header>
<div id="options">
	<a id="leftoptions" class="option" href="/builder"><span
		class="hint">1 second</span><br />featured template</a> <a
		id="centeroptions" class="option" href="#custom"><span
		class="hint">15 seconds</span><br />simple custom'</a> <a
		id="rightoptions" class="option" href="/advanced"><span
		class="hint">1 minute</span><br />advanced custom'</a>
	<!-- 	<a class="orangeblock" href="/advanced">Configure...</a> -->
</div>
</div>
<div class="clearfix"></div>

<table style="margin-bottom: 100px">

	<tr><td></td><td></td></tr>
	<tr>
		<td><input class='select' type='checkbox' id='h5bp-analytics' />
		</td>
		<td>Analytics</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='h5bp-chromeframe' />
		</td>
		<td>Chrome Frame</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='h5bp-content' />
		</td>
		<td>Basic Content</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='h5bp-primarystyles' />
		</td>
		<td>Primary Styles</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='h5bp-scripts' />
		</td>
		<td>Boilerplate Scripts</td>
	</tr>

	<tr>
		<td><input class='select' type='checkbox' id='html5shiv' />
		</td>
		<td>HTML5 Shiv</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='izr-jqtest' />
		</td>
		<td>jQuery Loading Test</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='izr-styles' />
		</td>
		<td>Initializr CSS</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='jquery' />
		</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='modernizr' />
		</td>
		<td>Modernizr</td>
	</tr>
	<tr>
		<td><input class='select' type='checkbox' id='respond' />
		</td>
		<td>Respond.js</td>
	</tr>
	<tr><td></td><td>Server Configuration</td></tr>
		<tr>
		
		<td><input class='select' type='checkbox' id='h5bp-htaccess' />
		</td>
		<td>Htaccess Apache Configugation File</td>
	</tr>
		<tr>
		<td><input class='select' type='checkbox' id='h5bp-webconfig' />
		</td>
		<td>Web.config Configugation File</td>
	</tr>
		<tr>
		<td><input class='select' type='checkbox' id='h5bp-nginx' />
		</td>
		<td>Nginx Configugation File</td>
	</tr>
</table>

	<input id="downloadurl" type="text" style="width:900px" />
	<button id="download">Download</button>
	



<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')
</script>

<script>
var initializrBuilderType = 'simple';
var initializrBuilderMode = 'izr';
</script>

<%@ include file="footer.jsp"%>
</body>
</html>
