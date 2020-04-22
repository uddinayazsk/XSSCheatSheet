<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DOM_Rule #3</title>
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
		var afterApplyRuleDivObj = document.getElementById("afterApplyRuleDiv");
		afterApplyRuleDivObj.innerHTML = "";		
		var userInput = document.getElementById('userInput').value;
		var aTag = document.createElement('a');
		aTag.setAttribute('onclick',jsEscape(userInput));
		aTag.innerHTML =jsEscape(userInput);
		afterApplyRuleDivObj.appendChild(aTag);
		
		//document.getElementById("afterApplyRuleDiv").innerHTML =escape(document
		//		.getElementById("userInput").value);
		//var userInput = document.getElementById('userInput').value;
		//var aTag = document.createElement('a');
		//aTag.setAttribute("onclick", "\u0074\u0065\u0073\u0074\u0049\u0074\u003b\u0074\u0065\u0073\u0074\u0049\u0074");
		//aTag.innerHTML = jsEscape(aTag);
		//aTag.appendChild(aTag);
		
		// For code snippets
		document.getElementById("afterApplyRuleCSDiv").innerHTML = "document.getElementById(\"afterApplyRuleDiv\").innerHTML = jsEscape(document.getElementById(\"userInput\").value)\;";
		//document.getElementById("afterApplyRuleCSDiv").innerHTML =jsEscape("");
	
	}
	}
</script>
</head>
<body>
	<div id="ruleHeaderDiv">
		<h3>RULE #3 - Be Careful when Inserting Untrusted Data into the Event Handler and JavaScript code Subcontexts within an Execution Context</h3>
	</div>
	<div class="alignRight">
		<h3>
			<a href='#' onclick='overlay("sourcecode/DOM_Rule3.txt")'>Source
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
					<li>\u0074\u0065\u0073\u0074\u0049\u0074\u003b\u0074\u0065\u0073\u0074\u0049\u0074</li>
					<li>\u0048\u0065\u006c\u006c\u006f\u0020\u0057\u006f\u0072\u006c\u0064</li>
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
			<h4>CODE SNIPPET</h4>
			<div id="afterApplyRuleCSDiv">Source Code</div>
		</div>		
	</div>
	<%@include file="overlay.jsp"%>
</body>
</html>