<%@ page import="com.jverrecchia.initializr.builder.mode.Mode,
				com.jverrecchia.initializr.builder.Const,
				com.jverrecchia.initializr.builder.modules.*,
				java.util.List" %>
<%@ include file="header.jsp" %>

<h1>Advanced Customization</h1>
<p style="margin:20px 0">This page allows you to add some modules that are neither available on the simple custom' builder nor HTML5 <a href="http://html5boilerplate.com/#builder-custom">Boilerplate Custom</a>.
By selecting "Initializr" or "H5BP Custom Builder" options, you'll activate the minimal default configuration of these builders.</p>
<div id="advanced">
<input type="radio" class="mode" name="mode" value="custom" />Custom Build (nothing enabled by default)<br />
<input type="radio" class="mode" name="mode" value="izr" />Initializr (similar to simple custom')<br />
<input type="radio" class="mode" name="mode" value="h5bp"/>H5BP Custom Builder (similar to html5boilerplate.com)
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
	<p style="margin-top:10px">Pretty print URL</p>
	<input id="printurl" type="text" style="width:900px" />
		<p style="margin-top:10px">Archive URL</p>
	<input id="downloadurl" type="text" style="width:900px; margin-bottom:20px;" />
	<button id="download" class="orangeblock" style="width:320px">Download!</button>
	<button id="print" class="orangeblock" style="width:320px">What's inside?</button>

</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.1.min.js"><\/script>')</script>

<script>
var initializrBuilderType = 'advanced';
var initializrBuilderMode = 'custom';
</script>

<%@ include file="footer.jsp" %>

</body>
</html>
