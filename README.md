# Initializr 2

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

### 100% Custom Edition

You can also get an empty archive which doesn't have any module activated by default with the mode=custom parameter:

http://jverrecchia-initializr.appspot.com/builder?mode=custom&print

### Modules

Modules are just portions of code that will be included in your archive. If you want
to add a module to your archive, just add the name of the module as a GET parameter:

http://jverrecchia-initializr.appspot.com/builder?print&jquery&modernizr

#### Available modules

"h5bp" means they come from HTML5 Boilerplate, and "izr" are specific to Initializr.

<ul>
<li>h5bp-404</li>
<li>h5bp-adobecrossdomain</li>
<li>h5bp-analytics</li>
<li>h5bp-appletouchicons</li>
<li>h5bp-chromeframe</li>
<li>h5bp-content</li>
<li>h5bp-css</li>
<li>h5bp-csshelpers</li>
<li>h5bp-favicon</li>
<li>h5bp-htaccess</li>
<li>h5bp-humans</li>
<li>h5bp-iecond</li>
<li>h5bp-mediaqueries</li>
<li>h5bp-mediaqueryprint</li>
<li>h5bp-nginx</li>
<li>h5bp-oldiecond</li>
<li>h5bp-readmemd</li>
<li>h5bp-robots</li>
<li>h5bp-scripts</li>
<li>h5bp-webconfig</li>
<li>izr-emptyscript</li>
<li>izr-samplepage</li>
<li>html5shiv</li>
<li>jquery</li>
<li>jquerydev</li>
<li>jquerymin</li>
<li>modernizr</li>
<li>respond</li>
<li>simplehtmltag</li>
</ul>
