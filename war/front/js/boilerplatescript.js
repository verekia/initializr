$(function(){
	var cond = "";
	var stylesheets = ""
	var javascript = "";
	var compatibility = "";
	var server = "";
	var analytics = "";
	
	var parameters = "";
	
	$("a.selection").click(function(){
		$(this).parent().find("a.selection").removeClass("selected");
		$(this).addClass("selected");
		
		if ($(this).attr("id") == "nocond")
			cond = "no-cond&";
		if ($(this).attr("id") == "oldie")
			cond = "oldie&";
		if ($(this).attr("id") == "condie")
			cond = "";		
		
		if ($(this).attr("id") == "nohand")
			stylesheets = "";
		if ($(this).attr("id") == "hand")
			stylesheets = "hand&";				
		
		if ($(this).attr("id") == "nojs")
			javascript = "no-js&";
		if ($(this).attr("id") == "nojq")
			javascript = "no-jq&";		
		if ($(this).attr("id") == "jqdev")
			javascript = "jqdev&";		
		if ($(this).attr("id") == "jq")
			javascript = "";
		
		if ($(this).attr("id") == "modernizr")
			compatibility = "";
		if ($(this).attr("id") == "html5shiv")
			compatibility = "shiv&";			
		if ($(this).attr("id") == "nocompat")
			compatibility = "no-compat&";
		
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
		
		if (cond == "" &&
			stylesheets == "" &&
			javascript == "" &&
			compatibility == "" &&
			server == "" &&
			analytics == "")
			parameters = "";
		else
			parameters = "&" + cond + stylesheets + javascript + compatibility + server + analytics;
		
		if (parameters.charAt(parameters.length - 1) == '&')
			parameters = setCharAt(parameters, parameters.length - 1, '');
			
		
		$("#download").attr("href", "generate?boilerplate" + parameters);		
		
		return false;
	});

	$("#download").click(function(){
		_gaq.push(['_trackPageview', '/DL/Boilerplate/' + parameters]);
	});
	
});



function setCharAt(str,index,chr) {
	if(index > str.length-1) return str;
	return str.substr(0,index) + chr + str.substr(index+1);
}
