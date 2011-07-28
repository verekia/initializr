
$(function() {
	var beginurl = '/builder?';
	var urlparameters = "";

	var mode;
	var modules;
	
	var simpleDefaultModules = ['izr-samplepage', 'izr-emptyscript', 'jquery', 'modernizr', 'respond', 'h5bp-chromeframe', 'h5bp-analytics'];
	
	var simpleModules = {
		'h5bp-analytics' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-chromeframe' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-content' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-htaccess' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-iecond' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-nginx' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-oldiecond' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-readmemd' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-robots' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-scripts' : {
			'enabled' : false,
			'default' : []
		},
		'h5bp-webconfig' : {
			'enabled' : false,
			'default' : []
		},
		'html5shiv' : {
			'enabled' : false,
			'default' : []
		},
		'izr-samplepage' : {
			'enabled' : false,
			'default' : []
		},
		'izr-emptyscript' : {
			'enabled' : false,
			'default' : []
		},
		'jquery' : {
			'enabled' : false,
			'default' : []
		},
		'modernizr' : {
			'enabled' : false,
			'default' : []
		},
		'respond' : {
			'enabled' : false,
			'default' : []
		},
		'simplehtmltag' : {
			'enabled' : false,
			'default' : []
		}
	};
	
	var advancedModules = {
			'h5bp-404' : {'enabled' : false, 'default' : ['h5bp']},
			'h5bp-adobecrossdomain' : {'enabled' : false, 'default' : ['h5bp']},
			'h5bp-analytics' : {'enabled' : false, 'default' : []},
			'h5bp-appletouchicons' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
			'h5bp-chromeframe' : {'enabled' : false, 'default' : []},
			'h5bp-content' : {'enabled' : false, 'default' : ['h5bp']},
			'h5bp-css' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
			'h5bp-csshelpers' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
			'h5bp-favicon' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
			'h5bp-htaccess' : {'enabled' : false, 'default' : []},
			'h5bp-humans' : {'enabled' : false, 'default' : ['h5bp']},
			'h5bp-iecond' : {'enabled' : false, 'default' : ['izr']},
			'h5bp-mediaqueries' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
			'h5bp-mediaqueryprint' : {'enabled' : false, 'default' : ['h5bp', 'izr']},
			'h5bp-nginx' : {'enabled' : false, 'default' : []},
			'h5bp-oldiecond' : {'enabled' : false, 'default' : []},
			'h5bp-readmemd' : {'enabled' : false, 'default' : []},
			'h5bp-robots' : {'enabled' : false, 'default' : ['h5bp']},
			'h5bp-scripts' : {'enabled' : false, 'default' : []},
			'h5bp-webconfig' : {'enabled' : false, 'default' : []},
			'html5shiv' : {'enabled' : false, 'default' : []},
			'izr-samplepage' : {'enabled' : false, 'default' : []},
			'izr-emptyscript' : {'enabled' : false, 'default' : []},
			'jquery' : {'enabled' : false, 'default' : []},
			'modernizr' : {'enabled' : false, 'default' : []},
			'respond' : {'enabled' : false, 'default' : []},
			'simplehtmltag' : {'enabled' : false, 'default' : []}
		};
	
	if (typeof initializrBuilderMode != 'undefined'){
	
	if (initializrBuilderMode == 'izr')
		mode = 'izr';
	else
		mode = 'custom';
	
	if (initializrBuilderType == 'simple')
		modules = simpleModules;
	if (initializrBuilderType == 'advanced')
		modules = advancedModules;


	$('.mode').click(function() {
		mode = $(this).attr('value');
		updateMode();
		updateCheckBoxes(true);
		updateURLs();
	});

	$('.select').click(function() {
		modules[$(this).attr('id')].enabled = $(this).prop('checked');
		updateData(true);
		updateURLs();
	});

	$("#print").click(function() {
		updateURLs();
		window.location = (beginurl + 'print&' + urlparameters);
	});
	$("#download").click(function() {
		updateURLs();
		window.location = (beginurl + urlparameters);
	});

	function updateMode() {
		for (var curModule in modules) {
			if ($.inArray(mode, modules[curModule]['default']) >= 0) {
				modules[curModule].enabled = true;
			} else
				modules[curModule].enabled = false;
		}
	}

	function loadDefaultModules(){
		if (initializrBuilderType == 'simple'){
			for (var currentModuleDefault in simpleDefaultModules){
				modules[simpleDefaultModules[currentModuleDefault]].enabled = true;
				$("#" + currentModuleDefault).prop('checked', true);
			}
		}
	}
	
	function updateData(checkEnabled){
		if (checkEnabled){
			for (var curModule in modules) {
			modules[curModule].enabled = $("#" + curModule).prop('checked');
			}
		}
		// updates the form too
		for (var curModule in modules) {
			$('#' + curModule).prop('checked', modules[curModule].enabled);
		}		
	}
	
	function updateCheckBoxes(disableDefaults) {
		for (var curModule in modules) {
			if (modules[curModule].enabled) {
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

	function updateURLs() {
		urlparameters = '';

		if (mode == 'h5bp')
			urlparameters = 'mode=h5bp&';
		else if (mode != 'izr')
			urlparameters = 'mode=custom&';

		for (var curModule in modules) {
			if (modules[curModule].enabled == true
					&& $.inArray(mode, modules[curModule]['default']) == -1)
				urlparameters += curModule + '&';
		}

		if (urlparameters[urlparameters.length - 1] == '&')
			urlparameters = urlparameters.substr(0,
					urlparameters.length - 1);

		$('#printurl').attr('value', beginurl + 'print&' + urlparameters);
		$('#downloadurl').attr('value', beginurl + urlparameters);
	}
	
	$('#centeroptions').click(function(){
		$('#simplecustom').slideDown('normal', function(){
			loadDefaultModules();	
			updateData(false);
			updateURLs();
			//updateCheckBoxes();
		});
	});
}
});	
	
	/*
	var htmlcss = "";
	var javascript = "";
	var compatibility = "";
	var server = "";
	var analytics = "";
	
	var parameters = "";
	
	$("a.selection").click(function(){
		$(this).parent().find("a.selection").removeClass("selected");
		$(this).addClass("selected");
		
		
		if ($(this).attr("id") == "nocontent")
			htmlcss = "no-content&";
		if ($(this).attr("id") == "izrsample")
			htmlcss = "";		
		
		if ($(this).attr("id") == "nojs")
			javascript = "no-js&";
		if ($(this).attr("id") == "nojq")
			javascript = "no-jq&";		
		if ($(this).attr("id") == "jq")
			javascript = "";
		if ($(this).attr("id") == "jqdev")
			javascript = "jqdev&";		
		
		if ($(this).attr("id") == "modernizr")
			compatibility = "";
		if ($(this).attr("id") == "html5shiv")
			compatibility = "shiv&";			
		
		if ($(this).attr("id") == "noserver")
			server = "";
		if ($(this).attr("id") == "htaccess")
			server = "htaccess&";		
		if ($(this).attr("id") == "webconfig")
			server = "webconfig&";
		if ($(this).attr("id") == "nginx")
			server = "nginx&";	
		
		if ($(this).attr("id") == "analytics")
			analytics = "analytics&";
		if ($(this).attr("id") == "noanalytics")
			analytics = "";			
		
		if (htmlcss == "" &&
			javascript == "" &&
			compatibility == "" &&
			server == "" &&
			analytics == "")
			parameters = "";
		else
			parameters = "?" + htmlcss + javascript + compatibility + server + analytics;
		
		if (parameters.charAt(parameters.length - 1) == '&')
			parameters = setCharAt(parameters, parameters.length - 1, '');
			
		
		$("#download").attr("href", "generate" + parameters);		
		
		return false;
	});

	$("#download").click(function(){
		_gaq.push(['_trackPageview', '/DL/' + parameters]);
	});
	
});



function setCharAt(str,index,chr) {
	if(index > str.length-1) return str;
	return str.substr(0,index) + chr + str.substr(index+1);
}
*/
	
