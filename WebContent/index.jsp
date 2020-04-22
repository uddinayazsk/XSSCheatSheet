<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>XSS Prevention Cheat Sheet</title>
</head>
<body>
	<div class="page">

		<h2>XSS Prevention Cheat Sheet Rules</h2>


		<ul>
			<li><a href="Rule0.jsp">RULE #0 - Never Insert Untrusted
					Data Except in Allowed Locations </a></li>
			<li><a href="Rule1.jsp">RULE #1 - HTML Escape Before
					Inserting Untrusted Data into HTML Element Content </a></li>
			<li><a href="Rule2.jsp">RULE #2 - Attribute Escape Before
					Inserting Untrusted Data into HTML Common Attributes </a></li>
			<li><a href="Rule3.jsp">RULE #3 - JavaScript Escape Before Inserting Untrusted Data into JavaScript Data Values  </a></li>
			<li><a href="Rule3_1.jsp">RULE #3.1 - HTML escape JSON
					values in an HTML context and read the data with JSON.parse </a></li>
					<li><a href="Rule4.jsp">RULE #4 - CSS Escape And Strictly Validate Before Inserting
			Untrusted Data into HTML Style Property Values</a></li>
			<li><a href="Rule5.jsp">RULE #5 - URL Escape Before
					Inserting Untrusted Data into HTML URL Parameter Values </a></li>

		</ul>


		<h2>DOM Based XSS Prevention Cheat Sheet Rules</h2>
		<ul>
			<li><a href="DOM_Rule1.jsp">RULE #1 - HTML Escape then
					JavaScript Escape Before Inserting Untrusted Data into HTML
					Subcontext within the Execution Context </a></li>
			<li><a href="DOM_Rule2.jsp">RULE #2 - JavaScript Escape Before Inserting Untrusted Data into HTML Attribute Subcontext within the Execution Context  </a></li>
			<li><a href="DOM_Rule3.jsp">RULE #3 - Be Careful when Inserting Untrusted Data into the Event Handler and JavaScript code Subcontexts within an Execution Context </a></li>
			<li><a href="DOM_Rule4.jsp">RULE #4 - JavaScript Escape Before Inserting Untrusted Data into the CSS Attribute Subcontext within the Execution Context </a></li>
			<li><a href="DOM_Rule5.jsp">RULE #5 - URL Escape then JavaScript Escape Before Inserting Untrusted Data into URL Attribute Subcontext within the Execution Context  </a></li>
			
		</ul>



	</div>
</body>
</html>