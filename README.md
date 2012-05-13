# Initializr - Documentation

## Download or Print

The idea of Initializr API is pretty simple. You can either download an archive or display its content.
Just ping this URL to get an archive of Initializr:

http://www.initializr.com/builder

Please note that the content of this particular archive is not relevant because no "module" have been added to it, but you'll understand that in a minute.

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

# How a module is defined

Let's take a look at what contains <a href="https://github.com/verekia/initializr/tree/master/war/builder/modules/modernizr">modules/modernizr</a> on the Git repo:
<ul>
	<li><code>modernizr-2.0.min.js</code> - It's the actual Modernizr JS file,</li>
	<li><code>modernizr.html</code> - It's the file containing the HTML JavaScript code inclusion,</li>
	<li><code>modernizr.json</code> - Here is the interesting stuff! Let's take a closer look at this file:</li>
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

We can see that a module configuration file is actually a simple JSON containing the following members:
<ul>
	<li><code>author</code>: The name of the author of the module,</li>
	<li><code>name</code>: The "Fancy name" of the module,</li>
	<li><code>id</code>: The unique id of the module (prefixed with h5bp- or izr- if it's from HTML5 Boilerplate or Initializr),</li>
	<li><code>incompatibilities</code>: An array of modules ids that can't be used with this one.</li>
	<li><code>inserts</code>: An array of insertions of code snippets or files with the following fields:</li>
	<ul>
		<li><code>what</code>: What code snippet or file is going to be included in the archive (refers to an other file of the same module folder),</li>
		<li><code>where</code>: In which file and place the code snippet will be injected (<a href="https://github.com/verekia/initializr/tree/master/war/builder/templates">in these files</a>), or the name of the file if it's an entire file,</li>
		<li><code>type</code>: (optional) specify <code>file</code> for this field if the current insertion is an entire file (like modernizr JS file).</li>
	</ul>
</ul>
