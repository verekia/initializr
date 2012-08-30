$(function(){

	/************
	    CONFIG
	 ************/
	var config = {

		defaultModules:{
			blank: [
			        'css-mode',
			        'h5bp-content',
			        'modernizr',
			        'jquerymin',
			        'h5bp-htaccess',
			        'h5bp-chromeframe',
		            'h5bp-analytics',
		            'h5bp-iecond',
		            'h5bp-favicon',
		            'h5bp-appletouchicons',
		            'h5bp-scripts',
		            'h5bp-robots',
		            'h5bp-humans',
		            'h5bp-404',
		            'h5bp-adobecrossdomain'
			        ],
			initializr: [
			             'css-mode',
			             'izr-responsive',
			             'modernizr',
			             'respond',
			             'jquerymin',
			             'h5bp-chromeframe',
			             'h5bp-analytics',
			             'h5bp-favicon',
			             'h5bp-appletouchicons',
			             'h5bp-iecond'
			             ],
			bootstrap: [
			            'boot-hero',
			             'modernizr',
			             'respond',
			             'jquerymin',
			             'h5bp-chromeframe',
			             'h5bp-analytics',
			             'h5bp-favicon',
			             'h5bp-appletouchicons',
			             'h5bp-iecond'
			            ]
		},
		baseUrl:'builder?'
	};
	
	/************
	   VARIABLES
	 ************/
	
	var params;
	var modules = [];
	var stylelang = '';

	/**********
	   EVENTS
	 **********/	

	$('input').click(function(){
		update();
	});

	
	$('#preconfig-blank').click(function(){
		fillDefaultModules('blank');
		_gaq.push(['_trackEvent', 'preconfig', 'h5bp-classic']);
	});

	$('#preconfig-initializr').click(function(){
		fillDefaultModules('initializr');
		_gaq.push(['_trackEvent', 'preconfig', 'responsive']);
	});
	
	$('#preconfig-bootstrap').click(function(){
		fillDefaultModules('bootstrap');
		_gaq.push(['_trackEvent', 'preconfig', 'bootstrap']);
	});

	$('#download-link').click(function(){
		_gaq.push(['_trackEvent', 'action', 'download']);
	});

	$('#preview-link').click(function(){
		_gaq.push(['_trackEvent', 'action', 'preview']);
	});
	
	/*********
	   LOGIC
	 *********/
	
	function fillDefaultModules(type){
		$('input').attr('checked', false);
				
		for (var i = 0, curModule; curModule = config.defaultModules[type][i++];){
			$('input[value=' + curModule +']').attr('checked', true);
		};
		update();
		$('#hidden-section').fadeIn('slow');
	}
	
	function update(){
		updateModules();
		updateUrls();
	}
	
	function updateModules(){
		modules = [];
		$('input').each(function(){
			if ($(this).is(':checked'))
				modules.push($(this).val());
		});
		replaceSpecialModules();
	}
	
	function replaceSpecialModules(){
		if (modules.indexOf('jquerymin') != -1 && modules.indexOf('jquerydev') != -1){
			modules.remove('jquerymin');
			modules.remove('jquerydev');
			modules.push('jquery');
		}

		if (modules.indexOf('modernizr') != -1 && modules.indexOf('respond') != -1){
			modules.remove('modernizr');
			modules.remove('respond');
			modules.push('modernizrrespond');
		}

		if (modules.indexOf('html5shiv') != -1 && modules.indexOf('respond') != -1){
			modules.remove('html5shiv');
			modules.remove('respond');
			modules.push('html5shivrespond');
		}
		
		if (modules.indexOf('less-mode') != -1){
			modules.remove('less-mode');
			stylelang = 'less';
		}
		else
			stylelang = '';
		
		if (modules.indexOf('css-mode') != -1){
			modules.remove('css-mode');
		}
		
		if (modules.indexOf('h5bp-content') != -1 || modules.indexOf('izr-responsive') != -1){
			modules.push('h5bp-css');
			modules.push('h5bp-csshelpers');
			modules.push('h5bp-mediaqueryprint');
		}

		if (modules.indexOf('h5bp-content') != -1){
			modules.push('h5bp-mediaqueries');
		}
		
		if (modules.indexOf('h5bp-iecond') == -1){
			modules.push('simplehtmltag');
		}		

		if (modules.indexOf('h5bp-scripts') == -1){
			modules.push('izr-emptyscript');
		}		
		
		if (modules.indexOf('boot-hero') != -1){
			modules.push('boot-css');
			modules.push('boot-scripts');
			if (modules.indexOf('jquery') == -1 && modules.indexOf('jquerydev') == -1 && modules.indexOf('jquerymin') == -1){
				modules.push('jquerymin');
			}
		}		
		
		
	}
	
	function updateUrls(){
		var modeParam = '';
		
		if (stylelang != ''){
			modeParam = 'mode=' + stylelang + '&';
		}

		params = '';
		
		for (var i = 0, curModule; curModule = modules[i++];){
			params += curModule + '&';
		}
		
		params = params.substring(0, params.length - 1);

		$('#preview-url').val(config.baseUrl + 'print&' + modeParam + params);
		$('#download-url').val(config.baseUrl + modeParam + params);	
		
		$('#preview-link').attr('href', config.baseUrl + 'print&' + modeParam + params);
		$('#download-link').attr('href', config.baseUrl + modeParam + params);	
	}	

	/***********
	   HELPERS
	 ***********/
	
	if (!Array.indexOf){
		Array.prototype.indexOf = function(searchedElement){
			for (var i = 0; i < this.length; i++){
				if (this[i] === searchedElement)
					return i;
			};
			return -1;
		};
	}
	
	Array.prototype.remove = function(searchedElement){
		var i = this.indexOf(searchedElement);
		if (i != -1)
			this.splice(i, 1);
	};
	
	/***********
	    MAIN
	 ***********/
	
	if ($('input:checked').length > 0)
		$('#hidden-section').fadeIn(0);
	update();
	
	
});
