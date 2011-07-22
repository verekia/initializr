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

<h1>Modules</h1>
Custom Build <input type="radio" class="mode" name="mode" value="custom" /><br />
Initializr <input type="radio" class="mode" name="mode" value="izr" /><br />
H5BP Custom Builder<input type="radio" class="mode" name="mode" value="h5bp"/>
<table>
<thead><tr><td></td><td>Fancy name</td><td>ID</td><td>Module Author</td><td>This module is incompatible with</td></tr></thead>
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
		"</td><td>" + currentModule.getId() + "</td><td>"
		+ currentModule.getAuthor() + "</td><td>" + currentModuleIncompatibilities + "</td></tr>");
}
%>
</table>

<!-- <input id="printurl" type="text" style="width:500px" /> -->
<button id="print">Print</button><br />
<!-- <input id="downloadurl" type="text" style="width:500px" /> -->
<button id="download">Download</button>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')</script>

<script>
$(function(){
	var commonurl = 'http://localhost:8888';
	var printurl = commonurl + '/builder?print';
	var downloadurl = commonurl + '/builder';
	
	var modules = {
		'h5bp-404' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-adobecrossdomain' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-analytics' : {'enabled' : false, 'default' : []},
		'h5bp-appletouchicons' : {'enabled' : false, 'default' : ['h5bp']},
		'h5bp-chromeframe' : {'enabled' : false, 'default' : []},
		'h5bp-content' : {'enabled' : false, 'default' : ['h5bp']},
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
		'h5tml5shiv' : {'enabled' : false, 'default' : []},
		'izr-jqtest' : {'enabled' : false, 'default' : []},
		'izr-styles' : {'enabled' : false, 'default' : ['izr']},
		'jquery' : {'enabled' : false, 'default' : []},
		'modernizr' : {'enabled' : false, 'default' : []},
		'respond' : {'enabled' : false, 'default' : []},
		'simplehtmltag' : {'enabled' : false, 'default' : []}
	};
	
	$('.mode').click(function(){
		switchMode($(this).attr('value'));
		updateCheckBoxes(true);
	});
	
	$('.select').click(function(){
		if ($('#' + $(this)).prop('checked', true))
			modules[$(this).attr('id')] = true;
			updateCheckBoxes(false);
	});
	
	$("#print").click(function(){
		
		//alert(printurl);
	});
	$("#download").click(function(){
		$("#downloadurl").attr("value", downloadurl);
	});	
	
	function switchMode(mode){
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
});

</script>

</body>
</html>
