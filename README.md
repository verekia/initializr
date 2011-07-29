# Initializr 2 - Developers Documentation

This documentation is for developers. There is also a more <a href="http://www.initializr.com/docs">users-oriented documentation</a>.

## Presentation

Hi! This documentation is here in case you want to get involved in Initializr, use it as an API to generate archives on the fly, or create your
own options (choosing an other JS lib like Mootools, a CSS Framework like Blueprint or 960.gs, etc.).

## The basics

The idea of Initializr API is pretty simple. You can either download an archive or display its content.
Just ping this URL to get an archive of Initializr:

http://www.initializr.com/builder

Please note that the content of this particular archive is not relevant because no "module" have been added to it, but you'll understand that in a minute :).

If you add a ?print parameter, it will display the content of the archive without downloading it:

http://www.initializr.com/builder?print

## Modules

Initializr uses "modules", which are code snippets or files (or both) that will be included in the archive.

The <code>modernizr</code> module, for instance, adds the following line in <code>index.html</code>:

<code>\<script src="js/libs/modernizr-2.0.min.js"\>\</script\></code>

and also adds <code>modernizr-2.0.min.js</code> in the <code>js/libs</code> directory.

If you want to add a module to your archive, just add the name of that module as a GET parameter:

http://www.initializr.com/builder?print&jquery&modernizr

All the current available modules can be found on this <a href="https://github.com/verekia/initializr/tree/master/war/builder/modules">Github</a>.<br />
A more user-friendly view is also displayed by the <a href="http://www.initializr.com/advanced">Advanced Custom' builder</a>. 

# How to create your own module

Let's take a look at what contains <a href="https://github.com/verekia/initializr/tree/master/war/builder/modules/modernizr">modules/modernizr</a> on the Git repo:
<ul>
	<li><code>modernizr-2.0.min.js</code> - It's the actual Modernizr JS file</li>
	<li><code>modernizr.html</code> - It's a file containing <code>\<script src="js/libs/modernizr-2.0.min.js"\>\</script\></code></li>
	<li><code>modernizr.json</code> - Here is the interesting stuff! Let's take a closer look to this file:</li>
</ul> 

<pre>
{
	"author" : "Paul Irish",
	"name" : "Modernizr",
	"id" : "modernizr",
	"inserts" :
	[
		{
			"what" : "modernizr.html",
			"where" : "index.html/head/html5polyfill"
		}
	,
		{
			"what" : "modernizr-2.0.min.js",
			"where" : "js/libs/modernizr-2.0.min.js",
			"type" : "file"
		}
	],
	"incompatibilities" : ["html5shiv"]
}
</pre>

We can see that a module configuration file is actually a simple JSON which contains the following members:
<ul>
	<li><code>author</code>: The name of the author of the module (you)</li>
	<li><code>name</code>: The "Fancy name" of the module</li>
	<li><code>id</code>: The unique id of the module (prefixed with h5bp- or izr- if it's from HTML5 Boilerplate or Initializr,</li>
	<li><code>inserts</code>: A set of insertions of code snippets or file</li>
	<ul>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	<li><code>author</code>: The name of the author of the module (you)</li>
	<li><code>author</code>: The name of the author of the module (you)</li>
</ul>

# Modes

"Modes" are a way to enable some modules by default.

For instance, on initializr.com, the "Simple Custom'" builder adds many things that you haven't checked
because it assumes that they're vital and useful for you. It has a default minimal configuration.
"Default minimal configuration" doesn't mean it's usable, it actually means what will be included in your archive, no matter what options you
activate or note on these builders.


There are currently 3 different modes available:
<ul>
<li>"custom" which has no modules enabled by default, it's almost an empty archive,</li>
<li>"h5bp", which stands for HTML5 Boilerplate and activates a set of modules asked by the HTML5 Boilerplate team,</li>
<li>Specifying no mode activates Initializr mode, which activates a minimalistic set of modules.</li>

</ul>

Initializr mode is the default minimal configuration of Initializr Simple Custom' builder available on the <a href="http://www.initializr.com/">home page</a>.
"h5bp" is the default minimal configuration of HTML5 Boilerplate "Custom Boilerplate" builder available on their <a href="http://www.initializr.com/">home page</a>.

You can choose a mode by adding a "mode" parameter in the URL:
<ul>
	<li>http://www.initializr.com/builder?print&mode=custom</li>
	<li>http://www.initializr.com/builder?print&mode=h5bp</li>
</ul>
