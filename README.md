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
<li>h5bp-404</li>
<li>h5bp-adobecrossdomain</li>
<li>h5bp-appletouchicons</li>
<li>h5bp-content</li>
<li>h5bp-css</li>
<li>h5bp-csshelpers</li>
<li>h5bp-favicon</li>
<li>h5bp-humans</li>
<li>h5bp-mediaqueries</li>
<li>h5bp-mediaqueryprint</li>
<li>h5bp-primarystyles</li>
<li>h5bp-robots</li>
</ul>

#### HTML5 Boilerplate available modules

<ul>
<li>h5bp-htaccess</li>
<li>h5bp-chromeframe</li>
<li>h5bp-scripts</li>
<li>h5bp-iecond</li>
<li>h5bp-nginx</li>
<li>h5bp-webconfig</li>
<li>h5bp-readmemd</li>
<li>h5bp-analytics</li>
<li>h5bp-oldiecond</li>
<li>   simplehtmltag</li>
<li>   html5shiv</li>
<li>   jquery</li>
<li>   modernizr</li>
<li>   respond</li>
</ul>

#### Initializr specific modules

<ul>
<li>izr-styles</li>
<li>izr-jqtest</li>
</ul>