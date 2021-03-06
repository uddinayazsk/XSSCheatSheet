<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rule #4</title>
<%@include file="header.jsp"%>
<script>
	function displayBeforeApplyingRule() {
		//Logic here
		var beforeApplyRuleDivObj = document.getElementById("beforeApplyRuleDiv");
		beforeApplyRuleDivObj.innerHTML = "";
		var userInputs = document.getElementById('userInput').value;
		
		beforeApplyRuleDivObj.style.backgroundImage = 'url(' + userInputs + ')';
		beforeApplyRuleDivObj.style.backgroundRepeat = "no-repeat";
		beforeApplyRuleDivObj.innerHTML=userInputs;
				
		// For code snippets
		document.getElementById("beforeApplyRuleCSDiv").innerHTML = "document.getElementById(\"beforeApplyRuleDiv\").innerHTML = document.getElementById(\"userInput\").value\;";
	}
	
	function jsEncodeURI(userInput){
		var value = (userInput!=null && userInput != "")?encodeURI(userInput):null;
		return value;
	}
	
	
	function displayAfterApplyingRule() {
		//Logic here
		var status = validateUserInput();
		if(status){
		displayBeforeApplyingRule();
		var afterApplyRuleDivObj=document.getElementById("afterApplyRuleDiv");
		afterApplyRuleDivObj.innerHTML = "";
		var userInput = document.getElementById('userInput').value;
	 	afterApplyRuleDivObj.style.backgroundImage = 'url(' + jsEncodeURI(userInput) + ')';
		afterApplyRuleDivObj.style.backgroundRepeat = "no-repeat";
		
		afterApplyRuleDivObj.innerHTML=jsEncodeURI(userInput);

		// For code snippets
		document.getElementById("afterApplyRuleCSDiv").innerHTML = "document.getElementById(\"afterApplyRuleDiv\").innerHTML = encodeURI(document.getElementById(\"userInput\").value)\;";
	}
	}
</script>
</head>
<body>
	<div id="ruleHeaderDiv">
		<h3>RULE #4 - JavaScript Escape Before Inserting Untrusted Data into the CSS Attribute Subcontext within the Execution Context</h3>
	</div>
	<div class="alignRight">
		<h3>
			<a href='#' onclick='overlay("sourcecode/DOM_Rule4.txt")'>Source
				Code</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;
		</h3>
	</div>
	<br />
	<table id="searchHeadTable" border=0>
		<tr>
			<td width="60%">
				<div id="searchDiv">
					<input type="text" value="" id="userInput" name="userInput" onkeypress="validateUserInputEnterKeyPress(event);"/> <input
						type="button" value="Apply Rule" id="btnApplyRule"
						name="btnApplyRule" onClick="displayAfterApplyingRule()" />
				</div>
			</td>
			<td width="40%">Sample inputs that could be used in textbox,
				<ul>
				<li> images/Beautiful Sea Wallpaper.jpg</li>
				<li>images/tick icon.png</li>
					</ul>
			</td>
		</tr>
	</table>
	<div id="mainContentDiv">
		<!-- Output divs -->
		<div id="beforeApplyRuleMainDiv">
			<h4>Before Applying Rule</h4>
			<div id="beforeApplyRuleDiv" style="height: 200px;">Output</div>
			<h4>CODE SNIPPET</h4>
			<div id="beforeApplyRuleCSDiv">Source Code</div>
		</div>
		<div id="afterApplyRuleMainDiv">
			<h4>After Applying Rule</h4>
			<div id="afterApplyRuleDiv" style="height: 200px;">Output</div>
			<h4>CODE SNIPPET</h4>
			<div id="afterApplyRuleCSDiv">Source Code</div>
		</div>		
	</div>
	<%@include file="overlay.jsp"%>
</body>
</html>