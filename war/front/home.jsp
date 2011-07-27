<%@ page
	import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List"%>
<%@ include file="header.jsp"%>
<header> 
<p>
	Initializr is an <strong>HTML5 templates generator</strong> to help you
	getting started with an HTML5 project. It is built on <a
		href="http://html5boilerplate.com/">HTML5 Boilerplate</a>, a powerful
	HTML5 template created by <a href="http://twitter.com/#!/paul_irish">Paul
		Irish</a> and <a href="http://twitter.com/#!/divya">Divya Manian</a>. Initializr
	will generate for you a clean customizable template based on
	Boilerplate with just what you need to start.
</p>

<h2 id="slogan">Start an HTML5 project in...</h2>
</header>
<div id="options">
	<a id="leftoptions" class="option" href="/builder?izr-samplepage&h5bp-chromeframe&h5bp-analytics&modernizr&respond&jquery"><span
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
		Initializr Sample Page
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
	<input class='select' type='radio' name="polyfill" id='modernizr' />
	Modernizr
	</li>
	<li>
	<input class='select' type='radio' name="polyfill" id='html5shiv' />
	HTML5 Shiv
	</li>
	<li>
	<input class='select' type='checkbox' id='respond' />
	Respond.js
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
	Htaccess Apache Configugation File
	</li>
	<li>
	<input class='select' type='checkbox' id='h5bp-webconfig' />
	Web.config Configugation File
	</li>
	<li>
	<input class='select' type='checkbox' id='h5bp-nginx' />
	Nginx Configugation File
	</li>
	</ul>

	<p style="margin-top:10px">Archive URL (will be removed after the beta)</p>
	<input style="margin-bottom:20px; width:500px" id="downloadurl" type="text" />
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
