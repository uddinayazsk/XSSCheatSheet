<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DOM_Rule #2</title>
<%@include file="header.jsp"%>
<script>
	function displayBeforeApplyingRule() {
		//Logic here
		document.getElementById("beforeApplyRuleDiv").innerHTML = document
				.getElementById("userInput").value;
		// For code snippets
		document.getElementById("beforeApplyRuleCSDiv").innerHTML = "document.getElementById(\"beforeApplyRuleDiv\").innerHTML = document.getElementById(\"userInput\").value\;";
	}
	function jsEscape(userInput){
		var value = (userInput!=null && userInput != "")?escape(userInput):null;
		return value;
	}
	function displayAfterApplyingRule() {
		//Logic here
		var status = validateUserInput();
		if(status){
		displayBeforeApplyingRule();
		document.getElementById("Output").innerHTML = jsEscape(document
				.getElementById("userInput").value);
		document.getElementById("safeBroken").innerHTML = jsEscape(document
				.getElementById("userInput").value);
		document.getElementById("safeCorrect").innerHTML = jsEscape(document
				.getElementById("userInput").value);

		// For code snippets
		document.getElementById("afterApplyRuleCSDiv").innerHTML = "document.getElementById(\"afterApplyRuleDiv\").innerHTML = Encrypt(document.getElementById(\"userInput\").value)\;";
	}
	}
</script>
</head>
<body>
	<div id="ruleHeaderDiv">
		<h3>RULE #2 - JavaScript Escape Before Inserting Untrusted Data
			into HTML Attribute Sub context within the Execution Context</h3>
	</div>
	<div class="alignRight">
		<h3>
			<a href='#' onclick='overlay("sourcecode/Rule2.txt")'>Source
				Code</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;
		</h3>
	</div>
	<br />
	<table id="searchHeadTable" border=0>
		<tr>
			<td width="60%">
				<div id="searchDiv">
					<input type="text" value="" id="userInput" name="userInput" onkeypress="validateUserInputEnterKeyPress(event);" /> <input
						type="button" value="Apply Rule" id="btnApplyRule"
						name="btnApplyRule" onClick="displayAfterApplyingRule()" />
				</div>
			</td>
			<td width="40%">Sample inputs that could be used in textbox,
				<ul>
					<li>&lt;div id="vshesh" class="Mingle"&gt;/div&gt;var div = document.body.children[0];div.setAttribute('Test', 123);</li>
					<li>document.body.setAttribute('id','mingle-lingle-ningle');alert(document.body.id)</li>
				</ul>
			</td>
		</tr>
	</table>
	<div id="mainContentDiv">
		<!-- Output divs -->
		<div id="beforeApplyRuleMainDiv">
			<h4>Before Applying Rule</h4>
			<div id="beforeApplyRuleDiv">Output</div>
			<h4>CODE SNIPPET</h4>
			<div id="beforeApplyRuleCSDiv">Source Code</div>
		</div>
		<div id="afterApplyRuleMainDiv">
			<h4>After Applying Rule</h4>
			<div id="afterApplyRuleDiv">Output</div>
				<div id="Output"></div>
				<h5>SAFE but BROKEN example's Output</h5>
				<div id="safeBroken"></div>
				<h5>SAFE and FUNCTIONALLY CORRECT example's Output</h5>
				<div id="safeCorrect"></div>
			<h4>CODE SNIPPET</h4>
			<div id="afterApplyRuleCSDiv">Source Code</div>
		</div>		
	</div>
	<%@include file="overlay.jsp"%>
</body>
</html>