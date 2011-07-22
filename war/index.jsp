<%@ page import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List" %>
<!doctype html> 
<html lang="en">
<head>
	<meta charset="utf-8" />
    <title>Initializr - Start your HTML5 project in 15 seconds!</title>
    <style>
    	.default{
    		color:blue;
    	}
    </style>
</head>
<body>

<h1>Initializr - API & Docs</h1>


Custom Build <input type="radio" class="mode" name="mode" value="custom" /><br />
Initializr <input type="radio" class="mode" name="mode" value="izr" /><br />
H5BP Custom Builder<input type="radio" class="mode" name="mode" value="h5bp"/>
<br /><br />
<table style="margin-bottom:100px">
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
<div style="position:fixed; bottom:0; background:#ddd">
	<input id="printurl" type="text" style="width:900px" />
	<button id="print">Print</button><br />
	<input id="downloadurl" type="text" style="width:900px" />
	<button id="download">Download</button>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')</script>

<script>
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

</script>

</body>
</html>
