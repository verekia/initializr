<%@ page
	import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List"%>
<%@ include file="header.jsp"%>
<header> 
<p>
	Initializr is an <strong>HTML5 templates generator</strong> created by <a href="http://twitter.com/#!/verekia">Jonathan Verrecchia</a>
	to help you getting started with a new web project based on <a	href="http://html5boilerplate.com/">HTML5 Boilerplate</a>.
	Initializr will generate for you a clean customizable template with just what you need to start!
</p>

<!-- <div id="birthday"> -->
<!-- 	 ★ Happy Birthday HTML5 Boilerplate! ★ -->
<!-- </div> -->

<div id="responsive-message" class="orangeblock">Cool new stuff: <a target="_blank" href="http://verekia.com/initializr/responsive-web-design">Responsive Template!</a></div>
<h2 id="slogan">Start an HTML5 project in...</h2>
</header>
<div id="options">
	<a id="leftoptions" class="option" href="/builder?h5bp-analytics&h5bp-chromeframe&izr-responsive&izr-emptyscript&jquery&modernizrrespond"><span
		class="hint">1 second</span><br />featured template</a> <button
		id="centeroptions" class="option"><span
		class="hint">15 seconds</span><br />simple custom'</button> <a
		id="rightoptions" class="option" href="/advanced"><span
		class="hint">1 minute</span><br />advanced custom'</a>
	<!-- 	<a class="orangeblock" href="/advanced">Configure...</a> -->
</div>

<div id="simplecustom">

	<h4>HTML/CSS</h4>
	<ul><li>
		<input class='select' type="radio" name="htmlcss" id='h5bp-content' />
		No Content
		</li>
		<li>
		<input class='select' type='radio' name="htmlcss" id='izr-samplepage' />
		Basic Sample Page
		</li>
		<li>
		<input class='select' type='radio' name="htmlcss" id='izr-responsive' />
		<a href="http://verekia.com/initializr/responsive-web-design" target="_blank">Responsive Template</a> - <a href="/try" target="_blank">try me</a>!
		</li>
	</ul>
	<h4>JavaScript</h4>
	<ul>
	<li>
	<input class='select' type='radio' name="js" id='izr-emptyscript' />
	Empty JavaScript File
	</li>
	<li>
	<input class='select' type='radio' name="js" id='h5bp-scripts' />
	Boilerplate Scripts
	</li>
	<li>
	<input class='select' type='checkbox' id='jquery' />
	jQuery
	</li>
	</ul>
	<h4>HTML5 Compatibility</h4>
	<ul>
	<li>
	<input class='select' type='radio' name="polyfill" id='modernizrrespond' />
	Modernizr + Respond.js
	</li>
	<li>
	<input class='select' type='radio' name="polyfill" id='html5shiv' />
	HTML5 Shiv
	</li>
	</ul>
	<h4>Google Services</h4>
	<ul><li>
	<input class='select' type='checkbox' id='h5bp-analytics' />
	Analytics
	</li>
	<li>
	<input class='select' type='checkbox' id='h5bp-chromeframe' />
	Suggest Chrome Frame
	</li>
	</ul>
	<h4>Server Configuration</h4>
	<ul>
	<li>
	<input class='select' type='checkbox' id='h5bp-htaccess' />
	Htaccess Apache Configuration File
	</li>
	<li>
	<input class='select' type='checkbox' id='h5bp-webconfig' />
	Web.config Configuration File
	</li>
	<li>
	<input class='select' type='checkbox' id='h5bp-nginx' />
	Nginx Configuration File
	</li>
	</ul>

<!-- 	<p style="margin-top:10px">Archive URL (will be removed after the beta)</p> -->
<!-- 	<input style="margin-bottom:20px; width:500px" id="downloadurl" type="text" /> -->
	<button id="download" class="orangeblock" style="width:320px">Download!</button>
	<button id="print" class="orangeblock" style="width:320px">What's inside?</button>
	
</div>

</div>
<div class="clearfix"></div>


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
