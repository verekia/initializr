<%@ page import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List" %>
<%@ include file="header.jsp" %>

<h1>Advanced Customization</h1>
<p style="margin:20px 0">This page allows you to add some modules that are neither available on the simple custom' builder nor HTML5 <a href="http://html5boilerplate.com/#builder-custom">Boilerplate Custom</a>.
By selecting "Initializr" or "H5BP Custom Builder" options, you'll activate the minimal default configuration of these builders.</p>

<input type="radio" class="mode" name="mode" value="custom" />Custom Build (nothing enabled by default)<br />
<input type="radio" class="mode" name="mode" value="izr" /> Initializr (similar to simple custom')<br />
<input type="radio" class="mode" name="mode" value="h5bp"/> H5BP Custom Builder (similar to html5boilerplate.com)
<br /><br />
<table style="margin-bottom:20px">
<thead><tr><td></td><td>Fancy name</td><td>ID</td><td>This module is incompatible with</td></tr></thead>
<%
List<Module> modules = (List<Module>)request.getAttribute("modules");
for (Module currentModule : modules){
    String currentModuleIncompatibilities = "";
    if (currentModule.getIncompatibilities() != null){
    for (String currentIncompatibility : currentModule.getIncompatibilities()){
		currentModuleIncompatibilities += currentIncompatibility + ", ";
    }
    if (currentModule.getIncompatibilities().size() > 0)
	currentModuleIncompatibilities = currentModuleIncompatibilities.substring(0, currentModuleIncompatibilities.length() - 2);
    }
    
	out.print("<tr><td><input class='select' type='checkbox' id='" + currentModule.getId() + "'/></td><td>" + currentModule.getName() + 
		"</td><td>" + currentModule.getId() + "</td><td>" + currentModuleIncompatibilities + "</td></tr>");
}
%>
</table>
	<p style="margin-top:10px">Pretty print URL (will be removed after the beta)</p>
	<input id="printurl" type="text" style="width:900px" />
		<p style="margin-top:10px">Archive URL (will be removed after the beta)</p>
	<input id="downloadurl" type="text" style="width:900px; margin-bottom:20px;" />
	<button id="download" class="orangeblock" style="width:320px">Download!</button>
	<button id="print" class="orangeblock" style="width:320px">What's inside?</button>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')</script>

<script>
var initializrBuilderType = 'advanced';
var initializrBuilderMode = 'custom';
</script>

<%@ include file="footer.jsp" %>

<script>
/*
$(function(){
	var beginurl = 'http://jverrecchia-initializr.appspot.com/builder?';
	var urlparameters = "";
	
	var mode = 'custom';
	var modules = {
		'h5bp-404' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-adobecrossdomain' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-analytics' : {'enabled' : false, 'default' : []},
		'h5bp-appletouchicons' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
		'h5bp-chromeframe' : {'enabled' : false, 'default' : ['izr']},
		'h5bp-content' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
		'h5bp-css' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-csshelpers' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-favicon' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-htaccess' : {'enabled' : false, 'default' : []},
		'h5bp-humans' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-iecond' : {'enabled' : false, 'default' : []},
		'h5bp-mediaqueries' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-mediaqueryprint' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-nginx' : {'enabled' : false, 'default' : []},
		'h5bp-oldiecond' : {'enabled' : false, 'default' : []},
		'h5bp-primarystyles' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-readmemd' : {'enabled' : false, 'default' : []},
		'h5bp-robots' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-scripts' : {'enabled' : false, 'default' : []},
		'h5bp-webconfig' : {'enabled' : false, 'default' : []},
		'html5shiv' : {'enabled' : false, 'default' : []},
		'izr-jqtest' : {'enabled' : false, 'default' : []},
		'izr-styles' : {'enabled' : false, 'default' : ['izr']},
		'jquery' : {'enabled' : false, 'default' : []},
		'modernizr' : {'enabled' : false, 'default' : []},
		'respond' : {'enabled' : false, 'default' : []},
		'simplehtmltag' : {'enabled' : false, 'default' : []}
	};
	updateCheckBoxes();
	
	$('.mode').click(function(){
		mode = $(this).attr('value');
		updateMode();
		updateCheckBoxes(true);
		updateURLs();
	});
	
	$('.select').click(function(){
		if ($(this).prop('checked'))
			modules[$(this).attr('id')].enabled = true;
		else
			modules[$(this).attr('id')].enabled = false;
		updateURLs();
	});
	
	$("#print").click(function(){
		updateURLs();
		window.location = (beginurl + 'print&' + urlparameters);
	});
	$("#download").click(function(){
		updateURLs();
		window.location = (beginurl + urlparameters);
	});	
	
	function updateMode(){
		for (curModule in modules){
			if ($.inArray(mode, modules[curModule]['default']) >= 0){
				modules[curModule].enabled = true;
			}
			else
				modules[curModule].enabled = false;
		}
	}
	
	function updateCheckBoxes(disableDefaults){
		for (curModule in modules){
			if (modules[curModule].enabled){
				$('#' + curModule).prop('checked', true);
				if (disableDefaults)
					$('#' + curModule).prop('disabled', true);
			}

			else {
				$('#' + curModule).prop('checked', false);
				if (disableDefaults)
					$('#' + curModule).prop('disabled', false);			
			}
		}
	}
	
	function updateURLs(){
		urlparameters = '';

		if (mode == 'h5bp')
			urlparameters = 'mode=h5bp&';
		else if (mode != 'izr')
			urlparameters = 'mode=custom&';		
		
		for (curModule in modules){
			if (modules[curModule].enabled == true && $.inArray(mode, modules[curModule]['default']) == -1)
				urlparameters += curModule + '&';
		}
		
		if (urlparameters[urlparameters.length - 1] == '&')
			urlparameters = urlparameters.substr(0, urlparameters.length - 1);
		
		$('#printurl').attr('value', beginurl + 'print&' + urlparameters);
		$('#downloadurl').attr('value', beginurl + urlparameters);
	}
});
*/
</script>

</body>
</html>
