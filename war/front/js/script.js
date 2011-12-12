
$(function() {
	var beginurl = '/builder?';
	var urlparameters = "";

	var mode;
	var modules;
	
	var simpleDefaultModules = ['izr-responsive', 'izr-emptyscript', 'jquery', 'modernizrrespond', 'h5bp-chromeframe', 'h5bp-analytics'];
	
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
		'izr-responsive' : {
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
		'jquerydev' : {
			'enabled' : false,
			'default' : []
		},
		'jquerymin' : {
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
		'modernizrrespond' : {
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
			'izr-responsive' : {'enabled' : false, 'default' : []},
			'izr-emptyscript' : {'enabled' : false, 'default' : []},
			'jquery' : {'enabled' : false, 'default' : []},
			'jquerydev' : {'enabled' : false, 'default' : []},
			'jquerymin' : {'enabled' : false, 'default' : []},
			'modernizr' : {'enabled' : false, 'default' : []},
			'respond' : {'enabled' : false, 'default' : []},
			'modernizrrespond' : {'enabled' : false, 'default' : ['h5bp']},
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

	$('#leftoptions').click(function(){
		_gaq.push(['_trackEvent', 'DL featured', 'clicked']);
	});


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
		_gaq.push(['_trackEvent', initializrBuilderMode + ' ' + initializrBuilderType + ' Print ' + urlparameters, 'clicked']);
	});
	$("#download").click(function() {
		updateURLs();
		window.location = (beginurl + urlparameters);
		_gaq.push(['_trackEvent', initializrBuilderMode + ' ' + initializrBuilderType + ' DL ' + urlparameters, 'clicked']);
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
		_gaq.push(['_trackEvent', 'Simple Custom', 'clicked']);
	});
}
});	