# Initializr 2 - Developers Documentation

This documentation is for developers. There is also a more <a href="http://www.initializr.com/docs">users-oriented documentation on initializr.com</a>.

## Presentation

Hi! This documentation is here in case you want to get involved in Initializr, use it as an API to generate archives on the fly, or create your
own options (choosing an other JS lib like Mootools, a CSS Framework like Blueprint or 960.gs, etc.).

## The basics

The idea of Initializr API is pretty simple. You can either download an archive or display its content.
Just ping this URL to get an archive of Initializr:

http://www.initializr.com/builder

The content of this archive is not relevant because no "module" have been added to it, but you'll understand that in a minute :).

If you add a ?print parameter, it will display the content of the archive without downloading it:

http://www.initializr.com/builder?print

## Modules

Initializr uses "modules", which are code snippets or files (or both) that will be included in the archive.

The "modernizr" module, for instance, adds the following line in index.html:

<pre>%3Cscript src="js/libs/modernizr-2.0.min.js"%3E%3C/script%3E</pre>
<code>%3Cscript src="js/libs/modernizr-2.0.min.js"%3E%3C/script%3E</code>

and also adds modernizr-2.0.min.js in the js/libs directory.

If you want to add a module to your archive, just add the name of the module as a GET parameter:

http://jverrecchia-initializr.appspot.com/builder?print&jquery&modernizr

All the current available modules can be found on https://github.com/verekia/initializr/tree/master/war/builder/modules
A more user-friendly view is also displayed by the Advanced Custom' builder: http://www.initializr.com/advanced

# How to create your own module

Let's take a look at what contains <a href="https://github.com/verekia/initializr/tree/master/war/builder/modules/modernizr">modules/modernizr</a> on the Git repo:
<ul>
	<li><pre>modernizr-2.0.min.js</pre> - It's the actual Modernizr JS file</li>
	<li><pre>modernizr.html</pre> - It's a file containing <pre><script src="js/libs/modernizr-2.0.min.js"></script></pre></li>
	<li><pre>modernizr.json</pre> - Here is the interesting stuff! Let's take a closer look to this file:</li>
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
