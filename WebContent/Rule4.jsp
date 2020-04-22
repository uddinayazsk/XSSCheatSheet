<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RULE #4</title>
<%@include file="header.jsp"%>
</head>
<body>
	<div align="center" style="color: brown; text-decoration: underline">
		<h3>RULE #4 - CSS Escape And Strictly Validate Before Inserting
			Untrusted Data into HTML Style Property Values</h3>
	</div>
	<div align="right">
		<h3>
			<a href='#' onclick='overlay("sourcecode/Rule4.txt")'>Source Code</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;
		</h3>
	</div>
	<br/><br/><br/>
	<%
		String userInput = request.getParameter("userInput");
		userInput = (userInput != null)?userInput:""; 
		String encodedUserInput = EsapiWrapper.esapiEncodeForCSS(userInput);
	%>
	<form action="Rule4.jsp" method="post" onsubmit="return validateUserInput();">
		<input type="text" name="userInput" id="userInput" value='<%=userInput%>' onkeypress="validateUserInputEnterKeyPress(event);"> <input
			type="Submit" value="Apply Rule" id="btnApplyRule"
			name="btnApplyRule"/>
	</form>
	<table id="searchHeadTable" border=0>
		<tr>
			<td width="80%"></td>
			<td width="40%">Sample inputs that could be used in text box
				<ul>
					<li>5px solid red</li>
					<li>2px dotted green</li>
				</ul>
			</td>
		</tr>
	</table>
	<div id="beforeApplyRuleMainDiv">
		<h4>Before Applying rule</h4>
		<div class="highlight">&lt;/span style="property : ...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE.../"&gt; text &lt;/style&gt; </div>
		<div id="beforeApplyRuleDiv">OUTPUT</div>
		<h1></h1>
		<div class="highlight">&lt;style&gt;selector{property: ...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...; }&lt;/style&gt;</div>
			<div>&lt;style&gt;.mainContent{border: 1px solid green;}&lt;/style&gt; <br /></div> <br>
			<div class="highlight">&lt;style&gt;{selector property :"...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE..."; }&lt;/style&gt;</div>
			<div>&lt;style&gt;.mainContent{"border: 1px solid green;"}&lt;/style&gt; <br /></div> <br>
		
		<h4>CODE SNIPPET</h4>
		<div id="beforeApplyRuleCSDiv">Source Code</div>
	</div>
	<div id="afterApplyRuleMainDiv">
		<h4>After Applying Rule</h4>
		<div class="highlight">&lt;/span style="property : ...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE.../"&gt; text &lt;/style&gt; </div>
		<div id="after_wrapper">
		<div id="afterApplyRuleDiv">OUTPUT</div>
		<div id="afterApplyRuleDiv" style="">
				
			</div>
			<br />
			
			<div class="highlight">&lt;style&gt;selector{property: ...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...; }&lt;/style&gt;</div>
			<div>&lt;style&gt;.mainContent{border: 1px solid green;}&lt;/style&gt; (CSS encrypted value)<br /></div> <br>
			<div class="highlight">&lt;style&gt;{selector property :"...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE..."; }&lt;/style&gt;</div>
			<div>&lt;style&gt;.mainContent{"border: 1px solid green;"}&lt;/style&gt; (CSS encrypted value)<br /></div> <br>
			<br />
			</div>
		<h4>CODE SNIPPET</h4>
		<div id="afterApplyRuleCSDiv">Source Code</div>
	</div>
<%@include file="overlay.jsp"%>
</body>
</html>

<%
	String btnApplyRule = request.getParameter("btnApplyRule");
	String beforeSrc = null;	
	String afterSrc = null;
	if(btnApplyRule != null && btnApplyRule.equalsIgnoreCase("Apply Rule") && userInput!=null && !userInput.equalsIgnoreCase("")){	
		out.println("<script>document.getElementById('beforeApplyRuleDiv').innerHTML='<div style=\"border:"+userInput+";\">CSS Style - border: "+userInput+"</div>'</script>");
		out.println("<script>document.getElementById('afterApplyRuleDiv').innerHTML='<div style=\"border:"+encodedUserInput+";\">CSS Style - border: "+encodedUserInput+" (CSS encrypted value)</div>'</script>");
		beforeSrc="&ltdiv id=\"beforeApplyRuleDiv\" style=\"border: &lt%=userInput%&gt \"&gt CSS Style - border: &lt%=userInput%&gt &lt/div&gt";
		afterSrc="&ltdiv id=\"afterApplyRuleDiv\" style=\"border: &lt%=ESAPI.encoder().encodeForCSS(userInput)%&gt\"&gtCSS Style - border:&lt%=ESAPI.encoder().encodeForCSS(userInput)%&gt(CSS encrypted value)&lt/div&gt";
		out.println("<script>document.getElementById('beforeApplyRuleCSDiv').innerHTML='"+beforeSrc+"'</script>");
		out.println("<script>document.getElementById('afterApplyRuleCSDiv').innerHTML='"+afterSrc+"'</script>");
	}else{
		out.println("<script>resetPage();</script>");
	}
%>
	