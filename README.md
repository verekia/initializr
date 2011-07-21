# Initializr 2.0 

## Documentation

### Download or Print

Ping this URL to get an archive of Initializr:

http://jverrecchia-initializr.appspot.com/builder

If you add a ?print parameter, it will display the content of the archive without downloading it:

http://jverrecchia-initializr.appspot.com/builder?print

### Boilerplate Edition

If you want the Boilerplate Edition, just add a mode=boilerplate parameter :

http://jverrecchia-initializr.appspot.com/builder?mode=boilerplate

You can still display the content before downloading it with the print parameter:

http://jverrecchia-initializr.appspot.com/builder?mode=boilerplate&print

### Modules

Modules are just portions of code that will be included in your archive. If you want
to add a module to your archive, just add the name of the module as a GET parameter:

http://jverrecchia-initializr.appspot.com/builder?print&jquery&modernizr

26 modules are currently available ("B" means that it's by default in the Boilerplate Edition):

#### HTML5 Boilerplate minimal default config

<ul>
<li>B  404</li>
<li>B  adobecrossdomain</li>
<li>B  appletouchicons</li>
<li>B  basiccontent</li>
<li>B  boilerplatecss</li>
<li>B  csshelpers</li>
<li>B  favicon</li>
<li>B  humans</li>
<li>B  mediaqueries</li>
<li>B  mediaqueryprint</li>
<li>B  primarystyles</li>
<li>B  robots</li>
</ul>

#### HTML5 Boilerplate available modules

<ul>
<li>   simplehtmltag</li>
<li>   htaccess</li>
<li>   chromeframe</li>
<li>   boilerplatescripts</li>
<li>   iecond</li>
<li>   nginx</li>
<li>   html5shiv</li>
<li>   jquery</li>
<li>   modernizr</li>
<li>   readmemd</li>
<li>   respond</li>
<li>   analytics</li>
<li>   oldiecond</li>

</ul>

#### Initializr specific modules

<ul>
<li>I  initializrcss</li>
<li>I  jqtest</li>
</ul>