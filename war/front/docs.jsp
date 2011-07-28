<%@ page import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List" %>
<%@ include file="header.jsp" %>

<article id="docs">
<h1>Documentation</h1>
<p>Hi! I'm <a href="http://twitter.com/#!/verekia">Jonathan Verrecchia</a>, nice to meet you! I created Initializr to help the spread of HTML5 on the web.
The purpose of this documentation is to make you understand the context of this tool, its strong link with HTML5 Boilerplate, and why it's definitely going to be super useful
for your next web project.</p>
<h2>From HTML5 Boilerplate</h2>
<p><a href="http://twitter.com/#!/paul_irish">Paul Irish</a>, <a href="http://twitter.com/#!/divya">Divya Manian</a> (and many other contributors) made the awesome HTML5 Boilerplate.
"H5BP" is here to handle the boring stuff you don't want to deal with. It provides a rock-solid default code
that improves the cross-browser compatibility for HTML5 projects and handy tools to help their development.</p>
<p>It's really perfect for big projects. However every time you want to start a not-so-big new project, you spend time deleting all the functionalities you
don't have any use for (I'm sure many of you would remove things like jQuery profiling, JS unit testing, the build script, cross-domain configuration file for Flash...).</p>
<h2>To Initializr!</h2>
<p>Initializr is here to skip this deletion phase and start a project super quickly. It generates customized HTML5 Boilerplate
templates by allowing you to choose which parts you want or don't want in the downloaded archive. A sample page has also been added to start
from a basic design instead of a blank page.
<p>On the home page you can choose between 3 options:</p>
<ul>
	<li><strong>1 second - featured template</strong>: The fastest way to get started. It contains all what you probably need, based on the previous version of Initializr stats.</li>
	<li><strong>15 seconds - simple custom'</strong>: This displays a set of common options to customize your template (jQuery or not, Modernizr or not, that kind of things).</li>
	<li><strong>1 minute - advanced custom'</strong>: Prefer this one if you want to choose exactly what will be included in your template (it's the geeky option).</li>
</ul>

<h2>International guides</h2>
<p>Initializr functioning is pretty intuitive but it can help to read guides about it in your own language. Here are some which will help you using Initializr and understanding HTML5 Boilerplate, HTML5shiv or Modernizr, in <a href="http://www.html5-css3.fr/html5/initializr-generateur-template-html5-boilerplate">French</a> (official), <a href="http://www.mk-dizajn.com/en/2011/06/initializr-izvrstan-html5-predlozak-za-svaki-web-projekt/">English</a>, <a href="http://starwebdesign.com.ua/blog/2011/02/16/initializr-generator-chistogo-i-nastraivaemogo-html5-shablona-osnovannogo-na-boilerplate/">Russian</a>, <a href="http://www.mk-dizajn.com/2011/06/initializr-izvrstan-html5-predlozak-za-svaki-web-projekt/">Croatian</a>, <a href="http://www.jaapvdveen.nl/2011/02/17/initializr-een-template-generator-op-basis-van-html5-boilerplate/">Dutch</a> and <a href="http://flaviosilveira.com/2011/initializr-comece-seu-projeto-html5-em-15-segundos/">Portuguese</a>.
If you write an nice article in a missing language, I will put your link here ;)</p>

<h2>The "Boilerplate Custom" builder</h2>
<p>You may have noticed that HTML5 Boilerplate also provides a builder on its main page, called "Boilerplate Custom".
Actually this builder <em>is</em> Initializr. It uses the same backend, so feel free to use whichever you prefer, it's exactly the same!
</p>

<h2>Could you add this or that option?</h2>
<p>It would be awesome to have many other options like a mobile template, a Wordpress theme, other JS libs, CSS grids, etc. It's definitely possible to add them. I will add more options when I have time, but you can also do it yourself <em>super
easily</em> by contributing to Initializr on <a href="https://github.com/verekia/initializr#readme">Github</a>. You don't even need to know the backend language I used! Seriously, take a look :)</p>

<h2>Contact</h2>
<p>You can send me emails at <span id="email"></span>, or follow <a href="http://twitter.com/#!/initializr">@initializr</a> and <a href="http://twitter.com/#!/verekia">@verekia</a>.</p>

</article>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')
</script>


<%@ include file="footer.jsp" %>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')</script>

</body>
</html>
